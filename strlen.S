
	global	strlen

	section .text

strlen:
	mov	rax, -1

loop:
	add	rax, 1
	cmp	byte [rdi+rax], 0
	jne	loop

ret:
	ret
