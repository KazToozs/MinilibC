
	global	strchr

	section	.text

strchr:
	dec	rdi
	
loop:
	inc	rdi
	cmp	byte [rdi], sil
	je	bret
	cmp	byte [rdi], 0
	jne	loop
	
ret:
	mov	rax, 0
	ret

bret:
	mov	rax, rdi
	ret
