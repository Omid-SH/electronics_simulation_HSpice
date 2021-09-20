
.option method=GEAR
.option accurate=1


.model NP npn Is=7.049f Bf=150 Vaf=200     *NPN
.model PN pnp Is=336.7f Bf=80 Vaf=150	*PNP


*********************************Netlist**************************
* Sources
Vcc     	1		0  		10
VEE		0		6  		10
Vdif1 		9		22		sin(0	-1u	  1k	0	0)
Vdif2 		10		23		sin(0	1u	  1k	0	0)
Vcom		23		0		sin(0	0	  1k	0	0)
*Vcmr		23		0		-8
E1		24		0		VCCS	19		0	1
E2		22		23		VCCS	21		0	150
		
* Resistors
R1		1  		2  		1.2k
R2		3		4		16.572k
R3		5		6		1k
R4		1       	13  		18k
R5		13      	6  		180k
R6		7		6		1k
R7		18		6		1k
R8		1  		20  		1k
R9		1  		17  		1.2k
R10		21		24		10k

*Capacitors
C1		21		0		10

* Transistors
Q1		3		3		2		PN
Q2		4		4		5		NP
Q3		8		4		7		NP
Q4		19		4		18		NP
Q5		19		16		20		PN
Q6		16		3		17		PN
Q7		6		15		16		PN
Q8		14		14		1		PN
Q9		15		14		1		PN
Q10		14		13		11		NP
Q11		15		13		12		NP
Q12		11		9		8		NP
Q13		12		10		8		NP

******************************************************************
.op 
.tran 1u	15m	start=10m
.end
