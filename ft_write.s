section .text
    global _ft_write
    extern ___error

_ft_write:
    mov rax, 0x2000004
    syscall
    jc _exit
    ret

_exit:
    push rax ;saving errno
    call ___error ;retrieving adress of errno
    pop rdx
    mov [rax] , rdx ;putting errno in return value of __error
    mov rax, -1
    ret