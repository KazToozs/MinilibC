
	global	strstr
	section	.text

strstr:

loop:	
	cmp	byte [rdi], 0
	je	end
	jmp	check_str
post_check:	
	inc	rdi
	jmp	loop

check_str:
	mov	rdx, rsi
	mov	r8, rdi
check_loop:	
	cmp	byte [rdx], 0
	je	found
	xor	rcx, rcx
	mov	rcx, [rdx]
	cmp	byte [r8], cl
	jne	post_check
	inc	r8
	inc	rdx
	jmp	check_loop

found:
	mov	rax, rdi
	ret
end:
	xor	rax, rax
	ret
