
	global	memmove
	section	.text

memmove:
	mov	r8, rdi
	sub	r8, rsi
	cmp	r8, 0
	jl	less
	jmp	normal

less:
	mov	r9, -1
len:
	add	r9, 1
	cmp	byte [rdi + r9], 0
	jne	len
	neg	r8
	cmp	r9, r8
	jg	special
	jmp	normal

special:
	xor	r8, r8
	mov	r8, rcx		;make sure we copy the right ammount
	mov	r9, rdi
	mov	r10, rsi	;keep markers on the start of each param
skip_to_end:
	cmp	r8, 0
	je	start_cpy
	dec	r8
	inc	r9
	inc	r10
	jmp	skip_to_end
start_cpy:
	cmp	r10, rsi
	je	special_end
	cmp	rdx, 0
	je	special_end
	dec	rdx
	xor	rcx, rcx
	mov	rcx, [r10]
	mov	byte[r9], r10b
	dec	r9
	dec	r10
	jmp	start_cpy

normal:
	mov	rax, rdi
	mov	r8, rdi

n_loop:
	cmp	rdx, 0
	je	end
	dec	rdx
	xor	rcx, rcx
	mov	rcx, [rsi]
	mov	byte [r8], cl
	inc	rsi
	inc	r8
	jmp	n_loop
	
end:
	ret

special_end:
	;; copy the final value, then return the pointer
	mov	rcx, [rsi]
	mov	byte [rdi], cl
	mov	rax, rdi
	ret
