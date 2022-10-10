	.globl _ft_strrchr
_ft_strrchr:
	movl	$0, %edx
	jmp	L2
L3:
	addq	$1, %rdi
L2:
	movzbl	(%rdi), %eax
	testb	%al, %al
	je	L6
	cmpb	%al, %sil
	jne	L3
	movq	%rdi, %rdx
	jmp	L3
L6:
	movq	%rdx, %rax
	ret
