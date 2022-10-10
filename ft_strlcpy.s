	.globl _ft_strlcpy
_ft_strlcpy:
	movq	%rsi, %r9
	movq	%rdx, %r8
	testq	%rdx, %rdx
	jne	L8
	movq	%rsi, %rax
L3:
	testq	%rdx, %rdx
	jne	L5
	testq	%r8, %r8
	je	L7
	movb	$0, (%rdi)
L7:
	movq	%rax, %rdx
	addq	$1, %rax
	cmpb	$0, (%rdx)
	jne	L7
L5:
	subq	%r9, %rax
	subq	$1, %rax
	ret
L8:
	movq	%rsi, %rax
L2:
	subq	$1, %rdx
	je	L3
	leaq	1(%rax), %rsi
	leaq	1(%rdi), %rcx
	movzbl	(%rax), %eax
	movb	%al, (%rdi)
	testb	%al, %al
	je	L9
	movq	%rsi, %rax
	movq	%rcx, %rdi
	jmp	L2
L9:
	movq	%rsi, %rax
	movq	%rcx, %rdi
	jmp	L3
