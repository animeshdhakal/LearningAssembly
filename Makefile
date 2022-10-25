all: main.o
	ld -o main main.o

main.o: main.asm
	nasm -felf64 main.asm -o main.o