all: main.o
	ld -m elf_i386 -o main main.o

main.o: main.asm
	nasm -felf32 main.asm -o main.o