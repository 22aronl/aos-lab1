#include <stdio.h>

#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <linux/perf_event.h>
#include <asm/unistd.h>
#include <stdbool.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/resource.h>
#include <iostream>
#include <fstream>
#include <sched.h>

// Define constants for the performance events
#define PERF_EVENT_CACHE_ACCESS 0x01
#define PERF_EVENT_CACHE_MISS   0x02
#define PERF_EVENT_TLB_MISS     0x03

#define CACHE_LINE_SIZE 64

// Simple, fast random number generator, here so we can observe it using profiler
long x = 1, y = 4, z = 7, w = 13;

long simplerand(void) {
	long t = x;
	t ^= t << 11;
	t ^= t >> 8;
	x = y;
	y = z;
	z = w;
	w ^= w >> 19;
	w ^= t;
	return w;
}

bool opt_random_access = false;

// p points to a region that is 1GB (ideally)
void do_mem_access(char* p, int size) {
	int i, j, count, outer, locality;
   int ws_base = 0;
   int max_base = ((size / CACHE_LINE_SIZE) - 512);
	for(outer = 0; outer < (1<<20); ++outer) {
      long r = simplerand() % max_base;
      // Pick a starting offset
      if( opt_random_access ) {
         ws_base = r;
      } else {
         ws_base += 512;
         if( ws_base >= max_base ) {
            ws_base = 0;
         }
      }
      for(locality = 0; locality < 16; locality++) {
         volatile char *a;
         char c;
         for(i = 0; i < 512; i++) {
            // Working set of 512 cache lines, 32KB
            a = p + (ws_base + i) * CACHE_LINE_SIZE;
            if((i%8) == 0) {
               *a = 1;
            } else {
               c = *a;
            }
         }
      }
   }
}

void print_rusage(const struct rusage& usage) {
    std::cout << "User CPU time used: " << usage.ru_utime.tv_sec << " seconds, " << usage.ru_utime.tv_usec << " microseconds\n";
    std::cout << "System CPU time used: " << usage.ru_stime.tv_sec << " seconds, " << usage.ru_stime.tv_usec << " microseconds\n";
    std::cout << "Maximum resident set size (kB): " << usage.ru_maxrss << std::endl;
    std::cout << "Page faults without I/O: " << usage.ru_minflt << std::endl;
    std::cout << "Page faults with I/O: " << usage.ru_majflt << std::endl;
    std::cout << "Block input operations: " << usage.ru_inblock << std::endl;
    std::cout << "Block output operations: " << usage.ru_oublock << std::endl;
    std::cout << "Voluntary context switches: " << usage.ru_nvcsw << std::endl;
    std::cout << "Involuntary context switches: " << usage.ru_nivcsw << std::endl;
}

// Function to create a perf event
int create_perf_event(int type, __u64 config) {
    struct perf_event_attr attr = {
        .type = (__u32)type,
        .size = sizeof(struct perf_event_attr),
        .config = config,
        .disabled = 1,
        .exclude_kernel = 1,
        .exclude_hv = 1,
    };

    int fd = syscall(__NR_perf_event_open, &attr, 0, -1, -1, 0);
    if (fd == -1) {
        perror("perf_event_open");
        exit(EXIT_FAILURE);
    }

    return fd;
}

int main() {

     // Create a CPU set with only one CPU core (e.g., the first core)
     cpu_set_t cpu_set;
     CPU_ZERO(&cpu_set);
     CPU_SET(0, &cpu_set); // Lock onto the first CPU core
    
     // Set the CPU affinity mask for the current process
     if (sched_setaffinity(0, sizeof(cpu_set_t), &cpu_set) == -1) {
         perror("sched_setaffinity");
         exit(EXIT_FAILURE);
     }   
     //
    printf("Process locked onto CPU core 0.\n");

    // Create perf events for cache access, cache miss, and TLB miss
    int cache_access_fd = create_perf_event(PERF_TYPE_HW_CACHE, PERF_COUNT_HW_CACHE_L1D | (PERF_COUNT_HW_CACHE_OP_READ << 8) | (PERF_COUNT_HW_CACHE_RESULT_ACCESS << 16));
    int cache_miss_fd = create_perf_event(PERF_TYPE_HW_CACHE, PERF_COUNT_HW_CACHE_L1D | (PERF_COUNT_HW_CACHE_OP_READ << 8) | (PERF_COUNT_HW_CACHE_RESULT_MISS << 16));
    int tlb_miss_fd = create_perf_event(PERF_TYPE_HW_CACHE, PERF_COUNT_HW_CACHE_DTLB | (PERF_COUNT_HW_CACHE_OP_READ << 8) | (PERF_COUNT_HW_CACHE_RESULT_MISS << 16));
	
    size_t size_in_bytes = 1024 * 1024 * 1024;
    char* memory_loc = (char*) malloc(size_in_bytes);

    // Enable the perf events
    ioctl(cache_access_fd, PERF_EVENT_IOC_ENABLE, 0);
    ioctl(cache_miss_fd, PERF_EVENT_IOC_ENABLE, 0);
    ioctl(tlb_miss_fd, PERF_EVENT_IOC_ENABLE, 0);

    // Execute the code to be measured (e.g., some computational task)
	
	 
    do_mem_access(memory_loc, size_in_bytes);

    // Stop the perf events
    ioctl(cache_access_fd, PERF_EVENT_IOC_DISABLE, 0);
    ioctl(cache_miss_fd, PERF_EVENT_IOC_DISABLE, 0);
    ioctl(tlb_miss_fd, PERF_EVENT_IOC_DISABLE, 0);

    // Read and print the collected data
    long long cache_access_count, cache_miss_count, tlb_miss_count;
    read(cache_access_fd, &cache_access_count, sizeof(cache_access_count));
    read(cache_miss_fd, &cache_miss_count, sizeof(cache_miss_count));
    read(tlb_miss_fd, &tlb_miss_count, sizeof(tlb_miss_count));


    struct rusage usage;
    if (getrusage(RUSAGE_SELF, &usage) == -1) {
        perror("Error calling getrusage");
        return 1;
    }

    std::cout << "\nResource usage:\n";
    print_rusage(usage);

    printf("L1 Data Cache Accesses: %lld\n", cache_access_count);
    printf("L1 Data Cache Misses: %lld\n", cache_miss_count);
    printf("Data TLB Misses: %lld\n", tlb_miss_count);
	
    double tlb_miss_percentage = ((double)tlb_miss_count/cache_access_count)*100;
    double l1_miss_percentage = ((double)cache_miss_count / cache_access_count)*100;
    printf("L1 Data Cache Miss Percentage: %.8f%%\n", l1_miss_percentage);
    printf("Data TLB Miss Percentage: %.8f%%\n", tlb_miss_percentage);
    // Close the perf event file descriptors
    close(cache_access_fd);
    close(cache_miss_fd);
    close(tlb_miss_fd);

    return 0;
}
