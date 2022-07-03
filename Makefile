OBJS = $(patsubst %.c, %.o, $(wildcard *.c))
BIN_NAME = dl
CFLAGS = -std=c11 -I . -ffunction-sections -fdata-sections -g
LIBS = libxy.a
OBJDUMP = objdump
DUMP_OPTION = --all-headers --line-numbers  -S --demangle --wide 
CC=gcc
# gc-sections is use for realize link by sections in gcc
LDFLAGS = -Wl,--gc-sections

$(BIN_NAME) : main.o $(LIBS)
	$(CC) $(LDFLAGS) -o $@ $^
	$(OBJDUMP) $(DUMP_OPTION) $@ > $@.lst


$(LIBS) : liba.o libb.o libd.o
	for var in $^; do \
		$(OBJDUMP) $(DUMP_OPTION) $$var > $$var.lst ; \
	done
	ar -r $@ $^

clean : 
	rm -rf $(OBJS) $(BIN_NAME) *.a
.PHONY = clean
