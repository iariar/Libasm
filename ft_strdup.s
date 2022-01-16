section .text
    global _ft_strdup
    extern _malloc
    extern _ft_strlen
    extern _ft_strcpy

_ft_strdup:

    cmp rdi , 0
    je error
    call _ft_strlen
    inc rax
    push rdi
    mov rdi , rax
    call _malloc
    cmp rax , 0
    je error
    pop rsi
    mov rdi , rax
    call _ft_strcpy
    ret

error:
    mov rax , 0
    ret