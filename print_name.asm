section .data
	question_text db "What is your name? ",10
	welcome_text db "Hello, "

section .bss
	name resb 16

section .text
	global _start

_start:
	call _printQuestion
	call _getName
	call _printWelcome
	call _printName
	
	call _correct_exit	

_printQuestion:
	mov rax, 1
	mov rdi, 1
	mov rsi, question_text
	mov rdx, 20
	syscall
	ret

_getName:
	mov rax, 0
	mov rdi, 0
	mov rsi, name
	mov rdx, 16
	syscall
	ret

_printWelcome:
	mov rax, 1
	mov rdi, 1
	mov rsi, welcome_text
	mov rdx, 7
	syscall
	ret

_printName:
	mov rax, 1
	mov rdi, 1
	mov rsi, name
	mov rdx, 16
	syscall
	ret

_correct_exit:
	mov rax, 60
	mov rdi, 0
	syscall
	ret
