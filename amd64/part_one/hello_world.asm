	;; nasm -f elf64 hello.s
	;; ld -s -o hello hello.o
	;; sudo apt install nasm fasm
	
	;; SYS_EXIT        equ 1
	;; RET_EXIT        equ 5
	;; SYS_READ        equ 3
	;; SYS_WRITE       equ 4
	;; STD_IN          equ 0
	;; STD_OUT         equ 1
	;; MAX_IN          equ 10

section .data
    msg:	db "Hello World", 10
    msg_L:	 equ $-msg

section .text
	global _start

_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, msg_L
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h
