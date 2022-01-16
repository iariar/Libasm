section .text
    global _ft_strlen

_ft_strlen:

    mov rax , 0
    jmp len

len :
    cmp byte[rdi + rax], 0
    je end
    inc rax
    jmp len

end :
    ret
