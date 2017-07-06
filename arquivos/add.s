	.text	
	.global _start
	_start:				@label não são obrigatórias
		
		AND		R0,R0,#0 
		ADD		R4,R0,#4 
		ADD		R6,R0, #0x500 
		AND		R8,R8,#0 
		AND		R7,R7,#0 
		ADD		R9, R0, #2147483648
		STR		R4,[R6,#0] 
LOOP:
		CMP		R8,#9 
		BEQ		FINAL 
		ADD		R8,R8,#1 
		ADD		R7,R4,R4
		ADD		R6,R6,#4 
		ADD		R4,R7,#0 
		STR		R4,[R6,#0] 
		TST		R4, R9	
		B		LOOP
FINAL:
		LDR		R5, [R6,#0] 
