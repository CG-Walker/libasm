                            ; int ft_strcmp(const char *s1, const char *s2)
                            ; rdi = s1
                            ; rsi = s2

section .text
    global ft_strcmp

ft_strcmp:
    xor rax, rax            ; set rax to 0

loop:
    mov al, BYTE [rdi]      ; mov rdi in tmp var (al)
    mov bl, BYTE [rsi]      ; mov rdi in tmp var (bl)
    cmp al, 0               ; check if al is null
    je end                  ; if op1 = op2
    cmp bl, 0               ; check if al is null
    je end                  ; if op1 = op2
    cmp al, bl 
    jne end                 ; if op1 != op2
    inc rdi
    inc rsi
    jmp loop

end:
    movzx rax, al           ; copy a register of inferior size into a bigger one (fill the other bits with 0)
    movzx rbx, bl
    sub rax, rbx            ; mov the diff of rax and rbx into rax
    ret