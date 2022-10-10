	.globl _ft_memmove
_ft_memmove:
	testq	%rdi, %rdi
	sete	%cl
	testq	%rsi, %rsi
	sete	%al
	testb	%al, %cl
	jne	L7
	cmpq	%rsi, %rdi
	ja	L9
	movq	%rdi, %rax
	jmp	L3
L9:
	leaq	(%rdi,%rdx), %rax
	addq	%rdx, %rsi
	jmp	L4
L5:
	subq	$1, %rsi
	subq	$1, %rax
	movzbl	(%rsi), %edx
	movb	%dl, (%rax)
	movq	%rcx, %rdx
L4:
	leaq	-1(%rdx), %rcx
	testq	%rdx, %rdx
	jne	L5
	jmp	L2
L6:
	movzbl	(%rsi), %edx
	movb	%dl, (%rax)
	leaq	1(%rsi), %rsi
	leaq	1(%rax), %rax
	movq	%rcx, %rdx
L3:
	leaq	-1(%rdx), %rcx
	testq	%rdx, %rdx
	jne	L6
L2:
	movq	%rdi, %rax
	ret
L7:
	movl	$0, %edi
	jmp	L2
