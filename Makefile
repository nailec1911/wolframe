##
## EPITECH PROJECT, 2024
## B-FUN-400-BDX-4-1-wolfram-celian.lombardot
## File description:
## Makefile
##

NAME	:=	wolfram

dir_exe	:=	$(shell stack path --local-install-root)/bin/wolfram-exe


all:
	stack build
	cp $(dir_exe) $(NAME)
.PHONY: all

clean:
	stack clean
.PHONY: clean

fclean: clean
	$(RM) $(NAME)
.PHONY: fclean

re: fclean all
.PHONY: re
