// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// Put your code here.

	@R2
	M=0	// zera o terceiro registro

	
	(LOOP)
	@R0
	D=M
	@END
	D			; JEQ // Se R0 guarda 0, pula para rotina de fim

	@R0		// diminui um de R0
	D=D-1
	M=D

	@R1
	D=M
	@R2
	M=M+D		// adiciona mais um na saida
	@LOOP
	0			; JEQ

	(END)
	@END
	0			; JMP

	
