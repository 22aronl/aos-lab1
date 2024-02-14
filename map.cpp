#include <iostream>
#include <fstream>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/resource.h>

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


int main() {
    int fd = open("/proc/self/maps", O_RDONLY);
    if (fd == -1) {
        perror("Error opening /proc/self/maps");
        return 1;
    }

    char buffer[4096];
    ssize_t bytes_read;
    while ((bytes_read = read(fd, buffer, sizeof(buffer))) > 0) {
        if (write(STDOUT_FILENO, buffer, bytes_read) != bytes_read) {
            perror("Error writing to stdout");
            close(fd);
            return 1;
        }
    }
    
    if (bytes_read == -1) {
        perror("Error reading /proc/self/maps");
        close(fd);
        return 1;
    }

    close(fd);

    struct rusage usage;
    if (getrusage(RUSAGE_SELF, &usage) == -1) {
        perror("Error calling getrusage");
        return 1;
    }

    std::cout << "\nResource usage:\n";
    print_rusage(usage);

    return 0;
}
