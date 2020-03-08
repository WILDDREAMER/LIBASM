global _ft_strcmp

section .text
_ft_strcmp:
    loop:
    movzx r10 , byte[rdi]
    movzx r11 , byte[rsi]
    sub r10, r11
    jne end
    or r10, r11
    jz end
    add rdi, 1
    add rsi, 1
    jmp loop
end :
    mov rax, r10
    ret
