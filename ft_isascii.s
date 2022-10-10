	.globl _ft_isascii
_ft_isascii:
	cmpl	$127, %edi
	setbe	%al
	movzbl	%al, %eax
	ret
