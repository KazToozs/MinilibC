 
	global 	rindex
	section .text

rindex:
	xor	rdx, rdx

loop:
	cmp	byte [rdi], sil
	cmove	rdx, rdi
	cmp	byte [rdi], 0
	je 	ret
	inc	rdi
	jmp	loop

ret:
	mov	rax, rdx
	ret

