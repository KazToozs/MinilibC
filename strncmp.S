
	global	strncmp
	section	.text
	
strncmp:
	cmp	rdx, 0
	jne	loop
	mov	rax, 0
	ret
	
loop:	
	cmp	byte [rdi], 0
	je	end
	cmp	byte [rsi], 0
	je	end
	cmp	rdx, 1 
	je	end
	mov	rcx, [rsi]
	cmp	byte [rdi], cl
	jne	end
	inc	rdi
	inc	rsi
	dec	rdx
	jmp	loop

end:
        xor     rcx, rcx
        xor     r10, r10
        mov     cl, byte [rdi]
        mov     r10b, byte [rsi]
        sub     rcx, r10
        mov     rax, rcx
        ret
	
