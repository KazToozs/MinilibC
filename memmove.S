
	global	memmove
	section	.text

memmove:
	cmp	rdi, rsi
	jl	normal
	mov	r8, rsi
	add	r8, rdx
	cmp	r8, rdi
	jl	normal
	jmp	special

special:
	mov	r9, rsi
	mov	r10, rdi
	mov	rax, rdi
	add	r9, rdx
	add	r10, rdx
s_loop:
	dec	r9
	dec	r10
	cmp	rdx, 0
	je	end
	dec	rdx
	mov	rcx, [r9]
	mov	byte [r10], cl
	jmp	s_loop
	
normal:
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
