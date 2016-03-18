
NAME	=	libasm.so

SRC	=	memset.S		\
		memcpy.S		\
		strchr.S		\
		strcmp.S		\
		strcspn.S		\
		strncmp.S		\
		strlen.S		\
		strpbrk.S		\
		strstr.S		\
		strcasecmp.S		\
		bonus/memccpy.S		\
		bonus/strncasecmp.S	\
		bonus/strrchr.S		\
		bonus/index.S		\
		memmove.S		\
		rindex.S

OBJ	=	$(SRC:.S=.o)
TEST	=	$(SRC:.S=.test)

ASM	=	nasm

CC	=	gcc

CFLAGS	=	

LDFLAGS	=	-shared -fPIC


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
