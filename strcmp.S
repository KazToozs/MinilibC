
	global	strcmp
	section	.text

strcmp:

loop:	
	cmp	byte [rdi], 0
	je	end
	cmp	byte [rsi], 0
	je	end
	mov	rcx, [rsi]
	cmp	byte [rdi], cl
	jne	end
	inc	rdi
	inc	rsi
	jmp	loop
	
end:
	xor	rdx, rdx
	xor	rcx, rcx
	mov	dl, byte [rdi]
	mov	cl, byte [rsi]
	sub	rdx, rcx
	mov	rax, rdx
	ret
