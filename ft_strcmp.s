section .text
    global _ft_strcmp

_ft_strcmp:
    cmp rdi , 0
    je err
    cmp rsi , 0
    je err
    jmp compare

compare:
	mov		al, BYTE [rdi]
	mov		bl, BYTE [rsi]
	cmp		al, 0	
	je		exit
	cmp		bl, 0
	je		exit
	cmp 	al, bl
	jne 	exit
	inc 	rdi	
	inc 	rsi	
	jmp 	compare	

exit:
	movzx	rax, al	
    movzx	rbx, bl	
    sub		rax, rbx
	ret


err:
    mov rax , -1
    ret
