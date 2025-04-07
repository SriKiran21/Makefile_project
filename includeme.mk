GCC ?=gcc
$(info value of GCC = $(GCC))

TARGET = main
SRC = $(shell find -iname "*.c")
OBJ_FILES = $(patsubst %.c, %.o, $(SRC))     #OBJ_FILES = $(SRC:%.c=%.o) -> This statement is substitute shorthand form of this OBJ_FILES = $(patsubst %.c, %.o, $(SRC))
INCLUDE = $(shell find -iname "*.h" -exec dirname {} \; | sed 's/^./-I./g' | xargs)