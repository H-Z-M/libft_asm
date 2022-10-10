#include "libft.h"

int ft_isspace(char c)
{
	if (c == '\t' || c == '\n' ||
		c == '\v' || c == '\f' || c == '\r' || c == ' ')
		return 1;
	return 0;
}

int ft_atoi(const char *str)
{
	int acc = 0;
	int flag = 1;

	while (ft_isspace(*str))
		str++;
	if (*str == '+')
		str++;
	else if (*str == '-')
	{
		flag = -1;
		str++;
	}
	while (ft_isdigit(*str))
		acc = 10 * acc + *str++ - '0';
	return flag * acc;
}
