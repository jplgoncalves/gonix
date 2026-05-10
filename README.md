<p align="center">
<img width="1408" height="768" alt="logo_gonix-os_semfundo" src="https://github.com/user-attachments/assets/e35158c3-2d22-4b2f-924b-0fa77e4d4786" />
</p>

# 💻 Gonix OS - Micro Kernel x86

O **Gonix** é um micro sistema operativo independente (Bare-Metal), desenvolvido de raiz para a arquitetura **x86**. O objetivo deste projeto é explorar o funcionamento interno do hardware, gestão de memória e interatividade direta com o CPU.

<img width="1408" height="768" alt="img.png" />
---

## 🚀 Funcionalidades Atuais
* **Bootloader Custom:** Ponto de entrada em Assembly (NASM).
* **Kernel em C:** Lógica principal do sistema a correr em Modo Protegido.
* **VGA Driver:** Escrita direta na memória de vídeo (`0xB8000`) com suporte a cores.
* **Ambiente Isolado:** Funciona sem dependências de sistemas operativos externos.

## 🛠️ Tecnologias Utilizadas
![C](https://img.shields.io/badge/c-%2300599C.svg?style=for-the-badge&logo=c&logoColor=white)
![Assembly](https://img.shields.io/badge/assembly-%232E333B.svg?style=for-the-badge&logo=assembly&logoColor=white)
![QEMU](https://img.shields.io/badge/qemu-%23FF6600.svg?style=for-the-badge&logo=qemu&logoColor=white)

## 📁 Estrutura do Projeto
* `kernel.c`: Lógica do sistema e gestão de ecrã.
* `kernel.asm`: Configuração do GDT e salto para o kernel.
* `linker.ld`: Mapa de memória para o binário final.
* `Makefile`: Script de automação para compilação e execução.

## 🕹️ Como Executar
Para testar o Gonix, precisas do compilador `gcc`, `nasm` e do emulador `QEMU`.

```bash
# Compilar e rodar no QEMU
make run
