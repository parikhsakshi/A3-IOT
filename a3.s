.global _start
_start:
    MOV R0, #22
    MOV R1, #42
    MOV R5, #15

    CMP R0, R1   // Comparing the the values of two different variables of R0 to the the value in R1, however without the result
    BGT greater  // Labelling as 'greater', in the condition when R0 > R1
    BLT lesser   // Labelling as 'lesser', in the condition when R0 < R1
    BEQ equal    // Labelling as 'equal', in the condiion when R0 == R1

    greater;
        LSL R5, #2 // Logical shift left in the value of R5 by multiplying with 4

        //Method of terminating the program
        MOV R0, R5 // Showing up that the program executed successfully
        MOV R7, #1
        SWI 0

    lesser;
        LSR R5, #1 // Logical shift right in the value of R5 by dividing with 2

        //Method of terminating the program
        MOV R0, R5 // Showing up that the program executed successfully
        MOV R7, #1
        SWI 0

    equal;
        ROR R5, #1 // Applying Right rotation on R5

        //Method of terminating the program
        MOV R0, R5 // Showing up that the program excuted successfully 
        MOV R7, #1
        SWI 0