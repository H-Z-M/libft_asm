	.globl _ft_memcpy
_ft_memcpy:
	testq	%rdi, %rdi
	sete	%cl
	testq	%rsi, %rsi
	sete	%al
	testb	%al, %cl
	jne	L5
	movq	%rdi, %rax
	jmp	L3
L4:
	movzbl	(%rsi), %edx
	movb	%dl, (%rax)
	leaq	1(%rsi), %rsi
	leaq	1(%rax), %rax
	movq	%rcx, %rdx
L3:
	leaq	-1(%rdx), %rcx
	testq	%rdx, %rdx
	jne	L4
L2:
	movq	%rdi, %rax
	ret
L5:
	movl	$0, %edi
	jmp	L2
