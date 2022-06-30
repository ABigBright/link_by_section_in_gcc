# Getting Start

```sh
gcc -c -ffunction-sections -fdata-sections liba.c
gcc -c -ffunction-sections -fdata-sections libb.c
gcc -c -ffunction-sections -fdata-sections libd.c

objdump --line-numbers --all-headers --demangle --wide liba.o -S > liba.o.lst
objdump --line-numbers --all-headers --demangle --wide libb.o -S > libb.o.lst
objdump --line-numbers --all-headers --demangle --wide libd.o -S > libd.o.lst

ar rs libx.a liba.o libb.o libd.o
# --gc-sections to remove unused sections
gcc -Wl,--gc-sections main.o -lx -L . 
objdump --line-numbers --all-headers --demangle --wide a.out -S > a.out.lst

```
