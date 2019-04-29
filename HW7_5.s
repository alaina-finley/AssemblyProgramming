			;		inital value = R1
			;		largest value of n = R0
			
			MOV		R1, #4096
			MOV		R0, #1
			
			
			CMP		R1, #1
			BEQ		outputBranch
			
forLoop
			CMP		R1, #1
			BEQ		outputBranch
			
			;if		R1 is greater than R0...make R0 equal to R1
			CMP		R1, R0
			BGT		switch
			
			;Shift	to the right...then shift to the left...then compare to see if equa
			;if		they are, then it is even, else it is odd
			
			MOV		R2, R1
			LSR		R2, R2, #1
			LSL		R2, R2, #1
			CMP		R2, R1
			BEQ		isEven
			
			;It		is odd...so we multiply by 3 (shift bits over 1 to mutiply by 2 then add
			;another	R1 to itself....then add 1
			MOV		R3, R1
			LSL		R1, R1, #1
			ADD		R1, R1, R3
			ADD		R1, R1, #1
			B		forLoop
			
isEven
			;It		is even, so shift bits by 1 to divide by 2
			LSR		R1, R1, #1
			B		forLoop
			
switch
			MOV		R0, R1
			B		forLoop
			
			
outputBranch
