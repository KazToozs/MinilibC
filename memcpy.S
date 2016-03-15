
	global	memcpy
	section	.text

memcpy:
	mov	rax, rdi

loop:
	cmp	rdx, 0
	je	end
	dec	rdx
	mov	rcx, [rsi]
	mov	byte [rdi], cl
	inc	rsi
	inc	rdi
	jmp	loop
	
end:
	ret
