
	global	strcasecmp
	section .text

strcasecmp:

	xor	rdx, rdx
	mov	r13, 32
	mov	r14, 65
	mov	r15, 90

caseloop:
	mov	r8, [rdi + rdx]
	and	r8, 0xff
	mov	r9, [rsi + rdx]
	and	r9, 0xff
	cmp     r8, 0
        je      end
        cmp     r9, 0
        je      end

str1_case:
	xor	r10, r10
	mov	r10, r8
	cmp	r10, r14
	jl	str2_case
	cmp	r10, r15
	jg	str2_case
	add	r10, r13
	mov	r8, r10
str2_case:
	xor	r11, r11
	mov	r11, r9
	cmp	r11, r14
	jl	check
	cmp	r11, r15
	jg	check
	add	r11, r13
	mov	r9, r11
	
check:	
	cmp	r8, r9
	jne	end
	add	rdx, 1
	jmp	caseloop
	
end:
	sub	r8, r9
	mov	rax, r8
        ret
	
