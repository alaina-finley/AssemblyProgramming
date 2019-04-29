			;Set the initial R1 value to 100...should output 6 
			;In R0
			
			MOV		R1, #100
			MOV		R0, #0
			
			CMP		R1, #0
			BLT		endLoop
			
			CMP		R1, #0
			BEQ		endForLoop
			
forLoop
			
			CMP		R1, #1
			BEQ		endForLoop
			
			LSR		R1, R1, #1
			ADD		R0, R0, #1
			
			B		forLoop
			
endLoop
			
			MOV		R0, #-1
endForLoop
