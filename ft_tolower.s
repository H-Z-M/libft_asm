	.globl _ft_tolower
_ft_tolower:
	movl	%edi, %eax
	leal	-65(%rdi), %edx
	cmpl	$25, %edx
	jbe	L3
L2:
	ret
L3:
	addl	$32, %eax
	jmp	L2
