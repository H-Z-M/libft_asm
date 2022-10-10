	.globl _ft_memchr
_ft_memchr:
	jmp	L2
L7:
	addq	$1, %rdi
	movq	%rax, %rdx
L2:
	leaq	-1(%rdx), %rax
	testq	%rdx, %rdx
	je	L6
	cmpb	%sil, (%rdi)
	jne	L7
	movq	%rdi, %rax
	ret
L6:
	movl	$0, %eax
	ret
