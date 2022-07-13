cd ~/rust/os
cargo build --release
rust-objcopy --binary-architecture=riscv64 ~/rust/os/target/riscv64gc-unknown-none-elf/release/os --strip-all -O binary ~/rust/os/target/riscv64gc-unknown-none-elf/release/os.bin
qemu-system-riscv64 -machine virt -nographic -bios ~/rust/lab0-0-setup-env-run-os1-aiv2008/bootloader/rustsbi-qemu.bin -device loader,file=target/riscv64gc-unknown-none-elf/release/os.bin,addr=0x80200000

