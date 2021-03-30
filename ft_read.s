                                        ; ssize_t ft_read(int fd, const void *buf, size_t len)

section .text
    extern __errno_location
    global ft_read

ft_read:
    mov rax, 0x0                        ; read = 0 write = 1
    syscall                             ; call read
    cmp rax, 0                          ; check if there is an error
    jl error                            ; if op1 < op2
    ret

error:
    neg rax                             ; absolute value of rax
    mov rdi, rax
    call __errno_location wrt ..plt
    mov [rax], rdi
    mov rax, -1
    ret 