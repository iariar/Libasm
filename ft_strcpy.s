			section	.text
			global	_ft_strcpy

_ft_strcpy:
			mov		rax , rdi			 
			cmp		rsi , 0					 
			jz		return
			jmp		copy

copy:
			mov dl , [rsi]
			mov [rdi] , dl
			cmp [rsi] , byte 0
			jz return
			inc rsi
			inc rdi
			jmp copy
return:
			ret
