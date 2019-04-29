		;R1		= the number of pennies
		;		R2 = the number of nickles
		;		R3 = the number of dimes
		;		R4 = the number of quarters
		;		R0 = the total number of cents
		;There	are 10 pennies
		MOV		R1, #10
		MOV		R0, #0
		MOV		R11, #1
		
forLoop
		CMP		R11, R1
		BGT		endFor
		
		ADD		R0, R0, #1
		ADD		R11, R11, #1
		
		B		forLoop
		
endFor
		;		There are 6 nickles
		MOV		R2, #6
		MOV		R5, #1
forLoop2
		CMP		R5, R2
		BGT		endFor2
		
		ADD		R0, R0, #5
		ADD		R5, R5, #1
		
		B		forLoop2
endFor2
		
		;		There are 4 dimes
		MOV		R3, #4
		MOV		R6, #1
		
forLoop3
		CMP		R6, R3
		BGT		endFor3
		
		ADD		R0, R0, #10
		ADD		R6, R6, #1
		
		B		forLoop3
		
endFor3
		
		;		There are 3 quarters
		MOV		R4, #3
		MOV		R7, #1
		
forLoop4
		CMP		R7, R4
		BGT		endFor4
		
		ADD		R0, R0, #25
		ADD		R7, R7, #1
		
		B		forLoop4
		
endFor4
