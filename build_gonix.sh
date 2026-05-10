#!/bin/bash

# 1. Compilar o nosso programa init de forma estática
# (estático significa que ele não precisa de bibliotecas externas para correr)
gcc -static init.c -o init

# 2. Criar um sistema de ficheiros inicial (initramfs)
echo "A criar o sistema de ficheiros para o Gonix..."
echo init | cpio -o --format=newc > initramfs.cpio

# 3. Correr o Gonix usando o Kernel da tua máquina atual
# Precisas de ter o QEMU instalado (sudo apt install qemu-system-x86)
echo "A lançar o Gonix no QEMU..."
qemu-system-x86_64 \
    -kernel /boot/vmlinuz-$(uname -r) \
    -initrd initramfs.cpio \
    -append "console=ttyS0 quiet" \
    -nographic