##
## EPITECH PROJECT, 2024
## B-FUN-400-BDX-4-1-wolfram-celian.lombardot
## File description:
## Makefile
##

NAME	:=	wolfram

dir_exe	:=	$(shell stack path --local-install-root)/bin/wolfram-exe

test_path	:=	 $(shell stack path --local-hpc-root)

coverage_path	=	test/coverage

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

tests_run:
	mkdir -p $(coverage_path)
	stack test --coverage
#	cp $(test_path)/$(NAME)/$(NAME)-test/$(NAME)-test.tix $(coverage_path)
	stack hpc report --all --destdir $(coverage_path)

re: fclean all
.PHONY: re
