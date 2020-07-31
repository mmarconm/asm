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
	name:		db "what is your name ? "
	name_L:		equ $-name
	hello:	 	db "Hello "
	hello_L:	equ $-hello

section .bss
	name_V	resb 255

section .text
	global _start:

_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, name
	mov edx, name_L
	int 80h

	mov eax, 3
	mov ebx, 0
	mov ecx, name_V
	mov edx, 255
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, hello
	mov edx, hello_L
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, name_V
	mov edx, 255
	int 80h

	mov eax, 1
	mov eax, 0
	int 80h
