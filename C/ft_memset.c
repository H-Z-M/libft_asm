#include "libft.h"

void *ft_memset(void *b, int c, size_t len)
{
	unsigned char *ub = (unsigned char *)b;
	unsigned char uc = (unsigned char)c;

	while (len--)
		*ub++ = c;
	return (b);
}
