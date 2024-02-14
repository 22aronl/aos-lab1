ls
sudo apt-get update
sudo apt install qemu qemu-kvm
ls
wget https://cloud-images.ubuntu.com/releases/20.04/
ls
rm index.html 
wget https://cloud-images.ubuntu.com/releases/focal/release/ubuntu-20.04-server-cloudimg-amd64-root.tar.xz
ls
tar -xf ubuntu-20.04-server-cloudimg-amd64-root.tar.xz 
ls
rm -rf .
ls
rm -r .
ls
rm -r *
sudo rm -r *
ls
wget https://cloud-images.ubuntu.com/releases/focal/release/ubuntu-20.04-server-cloudimg-amd64-disk-kvm.img
sudo apt-get install cloud-image-utils
ls
mv ubuntu-20.04-server-cloudimg-amd64-disk-kvm.img ubuntu.img
ls
cat >user-data <<EOF
#cloud-config
password: asdf
chpasswd: { expire: False }
ssh_pwauth: True
EOF

ls
cloud-localds user-data.img user-data
l;s
ls
touch run_vm
ls
rm run_vm 
touch run_vm.sh
ls
vim run_vm.sh 
ls
chmod 777 run_vm.sh 
ls
./run_vm.sh 
ls
cat run_vm.sh 
cat user-data
ls
sudo ./run_vm.sh 
ls
ls;
ls
cat user-data
ls
rm ubuntu.img 
ls
wget https://cloud-images.ubuntu.com/releases/bionic/release/ubuntu-18.04-server-cloudimg-amd64.img
;s
ls
mv ubuntu-18.04-server-cloudimg-amd64.img ubuntu.img
ls
sudo ./run_vm.sh 
ls
kvm -enable-kvm -smp 2 -m 1024 -hda ubuntu.img 
sudo kvm -enable-kvm -smp 2 -m 1024 -hda ubuntu.img 
sudo kvm -enable-kvm -smp 2 -m 1024 -hda ubuntu.img -nographic
ls
cat run_vm.sh 
sudo ./run_vm.sh 
ls
grub-install
df -h
grub-install /dev/sda1
sudo grub-install /dev/sda1
ls
sudo apt install qemu-system
ls
sudo qemu-system-x86_64 -enable-kvm -m 2048 -nographic -hda ubuntu.img -drive file=user-data.img,format=raw
ls
cat run_vm.sh 
kvm -nographic -m 1024 -hda ubuntu.img
ls
vim run_vm.sh 
ls
sudo ./run_vm.sh 
ls
vim run_vm.sh 
sudo ./run_vm.sh 
ls
sudo ./run_vm.sh 
ls
wget https://cloud.debian.org/images/cloud/OpenStack/9.13.42-20220706/debian-9.13.42-20220706-openstack-amd64.qcow2
ls
kvm -m 1024 -smp 1 -hda debian-9.13.42-20220706-openstack-amd64.qcow2 
sudo kvm -m 1024 -smp 1 -hda debian-9.13.42-20220706-openstack-amd64.qcow2 -nographic
ls
rm debian-9.13.42-20220706-openstack-amd64.qcow2 
ls
cat run_vm.sh 
ls
sudo ./run_vm.sh 
ls
vim run_vm.sh 
sudo ./run_vm.sh 
ls
cat run_vm.sh 
ls
cat run_vm.sh 
ls
lks
ls
wget https://cloud.debian.org/images/cloud/OpenStack/9.13.42-20220706/debian-9.13.42-20220706-openstack-arm64.qcow2
perf --version
sudo apt install linux-intel-iotg-tools-common
ls
perf
perf --version
sudo apt install linux-tools-5.15.0-86-generic
perf --version
ls
cat map.cpp
ls
perf list
ls
vim perf.cpp
ls -la
rm .perf.cpp.swp 
ls
vim perf.cpp
ls
vim perf.cpp
ls
vim perf.cpp
g++ perf.cpp 
vim perf.cpp
g++ perf.cpp 
vim perf.cpp
g++ perf.cpp 
vim perf.cpp
g++ perf.cpp 
vim perf.cpp
g++ perf.cpp 
.a.out
./a.out
sudo ./a.out
dmidecode
sudo demidecode
sudo lshw -C memory | grep -A 4 'L2 cache'
sudo lshw -C memory | grep -A 4 'L1 cache'
lscpu
lscpu | grep "Cache line size"
ls
vim perf.cpp 
g++ perf.cpp 
./a.out
sudo ./a.out
tmux ls
tmux new
ls
./a.out
sudo ./a.out
ls
cat map.cpp 
ls
cat perf.cpp 
lscpu
ls
cat perf.cpp 
strace
ls
cat map.cpp 
ls
vim perf.cpp 
mv perf.cpp perf.c
g++ perf.c 
gcc perf.c 
ls
vim perf.c 
gcc perf.c 
vim perf.c 
gcc perf.c 
vim perf.c 
gcc perf.c 
vim perf.c 
gcc perf.c 
vim perf.c 
ls
mv perf.c perf.cpp
ls
g++ perf.cpp 
vim perf.cpp 
g++ perf.cpp 
./a.out
sudo ./a.out
ls
vim perf.cpp 
g++ perf.cpp 
vim perf.cpp 
g++ perf.cpp 
./a.out
sudo ./a.out
vim perf.cpp 
sudo ./a.out
g++ perf.cpp 
sudo ./a.out
ls
cp perf.cpp access.cpp
ls
lscpu
ls
ls
vim access.cpp 
ls
vim access.cpp 
ls
g++ access.cpp 
vim access.cpp 
g++ access.cpp 
sudo ./a.out 
vim access.cpp 
g++ access.cpp 
sudo ./a.out 
ls
vim access.cpp 
g++ access.cpp 
vim access.cpp 
g++ access.cpp 
vim access.cpp 
ls
touch example.txt
g++ access.cpp 
vim access.cpp 
g++ access.cpp 
vim access.cpp 
g++ access.cpp 
sudo ./a.out
ss
ls
vim access.cpp 
ls
vim access.cpp 
g++ access.cpp 
vim access.cpp 
g++ access.cpp 
sudo ./a.out
ls
sudo strace ./a.out
ls
touch output.txt
ls
sudo strace ./a.out > output.txt 
ls
cat output.txt 
ls
strace sudo ./a.out > output.txt 
ls
cat output.txt 
ls
sudo strace -o output.txt ./a.out 
ls
cat output.txt 
grep 'arch_prctl' output.txt
ls
grep '/etc/ld.so.preload' output.txt
ls
cd /etc/
ls
cd ..
ls
cd ~
ls
lx
ls
lshw
sudo lshw -C memory
sudo lshw -C memoryls
ls
cp access.cpp access_vm.cpp
ls
cat run_kvm.sh 
sudo ./run_kvm.sh 
ls
cat run_kvm.sh 
ls
sudo ./run_kvm.sh 
ls
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.209.tar.xz
ls
cd mount_point/
ls
mkdir modules
ls
rm modules/
rm -r modules/
ls
mkdir lib
cd lib
ls
mkdir modules
cd modules
ls
cp -r ../../../mod_dir/lib/modules/
cp -r ../../../mod_dir/lib/modules/ .
ls
cd ../../..
ls
cd mod_dir/lib/
ls
cd mount_point
cd ../../
ls
cd mount_point/
ls
cd lib
ls
cd modules
ls
cp -r ../../../mod_dir/lib/modules .
ls
cd ..
cp -r ../../mod_dir/lib/modules module
cd modules
sudo cp -r ../../../mod_dir/lib/modules .
cd ../../../mod_dir/lib/modules/
ls
cd 5.10.209/
ls
cd ..
cd ../../../mount_point/lib/modules
ls
mv -r ../../../mod_dir/lib/modules
mv -r ../../../mod_dir/lib/modules .
mv ../../../mod_dir/lib/modules/5.10.209/ .
ls
ls ../../../mod_dir/lib/modules/5.10.209/
sudo ls ../../../mod_dir/lib/modules/5.10.209/
ls ~/mod_dir/lib/modules
mv ~/mod_dir/lib/modules/5.10.209/ .
ls
cd ~
ls
fusermount -u mount_point
ls
cd mount_point/
ls
cd lib/modules
ls
rm -rf 5.4.0-1105-kvm/
ls
cd ..
ls
cd ~
sudo fusermount -u mount_point
ls
ls
mkdir kernel
mv linux-5.10.209.tar.xz kernel/
ls
cd kernel/
ls
tar xf linux-5.10.209.tar.xz 
ls
cd linux-5.10.209/
ls
cd ..
ls
rm linux-5.10.209.tar.xz 
ls
sudo 
apt install git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison
sudo apt install git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison
sudo apt update
ls
sudo apt install git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison
sudo apt-get install git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison
sudo apt --fix-broken install
sudo apt install git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison
sudo apt remove 3.0.2-0ubuntu1.10
sudo apt clean
sudo apt install git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison
sudo apt install m4 zlib1g-dev libssl3 linux-tools-common
sudo apt remove linux-intel-iotg-tools-common
sudo dpkg -r linux-intel-iotg-tools-common
sudo apt install --fix-broken
sudo apt install git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison
ls
cd ..
ls
mkdir kbuild
ls
cd kbuild/
ls
make -C ../kernel/linux-5.10.209/ O=$(pwd) defconfig
lscpu
make ls
tmux ls
tmux attach -t 0
ls
cd ..
ls
mkdir mod_dir
ls
cd kbuild/
ls
make INSTALL_MOD_PATH=../mod_dir/ modules_install
ls
cd ..
ls
sudo apt install guestmount
ls
sudo guestmount -a mod_dir/ -m /dev/sda1
sudo guestmount -a ubuntu.img -i mod_dir/
ls
cd mod_dir/
ls
cd ..
ls
mkdir mount_point
sudo guestmount -a ubuntu.img -i mount_point/
sudo bash
ls
vim run_kvm.sh 
ls
sudo ./run_kvm.sh 
ls
sudo ./run_kvm.sh 
ls
cd kbuild
ls
cd ..
ls
cat run_kvm.sh 
vim run_kvm.sh 
sudo ./run_kvm.sh 
ls
vim run_kvm.sh 
sudo ./run_kvm.sh 
ls
cat run_kvm.sh 
vim run_kvm.sh 
ls
vim kbuild/.config 
ls
sudo guestmount -a ubuntu.img -i mount_point
ls
sudo bash
ls
sudo ./run_kvm.sh 
ls
vim run_kvm.sh 
sudo ./run_kvm.sh 
ls
sudo ./run_kvm.sh 
ls
vim run_kvm.sh 
ls
sudo ./run_kvm.sh 
ls
mv access_vm.cpp vm_access.cpp
ls
vim vm_access.cpp 
g++ vm_access.cpp 
vim vm_access.cpp 
g++ vm_access.cpp 
vim vm_access.cpp 
g++ vm_access.cpp 
vim vm_access.cpp 
g++ vm_access.cpp 
ls
l
g++ access.cpp 
sudo ./a.out
