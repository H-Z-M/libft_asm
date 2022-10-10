	.globl _ft_memcmp
_ft_memcmp:
L2:
	movq	%rdx, %rax
	subq	$1, %rdx
	testq	%rax, %rax
	je	L6
	leaq	1(%rdi), %r8
	movzbl	(%rdi), %eax
	leaq	1(%rsi), %rdi
	movzbl	(%rsi), %ecx
	cmpb	%cl, %al
	jne	L7
	movq	%rdi, %rsi
	movq	%r8, %rdi
	jmp	L2
L7:
	movzbl	%al, %eax
	movzbl	%cl, %ecx
	subl	%ecx, %eax
	ret
L6:
	ret
