;                           char *strdup(const char *str)
;                           rdi = str

section .text
    extern ft_strlen
    extern ft_strcpy
    extern malloc
    global ft_strdup

ft_strdup:
    xor rax, rax            ; set rax to 0
    cmp rdi, 0              ; check if there is an error
    jl error                ; if op1 < op2
    push rdi                ; save rdi
    call ft_strlen          ; rdi = str in ft_strlen
    inc rax                 ; inc rax for null char
    mov rdi, rax
    call malloc wrt ..plt
    pop r8                  ; pop into general register
    cmp rax, 0              ; check if error malloc
    jl error                ; if op1 < op2
    mov rdi, rax            ; rdi = dst in ft_strcpy
    mov rsi, r8             ; rsi = src in ft_strcpy
    call ft_strcpy
    ret

error:
    mov rax, 0
    ret