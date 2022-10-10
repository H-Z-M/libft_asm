	.globl _ft_isspace
_ft_isspace:
	leal	-9(%rdi), %eax
	cmpb	$4, %al
	setbe	%dl
	cmpb	$32, %dil
	sete	%al
	orb	%al, %dl
	jne	L3
	movl	$0, %eax
	ret
L3:
	movl	$1, %eax
	ret

	.globl _ft_atoi
_ft_atoi:
	pushq	%r12
	pushq	%rbp
	pushq	%rbx
	movq	%rdi, %rbp
	jmp	L5
L6:
	addq	$1, %rbp
L5:
	movzbl	0(%rbp), %r12d
	movsbl	%r12b, %edi
	call	_ft_isspace
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L6
	cmpb	$43, %r12b
	je	L13
	cmpb	$45, %r12b
	je	L14
	movl	$1, %r12d
	jmp	L8
L13:
	addq	$1, %rbp
	movl	$1, %r12d
	jmp	L8
L14:
	addq	$1, %rbp
	movl	$-1, %r12d
	jmp	L8
L10:
	leal	(%rbx,%rbx,4), %edx
	movsbl	0(%rbp), %eax
	leal	-48(%rax,%rdx,2), %ebx
	leaq	1(%rbp), %rbp
L8:
	movsbl	0(%rbp), %edi
	call	_ft_isdigit
	testl	%eax, %eax
	jne	L10
	movl	%ebx, %eax
	imull	%r12d, %eax
	popq	%rbx
	popq	%rbp
	popq	%r12
	ret
