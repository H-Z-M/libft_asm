#include "libft.h"

char *ft_strrchr(const char *s, int c)
{
	char *save = NULL;

	while (*s)
	{
		if (*s == (char)c)
			save = (char *)s;
		s++;
	}
	return (save);
}
