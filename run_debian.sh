kvm  -smp 2 -m 4096 -cpu host -kernel "kbuild/arch/x86/boot/bzImage" -append "root=/dev/sda1 console=ttyS0,115200n8" -hda debian.qcow2 -nographic
