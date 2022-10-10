	.globl _ft_toupper
_ft_toupper:
	movl	%edi, %eax
	leal	-97(%rdi), %edx
	cmpl	$25, %edx
	jbe	L3
L2:
	ret
L3:
	subl	$32, %eax
	jmp	L2
