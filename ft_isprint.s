	.globl _ft_isprint
_ft_isprint:
	subl	$32, %edi
	cmpl	$94, %edi
	setbe	%al
	movzbl	%al, %eax
	ret
