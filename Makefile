NAME	=	libasm.a
OBJ		=	*.o

all		:	$(NAME)
$(NAME) :
		nasm -f macho64 ft_strlen.s
		nasm -f macho64 ft_strcpy.s
		nasm -f macho64 ft_strcmp.s
		nasm -f macho64 ft_write.s
		nasm -f macho64 ft_read.s
		nasm -f macho64 ft_strdup.s
		ar rc $(NAME) $(OBJ)
clean	:
		rm -f $(OBJ)
fclean	: clean
		rm -f $(NAME)
re		: fclean
		make all