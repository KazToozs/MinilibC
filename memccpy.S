
	global	memccpy
	section	.text

memccpy:

loop:	
	cmp	rcx, 0
	je	null
	dec	rcx
	xor	r8, r8
	mov	r8, [rsi]
	mov	byte [rdi], r8b
	cmp	byte [rsi], dl
	je	end
	inc	rsi
	inc	rdi
	jmp	loop

null:
	xor	rax, rax
	ret

end:	inc	rdi
	mov	rax, rdi
	ret
