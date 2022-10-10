	.globl _ft_memset
_ft_memset:
	movq	%rdi, %rax
	jmp	L2
L3:
	movb	%sil, (%rax)
	leaq	1(%rax), %rax
	movq	%rcx, %rdx
L2:
	leaq	-1(%rdx), %rcx
	testq	%rdx, %rdx
	jne	L3
	movq	%rdi, %rax
	ret
