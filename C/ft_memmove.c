#include "libft.h"

void *ft_memmove(void *restrict dst, const void *restrict src, size_t n)
{
	unsigned char *ud = (unsigned char *)dst;
	unsigned char *us = (unsigned char *)src;

	if (!dst && !src)
		return (NULL);
	if (dst > src)
	{
		unsigned char *l_dst = ud + n;
		unsigned char *l_src = us + n;
		while (n--)
			*--l_dst = *--l_src;
		return (dst);
	}
	while (n--)
		*ud++ = *us++;
	return (dst);
}
