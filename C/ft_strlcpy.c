#include "libft.h"

size_t ft_strlcpy(char *restrict dst, const char *restrict src, size_t dstsize)
{
	char *d = dst;
	const char *s = src;
	size_t n = dstsize;

	if (n != 0)
	{
		while (--n != 0)
		{
			if ((*d++ = *s++) == '\0')
				break ;
		}
	}
	if (n == 0)
	{
		if (dstsize != 0)
			*d = '\0';
		while (*s++)
			;
	}
	return (s - src - 1);
}
