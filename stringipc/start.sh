qemu-system-x86_64 \
-m 256M \
-kernel ./arch/x86_64/boot/bzImage \
-initrd  ./core.cpio \
-append "root=/dev/ram rw console=ttyS0 oops=panic panic=1 quiet" \
-cpu qemu64,+smep,+smap \
-netdev user,id=t0, -device e1000,netdev=t0,id=nic0 \
-gdb tcp::1234 -S \
-nographic  -enable-kvm  \
