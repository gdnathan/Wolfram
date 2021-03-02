##
## EPITECH PROJECT, 2019
## makefile
## File description:
## makefile for infadd prog
##

MAKEFLAGS += --no-print-directory -j
BINARY_PATH     :=  $(shell stack path --local-install-root)

all:
	stack build
	cp $(BINARY_PATH)/bin/wolfram-exe ./wolfram

clean:

fclean:	clean
	rm -f wolfram

tests_run: clean
	stack test

re::	fclean
re::	all

.PHONY: all clean fclean re debug test DOLIB
