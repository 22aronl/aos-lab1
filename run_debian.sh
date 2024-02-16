kvm  -smp 2 -m 2048 -cpu host -kernel "kbuild/arch/x86/boot/bzImage" -append "root=/dev/sda3 console=ttyS0,115200n8" -hda debian-resize.qcow2 -nographic
