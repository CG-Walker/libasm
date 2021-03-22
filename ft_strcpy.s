                                ; char *ft_strcpy(char *dst, const char *src)
                                ; rdi = dst
                                ; rsi = src

section .text
    global ft_strcpy

ft_strcpy:
    xor rax, rax                ; set rax to 0

loop:
    mov dl, BYTE [rsi + rax]    ; mov rsi in a tmp var (dl)
    mov BYTE [rdi + rax], dl    ; mov dl in rdi
    inc rax
    cmp BYTE [rsi + rax], 0     ; check if we are at the end of rsi
    je end                      ; if op1 = op2
    jmp loop

end:
    mov dl, BYTE [rsi + rax]    ; mov rsi null char in tmp var (dl)
    mov BYTE [rdi + rax], dl    ; mov dl in rdi
    mov rax, rdi                ; mov rdi in rax for ret
    ret