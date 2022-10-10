	.globl _ft_isalnum
_ft_isalnum:
	pushq	%rbx
	movl	%edi, %ebx
	call	_ft_isalpha
	testl	%eax, %eax
	je	L6
	movl	$1, %eax
L1:
	popq	%rbx
	ret
L6:
	movl	%ebx, %edi
	call	_ft_isdigit
	testl	%eax, %eax
	je	L1
	movl	$1, %eax
	jmp	L1
