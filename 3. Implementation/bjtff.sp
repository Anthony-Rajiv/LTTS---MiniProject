*mc1a flip-flop/vcc=5v\r nom\11-20-81
***   resistors
rc5 1 3 435 tc=0.00085
rc6 1 7 435 tc=0.00085
re8 11 0 1.4k tc=0.00085
rc13 1 12 435 tc=0.00085
rc14 1 14 435 tc=0.00085
re12 17 0 1.4k tc=0.00085
rc19 1 29 435 tc=0.00085
rc20 1 22 435 tc=0.00085
re24 33 0 1.4k tc=0.00085
rc26 1 2 830 tc=0.00085
rc27 1 5 830 tc=0.00085
re29 29 0 4k tc=0.00085
re30 30 0 1.4k tc=0.00085
re31 31 0 1.4k tc=0.00085
rc41 1 101 435 tc=0.00085
re42 105 0 1.4k tc=0.00085
re44 106 0 1.4k tc=0.00085
re46 107 0 1.4k tc=0.00085
rc51 201 202 484 tc=0.00085
re52 203 0 121 tc=0.00085
rc53 1 208 79.5 tc=0.00085
re53 201 204 653 tc=0.00085
r57 204 0 1088 tc=0.00085
r52 1 207 2350 tc=0.00085
rc54 207 206 757 tc=0.00085
rb54 204 205 79 tc=0.00085
***   capacitors
c1 206 204 15pf
***   transistors
q1 3 2 4 tr6004
q2 7 5 4 tr6004
q3 4 9 10 tr6004
q4 4 8 10 tr6004
q5 3 5 6 tr6004
q6 7 2 6 tr6004
q7 6 102 10 tr6004
q8 10 201 11 tr6004
q9 12 7 13 tr6004
q10 14 3 13 tr6004
q11 13 15 16 tr6004
q12 16 201 17 tr6004
q13 12 14 19 tr6004
q14 14 12 19 tr6004
q15 19 18 16 tr6004
q16 20 14 21 tr6004
q17 22 12 21 tr6004
q18 21 18 23 tr6004
q19 20 22 25 tr6004
q20 22 20 25 tr6004
q21 25 15 23 tr6004
q22 23 24 32 tr6004
q23 20 103 32 tr6004
q24 32 201 33 tr6004
q25 1 22 26 tr6004
q26 2 26 28 tr6004
q27 5 27 28 tr6004
q28 1 20 27 tr6004
q29 26 201 29 tr6004
q30 28 201 30 tr6004
q31 27 201 31 tr6004
q41 101 1 104 tr6004
q42 104 201 105 tr6004
q43 1 101 102 tr6004
q44 102 201 106 tr6004
q45 1 102 103 tr6004
q46 103 201 107 tr6004
q51 202 202 0 tr6004
q52 204 202 203 tr6004
q53 208 207 201 tr6004
q54 206 205 0 tr6004
***   sources
vcc 1 0 5.0v
vcp 8 0 pulse(4.2v 3.7v 1ns 1ns 1ns 45ns 100ns)
vcin 9 0 pulse(4.2v 3.7v 1ns 1ns 1ns 45ns 100ns)
vclk 18 0 pulse(3.7v 4.2v 2ns 2ns 2ns 3ns 10ns)
vnclk 15 0 pulse(4.2v 3.7v 2ns 2ns 2ns 3ns 10ns)
vclr 24 0 pulse(2.9v 3.4v 0.5ns 0.5ns 0.5ns 0.5ns 100ns)
***   models
.model tr6004 npn(bf=80 br=0.5 is=5.0e-17 rb=165 rc=34 re=10 va=51.3v 
+ik=2.0e-3 ne=3.5 tf=0.064ns tr=12ns ccs=0.65pf cje=0.1pf pe=0.99v 
+me=0.50 cjc=0.13pf pc=1.0 mc=0.47 eg=1.11 pt=5.0)
***   control cards
*.options node list gmin=1e-20
.options acct abstol=1.0e-12
.op
.tran 0.5ns 70ns
.print tran v(8) v(18) v(3) v(12) v(20) v(2)
.end
