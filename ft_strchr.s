	.globl _ft_strchr
_ft_strchr:
	movq	%rdi, %rax
	jmp	L3
L5:
	addq	$1, %rax
L3:
	movzbl	(%rax), %edx
	cmpb	%sil, %dl
	je	L2
	testb	%dl, %dl
	jne	L5
	movl	$0, %eax
L2:
	ret
