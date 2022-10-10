#include "libft.h"

void *ft_memchr(const void *s, int c, size_t n)
{
	unsigned char *us = (unsigned char *)s;
	unsigned char uc = c;

	while (n--)
	{
		if (*us == uc)
			return ((void *)us);
		us++;
	}
	return (NULL);
}
