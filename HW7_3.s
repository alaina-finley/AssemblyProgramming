			MOV		R1, #1
			MOV		R0, #0
			
			CMP		R1, #1
			BEQ		endLoop1
			
			CMP		R1, #1
			BLT		endForLoop

			;First check if this number is odd off the get go...if it is,
			;its not a power of 2
			MOV		R2, R1
			LSR		R2, R2, #1
			LSL		R2, R2, #1
			
			CMP		R2, R1
			BNE		endForLoop
			
forLoop
			
			CMP		R1, #2
			BEQ		endLoop1

			;Divide the number in half...check if its odd...if it is..not a power 
			;of 2
			LSR		R1, R1, #1
			
			MOV		R2, R1
			LSR		R2, R2, #1
			LSL		R2, R2, #1
			
			CMP		R2, R1
			
			BNE		endForLoop
			
			
			B		forLoop
			
			
endLoop1
			MOV		R0, #1
endForLoop
			
