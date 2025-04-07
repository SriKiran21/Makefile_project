#include includeme.mk

GCC ?=gcc
$(info value of GCC = $(GCC))

TARGET = main
SRC = $(shell find -iname "*.c")
OBJ_FILES = $(patsubst %.c, %.o, $(SRC))     #OBJ_FILES = $(SRC:%.c=%.o) -> This statement is substitute shorthand form of this OBJ_FILES = $(patsubst %.c, %.o, $(SRC))
INCLUDE = $(shell find -iname "*.h" -exec dirname {} \; | sed 's/^./-I./g' | xargs)

#$(info $(SRC) $(OBJ_FILES) $(INCLUDE))				#This is for debugging purpose

all: $(TARGET)
	@

run: all
	@./$(TARGET)

main: $(OBJ_FILES)
	$(GCC) $^ -o $@

#%.o: %.c
#	$(GCC) -I./include/magic -I./include/magic2 -c $^ -o $@

%.o: %.c
	$(GCC) $(INCLUDE) -c $^ -o $@


clean:
	@rm -f main $(OBJ_FILES)