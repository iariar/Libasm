# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iariss <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/15 11:03:32 by iariss            #+#    #+#              #
#    Updated: 2021/03/07 16:43:37 by iariss           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libasm.a
CMP = nasm
FLAGS = -f macho64
HEAD = libasm.h
AR      = ar rcs

SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_read.s ft_write.s ft_strdup.s

OBJ = ft_strlen.o ft_strcpy.o ft_strcmp.o ft_read.o ft_write.o ft_strdup.o

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

%.o: %.s
	# $(CMP) $(FLAGS) ft_strlen.s
	# $(CMP) $(FLAGS) ft_strcpy.s
	# $(CMP) $(FLAGS) ft_strcmp.s
	# $(CMP) $(FLAGS) ft_read.s
	# $(CMP) $(FLAGS) ft_write.s
	# $(CMP) $(FLAGS) ft_strdup.s
	$(CMP) $(FLAGS) -s -o $@ $<

clean:
	rm -f $(OBJ) $(BONOB)

fclean: clean
	rm -f $(NAME)

re: fclean all
