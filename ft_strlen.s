
global _ft_strlen
section .text
_ft_strlen: 
        mov rax, 0
        loop:
        cmp byte[rdi], 0
        jz end
        add rax, 1
        add rdi, 1
        jmp loop
end:
    ret