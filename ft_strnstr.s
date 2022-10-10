	.globl _ft_strnstr
_ft_strnstr:
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %r13
	movq	%rsi, %r12
	movq	%rdx, %r14
	movq	%rsi, %rdi
	call	_ft_strlen
	testq	%rax, %rax
	je	L6
	movq	%rax, %rbp
	movq	%r13, %rbx
	jmp	L3
L4:
	addq	$1, %rbx
L3:
	movzbl	(%rbx), %edx
	testb	%dl, %dl
	je	L7
	movq	%r14, %rax
	subq	%rbp, %rax
	addq	%r13, %rax
	cmpq	%rbx, %rax
	jb	L9
	cmpb	%dl, (%r12)
	jne	L4
	leaq	1(%rbx), %rdi
	leaq	-1(%rbp), %rdx
	leaq	1(%r12), %rsi
	call	_ft_strncmp
	testl	%eax, %eax
	jne	L4
	jmp	L1
L9:
	movl	$0, %ebx
	jmp	L1
L6:
	movq	%r13, %rbx
L1:
	movq	%rbx, %rax
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
L7:
	movl	$0, %ebx
	jmp	L1
