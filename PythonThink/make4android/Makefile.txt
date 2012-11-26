
#############################################################################################################
# 定义根的位置
BINPATH := bin
SRCPATH :=source
INCPATH :=include
SRC := $SCRPATH/add.c $SCRPATH/sub.c $SCRPATH/main.c 
TRAGET := test
all := $TRAGET
all : source/add.c source/sub.c source/main.c
	gcc source/add.c source/sub.c source/main.c -Iinclude/ -o test