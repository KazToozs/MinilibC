
	global	my_memmove
	section	.text
	extern	malloc

my_memmove:
	mov	rcx, [rdi]
	mov	rdi, rdx
	call	malloc
	xor	r8, r8
	mov	r9, rax
	xor	r11, r11
	
cpy_to_tmp:
	cmp	rdx, r8
	je	cpy_to_dest
	cmp	byte [rsi], 0
	je	cpy_to_dest
	mov	r11, [rsi]	
	mov	byte [r9], r11b 
	add	r8, 1
	inc	r9
	inc	rsi
	jmp	cpy_to_tmp

cpy_to_dest:
	mov	r9, rcx
	xor	r8, r8
cpy_to_dest_loop:	
	cmp	byte [r9], 0
	je	end
	cmp	rdx, r8
	je	end
	mov	r11, [rax]
	mov	byte [r9], r11b
	add	r8, 1
	inc	r9
	inc	rax
	jmp	cpy_to_dest_loop

end:
	xor	rax, rax
	mov	rax, rcx
	ret
	
