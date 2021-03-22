CC = gcc

NASM = nasm

NASMFLAGS =	-f elf64

FLAGS = -Wall -Werror -Wextra

SRCS = ft_strcpy.s ft_strlen.s ft_strcmp.s ft_strdup.s ft_read.s ft_write.s

OBJ = $(SRCS:.s=.o)

NAME = libasm

NAMELIB = libasm.a

%.o :		%.s
			$(NASM) $(NASMFLAGS) $< -o $@

all:		$(NAME)

$(NAME):	$(OBJ)
			ar rcs $(NAMELIB) $(OBJ)

test:		re
			$(CC) main.c -c
			$(CC) $(FLAGS) -L. -o test main.o $(NAMELIB)
			clear
			@./test


clean:		
			rm -f $(OBJ) main.o

fclean:		clean
			rm -f $(NAMELIB) test

re:			fclean all