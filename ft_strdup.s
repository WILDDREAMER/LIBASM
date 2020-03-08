global _ft_strdup
extern _malloc
section .text

_ft_strdup:
	push rbx
	mov r8, 0
	mov r9, rdi
	mov rbx, rdi
	loop:
		cmp byte[r9], 0
		jz alloc
		add r8, 1
		add r9, 1
		jmp loop
	alloc:
		mov rdi, r8
		call _malloc
		cmp rax, 0
		jz end
		mov rax, rbx
		jmp end

	end :
		pop rbx
		ret