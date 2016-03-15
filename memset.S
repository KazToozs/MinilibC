
	global	memset
	section .text

memset:
	mov	rcx, -1
	mov	rax, rdi
	
loop:
	add	rcx, 1
	cmp	rcx, rdx
	je	end
	mov	byte [rdi], sil
	inc	rdi
	jmp	loop
	
end:	
	ret
