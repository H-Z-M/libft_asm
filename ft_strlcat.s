	.globl _ft_strlcat
_ft_strlcat:
	pushq	%rbx
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rax
	jmp	L2
L4:
	addq	$1, %rax
	movq	%rsi, %rdx
L2:
	leaq	-1(%rdx), %rsi
	testq	%rdx, %rdx
	je	L3
	cmpb	$0, (%rax)
	jne	L4
L3:
	movq	%rax, %rbx
	subq	%rdi, %rbx
	subq	%rbx, %rcx
	je	L11
	movq	%r8, %rdx
	jmp	L5
L11:
	movq	%r8, %rdi
	call	_ft_strlen
	addq	%rbx, %rax
	jmp	L1
L7:
	addq	$1, %rdx
L5:
	movzbl	(%rdx), %esi
	testb	%sil, %sil
	je	L12
	cmpq	$1, %rcx
	je	L7
	movb	%sil, (%rax)
	subq	$1, %rcx
	leaq	1(%rax), %rax
	jmp	L7
L12:
	movb	$0, (%rax)
	subq	%r8, %rdx
	leaq	(%rdx,%rbx), %rax
L1:
	popq	%rbx
	ret
