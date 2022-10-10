#include "libft.h"

void *ft_memcpy(void *restrict dst, const void *restrict src, size_t n)
{
	unsigned char *ud = (unsigned char *)dst;
	unsigned char *us = (unsigned char *)src;

	if (!dst && !src)
		return (NULL);
	while (n--)
		*ud++ = *us++;
	return (dst);
}
