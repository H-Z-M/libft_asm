	.globl _ft_strncmp
_ft_strncmp:
L2:
	movq	%rdx, %rax
	subq	$1, %rdx
	testq	%rax, %rax
	je	L7
	leaq	1(%rdi), %r8
	movzbl	(%rdi), %eax
	leaq	1(%rsi), %rdi
	movzbl	(%rsi), %ecx
	cmpb	%cl, %al
	jne	L8
	testb	%al, %al
	sete	%sil
	testb	%cl, %cl
	sete	%al
	orb	%al, %sil
	jne	L6
	movq	%rdi, %rsi
	movq	%r8, %rdi
	jmp	L2
L8:
	movzbl	%al, %eax
	movzbl	%cl, %ecx
	subl	%ecx, %eax
	ret
L7:
	ret
L6:
	movl	$0, %eax
	ret
