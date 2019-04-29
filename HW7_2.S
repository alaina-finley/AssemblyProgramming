		;R1		= 2
		;R2		= 4
		;R3		= 3
		;R4		= 7
		;R0		= The arithmetic mean (or 4)
		
		MOV		R1, #2
		MOV		R2, #-4
		MOV		R3, #3
		MOV		R4, #7
		MOV		R0, #0
		
		ADD		R0, R0, R1
		ADD		R0, R0, R2
		ADD		R0, R0, R3
		ADD		R0, R0, R4
		
		CMP		R0, #0
		;BLT		negativeBreak
		ASR		R0, R0, #2
		
		;negativeBreak
		;		LSL		R0, R0, #2
		
