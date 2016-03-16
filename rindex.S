 
	global my_rindex
	section .text

my_rindex:
	xor	rdx, rdx

loop:
	cmp	byte [rdi], 0
	je 	ret
	cmp	byte [rdi], sil
	cmove	rdx, rdi
	inc	rdi
	jmp	loop

ret:
	cmp	rdx, 0
	je	end
	mov	rax, rdx
	ret

end:
	xor	rax, rax
	ret
