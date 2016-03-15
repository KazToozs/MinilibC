
	global	strpbrk
	section	.text

strpbrk:
	
loop:
	cmp	byte [rdi], 0
	je	end
	jmp	check_str
post_check:
	inc	rdi
	jmp	loop

check_str:
	mov	rdx, rsi
check_loop:
	cmp	byte [rdx], 0
	je	post_check
	xor	rcx, rcx
	mov	rcx, [rdx]
	cmp	byte [rdi], cl
	je	found
	inc	rdx
	jmp	check_loop


found:
	mov	rax, rdi
	ret
	
end:	
	xor	rax, rax
	ret
