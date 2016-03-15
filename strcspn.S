
	global	strcspn
	section	.text

strcspn:

	xor	rcx, rcx
loop:
	cmp	byte [rdi], 0
	je	found
	jmp	check_str
post_check:
	inc	rdi
	inc	rcx
	jmp	loop

check_str:
	mov	rdx, rsi
check_loop:
	cmp	byte [rdx], 0
	je	post_check
	xor	r8, r8
	mov	r8, [rdx]
	cmp	byte [rdi], r8b
	je	found
	inc	rdx
	jmp	check_loop
	
found:
	mov	rax, rcx
	ret
