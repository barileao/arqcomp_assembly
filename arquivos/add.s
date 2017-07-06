	.text	
	.global _start
	_start:				@label não são obrigatórias
		
	AND		R0,R0,#0        		
	ADD		R8,R0,#4       			
	ADD		R4,R0, #500    		
	AND		R7,R7,#0       	 	 
	AND		R11,R11,#0 		
	ADD		R6, R0, #2147483648	
	STR		R8,[R4,#0] 		

LOOP:
		
	CMP		R7,#9 			
	BEQ		FINAL 			
	ADD		R7,R7,#1 		
	ADD		R11,R8,R8				
	ADD		R4,R4,#4 
	ADD		R8, R11, #0			
	STR		R8,[R4,#0] 			
	TST		R11, R6			
	B		LOOP


FINAL:
		
	LDR		R5, [R4,#0] 
