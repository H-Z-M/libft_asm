NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror

SRCS =		ft_atoi.s \
			ft_bzero.s \
			ft_isalnum.s \
			ft_isalpha.s \
			ft_isascii.s \
			ft_isdigit.s \
			ft_isprint.s \
			ft_memchr.s \
			ft_memcmp.s \
			ft_memcpy.s \
			ft_memmove.s \
			ft_memset.s \
			ft_strchr.s \
			ft_strlcat.s \
			ft_strlcpy.s \
			ft_strlen.s \
			ft_strncmp.s \
			ft_strnstr.s \
			ft_strrchr.s \
			ft_tolower.s \
			ft_toupper.s

OBJ = $(SRCS:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
