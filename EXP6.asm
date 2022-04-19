//Write a program to transfer letter "A" serially at 4800 baud,
//continuously. 

MOV TMOD, #20H
MOV TH1, #-6
MOV SCON,#50H
SETB TR1
AGAIN:MOV SBUF,#"A"
HERE:JNB TI, HERE
CLR TI
SJMP AGAIN
END