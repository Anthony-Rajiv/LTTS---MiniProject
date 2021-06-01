* BIAS circuit	 Melville-Trajkovic-Fang paper
*
.MODEL pbjt PNP IS=727.80E-18 BF=4.284E3 NF=0.9943 VAF=22.13 IKF=29.820E-6
+ ISE=437.9E-18 NE=1.205
+ BR=25.99E3 NR=0.9743 VAR=18.09 IKR=12.8E-6 ISC=17.09E-15 NC=1.021
+ RB=618.0 IRB=0.00001 RBM=0.00001 RE=4.083 RC=103.3
+ XTB=0.0 EG=1.110 XTI=3.0
+ CJE=705.106E-15 VJE=1.108 MJE=0.99
+ CJC=1.467E-12 VJC=0.899 MJC=0.99 XCJC=1.0
+ CJS=3.508E-12 VJS=1.893 MJS=1.980E-22
+ FC=0.5
+ TF=50.0E-9 XTF=0.0 VTF=0.0 ITF=0.0 TR=50.00E-9

.MODEL nbjt NPN IS=53.30E-18 BF=235.9 NF=0.9724 VAF=632.9 IKF=10.86E-3
+ ISE=1.567E-18 NE=1.046
+ BR=0.3272 NR=0.9916 VAR=2.473 IKR=1.388E-3 ISC=1.06E-15 NC=0.9955
+ RB=182.2 IRB=0.00001 RBM=0.00001 RE=1.876 RC=207.6
+ XTB=0.0 EG=1.110 XTI=3.0
+ CJE=1.006E-12 VJE=0.4938 MJE=0.1034
+ CJC=786.700E-15 VJC=0.3367 MJC=0.1233 XCJC=1.0
+ CJS=2.488E-12 VJS=0.2636 MJS=0.1262
+ FC=0.5
+ TF=150.0E-12 XTF=0.0 VTF=0.0 ITF=0.0 TR=1.50E-9

* NODES
* 20 vee
* 21 vcc
* 22 vcm
* 23 vbias
* 13 out

q5b 5 8 7 pbjt area=1
q5a 3 22 7 pbjt area=1
q6b 5 5 20 nbjt area=1
q2 12 5 20 nbjt area=3.0
q8 12 0 3 pbjt area=11.25
q1 3 13 2 pbjt area=2.0
q4c 7 1 21 pbjt area=1
q3c 2 1 21 pbjt area=1
q2c 1 1 21 pbjt area=2.0
q1c 1 23 20 nbjt area=1
q4 13 1 21 pbjt area=25.0
q3 13 12 20 nbjt area=50.0
q1d 23 23 20 nbjt area=1
rva4 21 13 8e6
rva2 12 20 250e6
rfb 13 8 20e3
rb 0 23 107.5e3
r3c 21 2 250.0e3
vcc 21 0 5.0
vee 20 0 -5.0
vcm 22 0 2.5
v8  8 0 0.0

.print dc v(8) v(13)
.dc v8 0.0 4.0 .001 
.option acct limpts=100000
.end
