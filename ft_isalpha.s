	.globl _ft_isalpha
_ft_isalpha:
	leal	-97(%rdi), %eax
	cmpl	$25, %eax
	setbe	%al
	subl	$65, %edi
	cmpl	$25, %edi
	setbe	%dl
	orl		%edx, %eax
	movzbl	%al, %eax
	ret
