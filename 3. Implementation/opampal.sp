OPAMPAL	BIPOLAR OPAMP!

.MODEL MP PNP IS=727.80E-18 BF=4.284E3 NF=0.9943 VAF=22.13 IKF=29.820E-6
+ISE=437.9E-18 NE=1.205
+BR=25.99E3 NR=0.9743 VAR=18.09 IKR=12.8E-6 ISC=17.09E-15 NC=1.021
+RB=618.0 IRB=0.0 RBM=0.00001 RE=4.083 RC=103.3
+XTB=0.0 EG=1.110 XTI=3.0
+CJE=705.106E-15 VJE=1.108 MJE=0.99
+CJS=3.508E-12 VJS=1.893 MJS=1.980E-22
+CJC=1.467E-12 VJC=0.899 MJC=0.99 XCJC=1.0
+FC=0.5
+TF=50.0E-9 XTF=0.0 VTF=0.0 ITF=0.0 TR=50.00E-9

.MODEL MN NPN IS=53.30E-18 BF=235.9 NF=0.9724 VAF=632.9 IKF=10.86E-3
+ISE=1.567E-18 NE=1.046
+BR=0.3272 NR=0.9916 VAR=2.473 IKR=1.388E-3 ISC=1.06E-15 NC=0.9955
+RB=182.2 IRB=0.0 RBM=0.00001 RE=1.876 RC=207.6
+XTB=0.0 EG=1.110 XTI=3.0
+CJE=1.006E-12 VJE=0.4938 MJE=0.1034
+CJC=786.700E-15 VJC=0.3367 MJC=0.1233 XCJC=1.0
+FC=0.5
+TF=150.0E-12 XTF=0.0 VTF=0.0 ITF=0.0 TR=1.50E-9
+CJS=2.488E-12 VJS=0.2636 MJS=0.1262

.SUBCKT OPAMPAL NON INV OUT VPLUS VMINUS 
*QNAME    C    B    E    S    TRANSISTOR TYPE
* FIRST STAGE
QA    VPLUS   NON         1    VMINUS    MN
QB    VPLUS   INV         2    VMINUS    MN
*
QC       14    14         1    VMINUS MP
QD       14    14         1    VMINUS MP
QE       14    14         1    VMINUS MP
QF        3    14         1    VMINUS MP
*
QG        4    14         2    VMINUS MP
QH       14    14         2    VMINUS MP
QI       14    14         2    VMINUS MP
QJ       14    14         2    VMINUS MP
* CURRENT SOURCES
QK        3     3    VMINUS    VMINUS    MN
QL        4     3    VMINUS    VMINUS    MN
*
QZA      13    13    VMINUS    VMINUS    MN
QZB      14    13    VMINUS    VMINUS    MN
QZC      16    16    VMINUS    VMINUS    MN
QZD      15    16    VMINUS    VMINUS    MN
* SECOND STAGE
QM    VPLUS     4         5    VMINUS    MN
QQ        6     5    VMINUS    VMINUS    MN
QS       15    15     VPLUS    VMINUS MP
QT        9    15     VPLUS    VMINUS MP
QU        9     9         8    VMINUS    MN
QV    VPLUS     9        10    VMINUS    MN
QW        9     7         6    VMINUS    MN
* THIRD STAGE
QNA     VPLUS    10    11    VMINUS    MN
QNB     VPLUS    10    11    VMINUS    MN
QNC     VPLUS    10    11    VMINUS    MN
QND     VPLUS    10    11    VMINUS    MN
QNE     VPLUS    10    11    VMINUS    MN
*
QPA    VMINUS     6    12    VMINUS MP
QPB    VMINUS     6    12    VMINUS MP
QPC    VMINUS     6    12    VMINUS MP
QPD    VMINUS     6    12    VMINUS MP
QPE    VMINUS     6    12    VMINUS MP
QPF    VMINUS     6    12    VMINUS MP
QPG    VMINUS     6    12    VMINUS MP
QPI    VMINUS     6    12    VMINUS MP
QPJ    VMINUS     6    12    VMINUS MP
*
R1        8      7    33K
R2        6      7    50K
R3       10      6    83K
R4       11    OUT    150
R5      OUT     12    150
R6    VPLUS     13    15MEG
R7    VPLUS     16    2.3MEG
*
C1        6      4    4.3PF
*
.ENDS OPAMPAL
** STRING OF OPERATIONAL AMPLIFIERS WITH UNITY GAIN
*

VPOS    800    0    35V
VNEG    900   0    -35V
*
*  4 UNITY GAIN OPAMPS IN SERIES
*
XA     301  302   302    800 900    OPAMPAL
XB     302  303  303   800 900    OPAMPAL
XC     303 304  304   800 900    OPAMPAL
XD     304 305  305   800 900    OPAMPAL

VVIN 301 0 SIN (0 5 2000 1e-05 0 )
.options acct limpts=50000 itl5=50000
.options  reltol=1e-07 abstol=5e-10 chgtol=5e-15 numdgt=4
.print tran v(301) v(302) v(304) v(305)
.TRAN 1e-06 1m
.end
