section .data
	text db "Hello, World!",10

section .text
	global _start

_start: 
	call _print_text
	call _correct_exit

_print_text:
	; sys_write(1,text,14)
	mov rax, 1
	mov rdi, 1
	mov rsi, text
	mov rdx, 14
	syscall
	ret

_correct_exit:
	; sys_exit(0)
	mov rax, 60
	mov rdi, 0
	syscall
	ret
