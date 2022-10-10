	.globl _ft_isdigit
_ft_isdigit:
	subl	$48, %edi
	cmpl	$9, %edi
	setbe	%al
	movzbl	%al, %eax
	ret
