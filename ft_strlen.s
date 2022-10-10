	.globl _ft_strlen
_ft_strlen:
	movl	$0, %eax
	jmp	L2
L3:
	addq	$1, %rax
L2:
	cmpb	$0, (%rdi,%rax)
	jne	L3
	ret
