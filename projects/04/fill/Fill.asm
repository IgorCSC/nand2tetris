// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

	// Put your code here.


	(LOOP)

	
	
	@KBD
	D=M
	@CLEANMAIN
	D			; JEQ		// Se o keyboard tem input != 0 (i.e. tecla pressionada), então prossegue para preencher a tela
	
	
	@SCREEN    				        // Ponteiro se inicializa no RAM inicial da tela
	D=A
	@R0
	M=D

	(FILL)
	@R0
	A = M
	M = -1 //Preenche uma linha

	@R0
	M = M + 1
	D = M

	@24576
	D = D - A
	@FILL
	D			; JLT


	@LOOP					// Volta para o LOOP
	0			; JMP
	


	(CLEANMAIN)				//LOOP de LIMPAR A TELA

	@SCREEN    				        // Ponteiro se inicializa no RAM inicial da tela
	D=A
	@R0
	M=D

	(CLEAN)
	@R0
	A = M
	M = 0 //Preenche uma linha

	@R0
	M = M + 1
	D = M

	@24576
	D = D - A
	@CLEAN
	D			; JLT

	@LOOP					// Volta para o LOOP
	0			; JMP
