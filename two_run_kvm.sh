kvm -smp 2 -m 1024 -kernel "kbuild/arch/x86/boot/bzImage" -append "root=/dev/sda1 console=ttyS0,115200n8" -hda ubuntu.img -nographic -hdb user-data.img -netdev bridge,id=hn0,br=virbr0 -device virtio-net-pci,netdev=hn0,id=nic1