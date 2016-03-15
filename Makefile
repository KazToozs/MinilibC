
NAME	=	libasm.so

SRC	=	$(wildcard *.S)

ZRC	=	memset.S	\
		strlen.S	\
		strcmp.S	\
		strchr.S	\
		strncmp.S	\
		memcpy.S

OBJ	=	$(SRC:.S=.o)
TEST	=	$(SRC:.S=.test)

ASM	=	nasm

CC	=	gcc

CFLAGS	=	

LDFLAGS	=	-shared


all:		$(NAME)

$(NAME):	$(OBJ)
		$(CC) $(LDFLAGS) -o $(NAME) $(OBJ)

%.o:		%.S
		$(ASM) -o $@ $< -f elf64

clean:
		rm -f $(OBJ) main.o $(TEST)

fclean:		clean
		rm -f $(NAME)

re:		fclean all

%.test:		%.o main.o
		gcc -o $@ $?

%.gdb:		%.test
		gdb ./$<
