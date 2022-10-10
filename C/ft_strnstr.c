#include "libft.h"

char	*ft_strnstr(const char *haystack, const char *needle, size_t len)
{
	size_t	needle_len;
	char	*top;

	needle_len = ft_strlen(needle);
	if (needle_len == 0)
		return ((char *)haystack);
	top = (char *)haystack;
	while (*top && top <= haystack + len - needle_len)
	{
		if (*top == *needle
			&& !ft_strncmp(top + 1, needle + 1, needle_len - 1))
			return (top);
		top++;
	}
	return (NULL);
}
