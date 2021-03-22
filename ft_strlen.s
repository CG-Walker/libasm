                            ; size_t ft_strlen(char *str)
                            ; rdi = str

section .text
    global ft_strlen

ft_strlen:
    xor rax, rax            ; set rax to 0

loop:
    cmp BYTE [rdi + rax], 0 ; check if we are at the end of rdi
    je end                  ; if op1 != op2
    inc rax
    jmp loop                ; loop again

end:
    ret