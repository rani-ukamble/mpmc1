ORG 0000H
CLR P2.3
MOV TMOD,#10H
AGAIN:MOV TL1,#00H
      MOV TH1, #0DCH
	  SETB TR1
BACK:JNB TF1, BACK
      CLR TR1
	  CPL P2.3
	  CLR TF1
	  SJMP AGAIN
	  END
