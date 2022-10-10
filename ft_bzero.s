	.globl _ft_bzero
_ft_bzero:
	subq	$8, %rsp
	movq	%rsi, %rdx
	movl	$0, %esi
	call	_ft_memset
	addq	$8, %rsp
	ret
