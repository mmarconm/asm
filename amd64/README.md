# asm
Assembly Code for Amd64 like architecture

* ;; nasm -f elf64 hello.s
* ;; ld -s -o hello hello.o
* ;; sudo apt install nasm fasm
	
* ;; SYS_EXIT        equ 1
* ;; RET_EXIT        equ 5
* ;; SYS_READ        equ 3
* ;; SYS_WRITE       equ 4
* ;; STD_IN          equ 0
* ;; STD_OUT         equ 1
* ;; MAX_IN          equ 10

* ;; dd - Define Double Word - 04 Bytes = 32 Bits
* ;; db - Define Byte          01 Byte  = 8 Bits
* ;; dw - Define Word          02 Bytes = 16 Bits
* ;; dq - Define Quad Word     04 Bytes = 32 Bits
* ;; dt - Define Ten Word      10 Bytes = 80 Bits
