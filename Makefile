
SRCS =	ft_printf.c ft_hex.c\
		ft_putchar.c ft_putnbr.c \
		ft_putstr.c ft_putunsigned.c \
		ft_Upphex.c ft_putadress.c
		
OBJS = ${SRCS:.c=.o}
NAME = libftprintf.a
CC = cc
RM = rm -f
CFLAGS = -Wall -Wextra -Werror

${NAME}: ${OBJS}
	ar rcs ${NAME} ${OBJS}

all: ${NAME}

clean:
	${RM} ${OBJS}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY : all clean fclean re