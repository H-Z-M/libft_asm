#include "libft.h"

/* size_t ft_strlcat(char *d, const char *s, size_t n) */
/* { */
/* 	size_t l = ft_strlen(d); */
/*  */
/* 	if (l == n) */
/* 		return (l + ft_strlen(s)); */
/* 	#<{(| if (l > n) |)}># */
/* 	#<{(| 	l = n; |)}># */
/* 	return (l + ft_strlcpy(d+l, s, n-l)); */
/* } */
size_t	ft_strlcat(char *dst, const char *src, size_t dstsize)
{
	char		*d = dst;
	const char	*s = src;
	size_t		n = dstsize;
	size_t		dlen;

	while (n-- != 0 && *d)
		d++;
	dlen = d - dst;
	n = dstsize - dlen;
	if (n == 0)
		return (dlen + ft_strlen(s));

	while (n-- != 1 && *s)
		*d++ = *s++;
	while (*++s)
		;

	/* while (*s) */
	/* { */
	/* 	if (n != 1) */
	/* 	{ */
	/* 		*d++ = *s; */
	/* 		n--; */
	/* 	} */
	/* 	s++; */
	/* } */
	*d = '\0';
	return (dlen + (s - src));
}
