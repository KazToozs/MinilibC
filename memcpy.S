
	global	memcpy
	section	.text

memcpy:
	mov	rax, rdi
	mov	r8, rdi
	
loop:
	cmp	rdx, 0
	je	end
	dec	rdx
	xor	rcx, rcx
	mov	rcx, [rsi]
	mov	byte [r8], cl
	inc	rsi
	inc	r8
	jmp	loop
	
end:
	ret
