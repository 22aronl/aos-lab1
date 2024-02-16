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
ls
cd kbuild
ls
cd mm
ls
cd vmscan.c
ls
cd ..
ls
cd ..
ls
cd kernel/
ls
cd linux-5.10.209/
ls
cd mm
l
cd vmscan.c
vim vmscan.c
ls
cd !
cd ~
ls
cat access.cpp 
perf list
cat access.cpp 
perf list PERF_COUNT
perf list PERF_COUNT_HW_CACHE_OP_READ
git init
ls
git remote add origin git@github.com:22aronl/aos-lab1.git
git push -u origin
git push --set-upstream origin master
ls
git push --set-upstream origin master
git status
git add .
ls
git status
vim .gitignore
git status
cat ouptut.txt
git add .
git commit -m "code"
git push
git push --set-upstream origin master
ssh-keygen
git push
git push --set-upstream origin master
git remote add origin git@github.com:22aronl/aos-lab1.git
git remote 
git remote origin
git remote remove origin
git remote add origin git@github.com:22aronl/aos-lab1.git
ls
perf list -e PERF_COUNT_HW_CACHE_OP_READ
perf list -event PERF_COUNT_HW_CACHE_OP_READ
perf list --event PERF_COUNT_HW_CACHE_OP_READ
perf list cache
perf list -e cache
perf list -e --details cache
perf list --details cache
perf list --details hw
cat access.cpp
perf list
perf list --event l1d.eviction
perf stat -h
ls
sudo ./run_kvm.sh 
qemu-system-x86_64 -hda ubuntu.img -hdb user-data.img -netdev user,id=user.0 -device e1000,netdev=user.0
qemu-system-x86_64 -hda ubuntu.img -hdb user-data.img -netdev user,id=user.0 -device e1000,netdev=user.0 -nographics
qemu-system-x86_64 -hda ubuntu.img -hdb user-data.img -netdev user,id=user.0 -device e1000,netdev=user.0 -nographic
sudo qemu-system-x86_64 -hda ubuntu.img -hdb user-data.img -netdev user,id=user.0 -device e1000,netdev=user.0 -nographic
sudo qemu-system-x86_64 -enable-kvm -m 2048 -hda ubuntu.img -hdb user-data.img -netdev user,id=user.0 -device e1000,netdev=user.0 -nographic
sudo qemu-system-x86_64 -enable-kvm -m 2048 -kernel "kbuild/arch/x86/boot/bzImage" -hda ubuntu.img -hdb user-data.img -netdev user,id=user.0 -device e1000,netdev=user.0 -nographic
quit
ls
lsmod
ip addr
cat /etc/sysconfig/network-scripts/ifcfg-*
cat /etc/network/interfaces
systemctl status NetworkManager
systemctl
systemctl status dhclient
ping -c 4 google.com
firewalld
sudo firewalld
iptables
cat /var/log/daemon.log
sudo cat /var/log/daemon.log
ls
cd kbuild/
vim .config
ls
vim .config
libvirtd
cd ~
sudo install libvirtd
sudo apt update
sudo apt install libvirt-daemon-system libvirt-clients
libvirtd
sudo systemctl start libvirtd
sudo systemctl enable libvirtd
sudo ./run_kvm.sh 
ls
virsh net-list --all
virsh net-start --network default
virsh net-list --all
virsh net-autostart --network default
ls
cd /etc/qemu
cd /etc
ls
mkdir qemu
sudo mkdir qemu
cd qemu
ls
sudo touch bridge.conf
sudo vim bridge.conf 
ls
cd ..
ls
cd ~
ls
virsh net-start default
cd /etc/libvirt
ls
cd qemu
cd networks
ls
cat default.xml 
sudo cat default.xml 
sudo virsh net-define /etc/libvirt/qemu/networks/default.xml
sudo virsh net-start default
virsh net-list --all
virsh net-start --network default
virst net-start
virsh net-start
virst net-start --list
virs net-start --list
virsh net-start --list
sudo virsh net-start default
sudo virst --list
sudo virsh net-list 
sudo virsh net-list --all
cd ~
ls
vim run_kvm.sh 
sudo ./run_kvm.sh 
vim run_kvm.sh 
sudo ./run_kvm.sh 
vim /etc/qemu/bridge.conf
sudo chmod -R a+r /etc/qemu/bridge.conf 
sudo ./run_kvm.sh 
vim /etc/qemu/bridge.conf 
sudo vim /etc/qemu/bridge.conf 
sudo ./run_kvm.sh 
ls
sysctl -a | grep forward
sudo sysctl -a | grep forward
sudo sysctl net.ipv4.ip_forward = 1
sudo sysctl net.ipv4.ip_forward=1
sudo sysctl net.ipv4.conf.all.forwarding=1
sudo sysctl net.ipv6.conf.all.forwarding=1
sudo ./run_kvm.sh 
ls
cp run_kvm.sh two_run_kvm.s
mv two_run_kvm.s two_run_kvm.sh
ls
vim run_kvm.sh 
sudo ./run_kvm.sh 
ls
sudo systemctl status libvirtd
sudo systemctl start libvirtd
sudo systemctl restart libvirtd
vim /etc/libvirt/libvirt.conf
sudo vim /etc/libvirt/libvirt.conf
sudo ./run_kvm.sh 
ip addr
virsh net-list --all
sudo virsh net-list --all
ip link show virbr0
sudo ip link set virbr0 up
ip link show virbr0
sudo ip link set virbr0 up
ip addr
sudo virsh net-list --all
sudo systemctl restart libvirtd
sudo virsh net-dumpxml default
ip addr
sysctl -a | grep forward
sudo sysctl -a | grep forward
systemd-networkd
ls
vim run_kvm.sh 
ls
cd mount_point/
ls
cd lib
ls
cd modules
ls
mv ../../../kbuild/lib/modules .
mv ../../../mod_dir/lib/modules .
mv ../../../mod_dir/lib/modules/ .
ls
cd ~/mod_dir/lib/modules/ .
mv ~/mod_dir/lib/modules/ .
ls
cd modules/
ls
cd ..
mv modules/5.10.209/ .
ls
rm modules/
rm -r modules/
ls
cd ~
ls
fusermount -u mount_point
ls
ls
ls- la
ls -la
vim run_kvm.sh 
ls
sudo ./run_kvm.sh 
ls
wget https://cloud.debian.org/images/cloud/buster/latest/debian-10-nocloud-amd64.qcow2
ls
kvm -m 2048 -hda debian-10-nocloud-amd64.qcow2 
sudo kvm -m 2048 -hda debian-10-nocloud-amd64.qcow2 -nographic
ls
sudo ./run_kvm.sh 
ls
mv debian-10-nocloud-amd64.qcow2 debian.qcow2
ls
cd kbuild/
ls
tmux ls
tmux attach -t 0
ls
cd ..
ls
cp run_kvm.sh run_debian.sh
ls
vim run_
vim run_debian.sh 
sudo ./run_debian.sh 
ls
vim run_debian.sh 
sudo ./run_debian.sh 
ls
lscpu
cpuid
cat /proc/cpuinfo
lscpu
ls
sudo dmidecode -t processor
sudo dmidecode
sudo dmidecode -t cache | grep -A 4 "Level 1"
ls
dmesg
sudo dmesg
g++ access.cpp 
./a.out
sudo ./a.out
g++ access.cpp 
sudo ./a.out
g++ access.cpp 
sudo ./a.out
g++ access.cpp 
sudo ./a.out
g++ access.cpp 
sudo ./a.out
g++ access.cpp 
sudo ./a.out
g++ access.cpp 
sudo ./a.out
sudo ./a.out > output.txt
g++ access.cpp 
sudo ./a.out > output.txt
g++ access.cpp 
sudo ./a.out > output.txt
g++ access.cpp 
sudo ./a.out > output.txt
g++ access.cpp 
sudo ./a.out > output.txt
g++ access.cpp 
sudo ./a.out > output.txt
g++ access.cpp 
sudo ./a.out > output.txt
g++ access.cpp 
sudo ./a.out > output.txt
g++ access.cpp 
sudo ./a.out > output.txt
g++ access.cpp 
sudo ./a.out > output.txt
g++ access.cpp 
sudo ./a.out > output.txt
g++ access.cpp 
sudo ./a.out > output.txt
g++ access.cpp 
sudo ./a.out > output.txt
g++ access2.cpp 
sudo ./a.out > output.txt
g++ access.cpp 
sudo ./a.out > output.txt
objdump -d a.out
objdump -d a.out > output.txt
dmesg
sudo dmesg > output.txt
sudo dmesg
ls
dmesg | grep -i tlb
sudo dmesg | grep -i tlb
sudo apt-get install cpuid
cpuid -1 -l
cpuid -1
cpuid -1 | grep -i tlb
cpuid -1 > tlb.txt
sl
ls
g++ map.cpp 
sudo ./a.out > output.txt
g++ -static map.cpp 
sudo ./a.out > output.txt
getconf LEVEL1_DCACHE_LINESIZE
git status
git add .
git status
git add .
git remove .lesshst
git add .gitignore 
git statu
sgit status
git status
ls
git add .
git status
git commit -m "update .gitignore"
git git push
git push
git status
git add .
git add run_debian.sh 
gitadd tlb.txt 
git add tlb.txt 
git two_run_kvm.sh
git add two_run_kvm.sh 
sudo git add .
git status
git commit -m "updates"
git push
git commit --amend --reset-autho
git push
git prune
git remote add test git@github.com:22aronl/aos-lab1.git
git push test
git branch
git push -u test master
git remote add test1 https://github.com/22aronl/aos-lab1.git
git push -u test1 mater
git push -u test1 master
sudo dmesg
sudo ./run_debian.sh 
ls
sudo dmesg
ls
resize2fs mount_point
ls
tmux ls
ls
fusermount -u mount_point
ls
cd mount_point
ls
cd lib
ls
cd modules
ls
rm -r 5.10.209/
ls
cd ~/mod_dir/lib/modules/5.10.209/ .
mv ~/mod_dir/lib/modules/5.10.209/ .
ls
cd ~
ls
fusermount -u mount_point
ls
cd mount_point/
ls
cd usr/
ls
cd ..
ls
cd etc
ls
cd ..
ls
cd root
ls
touch test
ls
cd ..
ls
cd ..
fusermount -u mount_point
ls
cd mount_point/root
ls
cat snap
cd snap
ls
cd ..
ls
cp ~/vm_access.cpp .
ls
rm vm_access.cpp 
cp ~/vm_access.cpp .
cp ~/example.txt .
ls
cat example.txt 
rm example.txt 
touch example.txt
ls
df -h
cd ~
ls
fusermount -u mount_point
ls
cd mount_point
ls
cd root
ls
cp ~/vm_access.cpp .
ls
touch example.txt
ls
cd ~
ls
fusermount -u mount_point
ls
g++ access.cpp 
sudo ./a.out > output.txt
g++ access.cpp 
sudo ./a.out > output.txt
g++ access.cpp 
sudo ./a.out > output.txt
chmod +x run_five.sh 
sudo ./run_five.sh 
g++ access.cpp 
sudo ./run_five.sh 
g++ access.cpp 
sudo ./run_five.sh 
g++ access.cpp 
sudo ./run_five.sh 
g++ access.cpp 
sudo ./run_five.sh 
g++ access.cpp 
sudo ./run_five.sh 
g++ access.cpp 
sudo ./run_five.sh 
g++ access.cpp 
sudo ./run_five.sh 
g++ access.cpp 
sudo ./run_five.sh 
g++ access.cpp 
sudo ./run_five.sh 
g++ access.cpp 
sudo ./run_five.sh 
g++ access.cpp 
sudo ./run_five.sh 
g++ access.cpp 
sudo ./run_five.sh 
g++ access.cpp 
sudo ./run_five.sh 
diff access.cpp vm_access.cpp 
git status
cp vm_access.cpp cp vm_access3.cpp
cp vm_access.cpp vm_access3.cpp
ls
rm vm_access3.cpp 
sudo ./run_debian.sh 
ls
sudo resize2fs /dev/sda1
ls
sudo guestmount -a debian.qcow2 -i mount_point/
ls
sudo fusermount -u mount_point
sudo ./run_debian.sh 
ls
du -h debian.qcow2 
lh -lh debian.qcow2 
ls -lh debian.qcow2 
qemu-img resize debian.qcow2 +10G
du -h debian.qcow2 
sudo guestmount -a debian.qcow2 -i mount_point/
ls
sudo bash
sudo guestmount -a debian.qcow2 -m /dev/sda1 -i mount_point/
sudo guestmount -a debian.qcow2 -m /dev/sda1 -ro mount_point/
sudo guestmount -a debian.qcow2 -m /dev/sda1 --ro mount_point/
ls
sudo fusermount -u mount_point
sudo ./run_debian.sh 
ls
cd kbuild
ls
make INSTALL_MOD_PATH=../mod_dir/ modules_install
ls
cd ..
cd mount_point
ls
cd ..
ls
sudo guestmount -a debian.qcow2 -i mount_point
ls
sudo bash
ls
sudo ./run_
sudo ./run_debian.sh 
ls
sudo guestmount -a debian.qcow2 -i mount_point
ls
sudo bash
sudo ./run_debian.sh 
ls
vim run_debian.sh 
sudo ./run_
sudo ./run_debian.sh 
ls
sudo guestmount -a ubuntu.img -i mount_point
ls
sudo bash
ls
./run_debian.sh 
sudo ./run_
sudo ./run_debian.sh 
ls
sudo guestmount -a debian.qcow2  -i mount_point
sudo bash
ls
sudo ./run_debian.sh 
ls
vim run_debian.sh 
sudo ./run_debian.sh 
ls
git status
git add .
git commit -m "safety ocmmit"
ls
g++ vm_access.cpp
sudo ./a.out
g++ vm_access.cpp
ls
vim run_debian.sh 
ls
sudo ./run_
sudo ./run_debian.sh 
ls
df -h
grep -r "hw_cache_event_ids"
ls
qemu-img resize debian.qcow2 10G
ls
g++ vm_access
g++ vm_access.cpp 
sudo ./a.out
ls
sudo ./run_debian.sh 
ls
cd mount_point
ls
cd lib/modules
ls
rm -r 5.10.209/
mv ~/mod_dir/lib/modules/5.10.209/
mv ~/mod_dir/lib/modules/5.10.209/ .
ls
cd ~
ls
fusermount -u mount_point
ls
ls
df -h
ls
vim run_debian.sh 
ls
sudo ./run_debian.sh 
ls
sudo ./run_debian.sh 
ls
qemu-img debian.qcow2 
ls
demu-img info debian.qcow2 
qemu-img info debian.qcow2 
fdisk debian.qcow2 
resizefs debian.qcow2 
resize2fs debian.qcow2 
fdisk -l debian.qcow2 
losetup
losetup /dev/loop0 debian.qcow2 
sudo losetup /dev/loop0 debian.qcow2 
ls
sudo fdisk /dev/loop0
ls
losetup -D /dev/loop0
sudo losetup -D /dev/loop0
ls
fdisk debian.qcow2 
LS
ls
sudo ./run_debian.sh 
ls
sudo ./run_debian.sh 
qemu-img info debian.qcow2 
scripts/build
man debian-distro-info 
virsh list
sudo virsh list
virsh snapshot-list
sudo virsh snapshot-list debian.qcow2 
fdisk -l debian.qcow2 
virsh define debian.qcow2 
sudo virsh define debian.qcow2 
ls
virt-install
sudo fdisk -l debian.qcow2 
gpart
sudo apt install gparted
ls
gparted -h
gparted
sudo gparted
sudo gparted -nographic
ls
virt-df
sudo apt install guestfs-tools
virt-df -h debian.qcow2 
sudo virt-df -h debian.qcow2 
sudo virt-filesystem -a debian.qcow2 --all --long -h
sudo apt install virt-filesystem
sudo virt-filesystems -a debian.qcow2 --all --long -h
sudo virt-resize debian.qcow2 --expand /dev/sda1
lvcreate -L 20G -n debian2.qcow2 debian.qcow2
sudo lvcreate -L 20G -n debian2.qcow2 debian.qcow2
ls
sudo virt-resize --expand /dev/sda1 debian.qcow2 debian-resize.qcow2
ls
cp debian.qcow2 debian-resize.qcow2
df -h
sudo virt-resize --expand /dev/sda1 debian.qcow2 debian-resize.qcow2
ls
vim run_debian.sh 
sudo ./run_debian.sh 
ls
rm debian-resize.qcow2 
cp debian.qcow2 debian-resize.qcow2
sudo virt-df -h -a debian.qcow2 
sudo virt-resize --expand /dev/sda15 debian.qcow2 debian-resize.qcow2
ls
sudo ./run_debian.sh 
ls
sudo ./run_debian.sh 
ls
rm debian-resize.qcow2 
cp debian.qcow2 debian-resize.qcow2
sudo virt-resize --resize /dev/sda15=5G debian.qcow2 debian-resize.qcow2
ls
cd kbuild
ls
make INSTALL_MOD_PATH=../mod_dir/ modules_install
ls
cd ..
ls
sudo guestmount -a debian-resize.qcow2 -i mount_point
sudo bash
ls
sudo ./run_debian.sh 
fsck debian-resize.qcow2 
ls
rm debian-resize.qcow2 
ls
sudo ./run_debian.sh 
ls
cp debian.qcow2 debian-resize.cow2
ls
sudo virt-resize --expand /dev/sda1 debian.qcow2 debian-resize.qcow2
ls
clear
sudo virt-resize --expand /dev/sda1 debian.qcow2 debian-resize.qcow2
ls
mv debian-resize.cow2 debian-resize.qcow2 
sudo virt-resize --expand /dev/sda1 debian.qcow2 debian-resize.qcow2
sudo virt-df -h -a debian-resize.qcow2 
sudo ./run_debian.sh 
ls
cd mount_point
ls
cd lib
ls
cd modules
ls
rm -rf 5.10.209/
ls
mv ~/mod_dir/lib/modules/5.10.209/ .
ls
cd ~
ls
fusermount -u mount_point
ls
sudo ./run_debian.sh 
ls
tmux
ls
htop
ls
tmux attach -t 1
ls
cd /arch
ls
cd /
ls
cd lib
ls
cd arch
cd ~
ls
sudo guestmount -a debian-resize.qcow2 -i mount_point
libguest-fs-test-tool
guestmount
sudo guestmount -a debian.qcow2 -i mount_point
ls
sudo fusermount -u mount_point
ls
sudo ./run_debian.sh 
tmux attach -t 1
ls
tmux attach -t 0
ls
rm -r mod_dir/
ls
tmux attach -t 0
ls
tmux attach -t 1
