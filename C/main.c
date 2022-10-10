#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <sys/time.h>
#include "libft.h"

int main()
{
	unsigned int sec;
	int nsec;
	double d_sec;
	char s[] = "3kur";
	int ok;
	char b[8] = "1234256";
	char *src = b;

	struct timespec start_time, end_time;

	for (int L = 0; L < 10; L++)
	{
		clock_gettime(CLOCK_REALTIME, &start_time);
		for (int j = 0; j < 1000000; j++)
			for (int i = 0; s[i]; i++)
			{
				ft_atoi("922");
				/* ft_strnstr(s, "3kur", 5); */
				/* ft_memcmp("hello9", "hello8", 6); */
				/* ft_memchr(b, 'r', 9); */
				/* ft_strncmp("hello9", "hello8", 6); */
				/* char *f = ft_strrchr(b, '6'); */
				/* ft_strchr(b, '6'); */
				/* ft_strlcat(b, "APA?", 4); */
				/* ft_tolower(s[i]); */
				/* ft_tolower(s[i]); */
				/* printf("%c", ft_tolower(s[i])); */
				/* printf("%c", ft_toupper(s[i])); */
				/* ft_strlcpy(b, "APA?", 3); */
				/* ft_strlcpy(b, "APA KABAR@#$%?", sizeof(b)); */
				/* ft_memmove(b, "Apa kabar?", 7); */
				/* ft_memcpy(b, "Apa kabar?", 7); */
				/* ft_memset(b, 'a', 4); */
				/* ok = ft_strlen(s); */
				/* ok = ft_isalnum(s[i]); */
				/* ok = ft_isprint(s[i]); */
				/* ok = ft_isdigit(s[i]); */
				/* ok = ft_isascii(s[i]); */
				/* ok = ft_isalpha(s[i]); */
			}

		clock_gettime(CLOCK_REALTIME, &end_time);

		sec = end_time.tv_sec - start_time.tv_sec;
		nsec = end_time.tv_nsec - start_time.tv_nsec;

		d_sec = (double)sec + (double)nsec / (1000 * 1000 * 1000);
		printf( "time:%f\n", d_sec);
	}
	/* printf("\n%s\n", (char *)ft_memset(b, 'a', 4)); */
	/* ft_bzero(b, 1); */
	/* printf("%s\n", b); */
	/* ft_memcpy(NULL, NULL, 5); */
	/* ft_memmove(b, src, 7); */
	/* printf("%s\n", b); */
	/* printf("%s\n", ft_strrchr(b, '6')); */
	/* printf("%s\n", (unsigned char *)ft_memchr(b, 'r', 9)); */
	/* printf("%s\n", (unsigned char *)memchr(b, 'r', 9)); */
	/* printf("%d\n", ft_memcmp("hello9", "hello8", 6)); */
	/* printf("%s\n", ft_strnstr(s, "3kur", 5)); */
	/* printf("%s\n", strnstr(s, "3kur", 5)); */
	printf("%d\n", ft_atoi("-922337"));
	printf("%d\n", atoi("-922337"));
	return 0;

}
