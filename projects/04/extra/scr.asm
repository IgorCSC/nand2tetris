
	@SCREEN
	D=A
	@R0
	M=D

	(LOOP)
	@R0
	M = M + 1

	A = M
	M = -1

	@LOOP
	0			; JMP
