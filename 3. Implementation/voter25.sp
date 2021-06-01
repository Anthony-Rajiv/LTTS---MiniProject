voter25.sp SPICE FILE
.model nenh nmos
+ level = 2
+   vto = 0.9
+
+
+   pb = 0.8   cgso = 2.1e-10   cgdo = 2.1e-10
+   rsh = 38   cj = 0.000215
+   mj = 0.76   cjsw = 5.4e-10   mjsw = 0.3
+   tox = 4.3e-08   nsub = 1e+16
+   tpg = 1
+   xj = 1.5e-07   ld = 5e-08   uo = 620
+   ucrit = 62000   uexp = 0.125
+   vmax = 51000   neff = 4
+
+   delta = 1.4
.model penh pmos
+ level = 2
+   vto = -0.9
+
+
+   pb = 0.8   cgso = 2.05e-10   cgdo = 2.05e-10
+   rsh = 110   cj = 0.000275
+   mj = 0.535   cjsw = 4e-10   mjsw = 0.34
+   tox = 4.3e-08   nsub = 6.6e+15
+   tpg = -1
+   xj = 5e-08   ld = 5e-08   uo = 240
+   ucrit = 86000   uexp = 0.29
+   vmax = 30000   neff = 2.65
+
+   delta = 1
.subckt load 1 2 3 4 5
+ 6 7
MP1 1 7 4 1 penh l=6e-06 w=3e-06 
MP2 1 6 5 1 penh l=6e-06 w=3e-06 
MP3 1 4 7 1 penh l=2e-06 w=1.6e-05 
MNL1 7 4 2 2 nenh l=2e-06 w=6e-06 
MP4 1 5 6 1 penh l=2e-06 w=1.6e-05 
MNL2 6 5 2 2 nenh l=2e-06 w=6e-06 
MP5 1 3 4 1 penh l=2e-06 w=4e-06 
MP6 1 3 5 1 penh l=2e-06 w=4e-06 
.ends load
.subckt cblk 1 2 3 4 5
+ 6 7 8 9 10 11
xload 1 2 3 12 13
+ 10 11 load
MN#pc 14 3 2 2 nenh l=2e-06 w=8e-06 
MN1 12 7 15 2 nenh l=2e-06 w=3e-06 
MN9 13 6 16 2 nenh l=2e-06 w=3e-06 
MN5 12 5 17 2 nenh l=2e-06 w=3e-06 
MN6 13 4 17 2 nenh l=2e-06 w=3e-06 
MN3 17 6 15 2 nenh l=2e-06 w=5e-06 
MN7 17 7 16 2 nenh l=2e-06 w=5e-06 
MN4 15 9 14 2 nenh l=2e-06 w=6e-06 
MN8 16 8 14 2 nenh l=2e-06 w=6e-06 
.ends cblk
.subckt fblk 1 2 3 4 5
+ 6 7 8 9 10 11
xload 1 2 3 12 13
+ 10 11 load
MN20 14 3 2 2 nenh l=2e-06 w=8e-06 
MN1 12 6 15 2 nenh l=2e-06 w=3e-06 
MN2 12 7 16 2 nenh l=2e-06 w=3e-06 
MN5 12 5 17 2 nenh l=2e-06 w=3e-06 
MN6 13 4 17 2 nenh l=2e-06 w=3e-06 
MN7 17 7 15 2 nenh l=2e-06 w=4e-06 
MN8 15 9 14 2 nenh l=2e-06 w=6e-06 
MN9 12 4 18 2 nenh l=2e-06 w=3e-06 
MN10 13 5 18 2 nenh l=2e-06 w=3e-06 
MN11 18 6 16 2 nenh l=2e-06 w=4e-06 
MN12 16 8 14 2 nenh l=2e-06 w=6e-06 
.ends fblk
.subckt exor2 1 2 3 4 5
+ 6 7 8 9
xload 1 2 3 10 11
+ 8 9 load
MN#pc 12 3 2 2 nenh l=2e-06 w=4.8e-06 
MN1 11 5 13 2 nenh l=2e-06 w=3.2e-06 
MN2 10 4 13 2 nenh l=2e-06 w=3.2e-06 
MN3 10 5 14 2 nenh l=2e-06 w=3.2e-06 
MN4 11 4 14 2 nenh l=2e-06 w=3.2e-06 
MN5 13 6 12 2 nenh l=2e-06 w=4e-06 
MN6 14 7 12 2 nenh l=2e-06 w=4e-06 
.ends exor2
.subckt exor3 1 2 3 4 5
+ 6 7 8 9 10 11
xload 1 2 3 12 13
+ 10 11 load
MN#pc 14 3 2 2 nenh l=2e-06 w=5.6e-06 
MN1 13 5 15 2 nenh l=2e-06 w=3.2e-06 
MN2 12 4 15 2 nenh l=2e-06 w=3.2e-06 
MN3 12 5 16 2 nenh l=2e-06 w=3.2e-06 
MN4 13 4 16 2 nenh l=2e-06 w=3.2e-06 
MN5 15 6 17 2 nenh l=2e-06 w=4e-06 
MN6 16 7 17 2 nenh l=2e-06 w=4e-06 
MN7 16 6 18 2 nenh l=2e-06 w=4e-06 
MN8 15 7 18 2 nenh l=2e-06 w=4e-06 
MN9 17 9 14 2 nenh l=2e-06 w=4.8e-06 
MN10 18 8 14 2 nenh l=2e-06 w=4.8e-06 
.ends exor3
.subckt exor4 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13
xload 1 2 3 14 15
+ 12 13 load
MN#pc 16 3 2 2 nenh l=2e-06 w=6.4e-06 
MN1 15 5 17 2 nenh l=2e-06 w=2.4e-06 
MN2 14 4 17 2 nenh l=2e-06 w=2.4e-06 
MN3 14 5 18 2 nenh l=2e-06 w=2.4e-06 
MN4 15 4 18 2 nenh l=2e-06 w=2.4e-06 
MN5 17 6 19 2 nenh l=2e-06 w=3.2e-06 
MN6 18 7 19 2 nenh l=2e-06 w=3.2e-06 
MN7 18 6 20 2 nenh l=2e-06 w=3.2e-06 
MN8 17 7 20 2 nenh l=2e-06 w=3.2e-06 
MN9 19 8 21 2 nenh l=2e-06 w=4e-06 
MN10 20 9 21 2 nenh l=2e-06 w=4e-06 
MN11 20 8 22 2 nenh l=2e-06 w=4e-06 
MN12 19 9 22 2 nenh l=2e-06 w=4e-06 
MN13 21 10 16 2 nenh l=2e-06 w=5.6e-06 
MN14 22 11 16 2 nenh l=2e-06 w=5.6e-06 
.ends exor4
.subckt exor8 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21
xexor1 1 2 3 4 5
+ 6 7 8 9 10 11
+ 22 23 exor4
xexor2 1 2 3 12 13
+ 14 15 16 17 18 19
+ 33 34 exor4
xexor3 1 2 3 22 23
+ 33 34 20 21 exor2
.ends exor8
.subckt or2 1 2 3 4 5
+ 6 7 8 9
xload 1 2 3 10 11
+ 8 9 load
MN#pc 12 3 2 2 nenh l=2e-06 w=3.2e-06 
MN1 10 5 13 2 nenh l=2e-06 w=3.2e-06 
MN2 13 7 12 2 nenh l=2e-06 w=3.2e-06 
MN3 11 4 12 2 nenh l=2e-06 w=3.2e-06 
MN4 11 5 14 2 nenh l=2e-06 w=3.2e-06 
MN5 14 6 12 2 nenh l=2e-06 w=3.2e-06 
.ends or2
.subckt or3 1 2 3 4 5
+ 6 7 8 9 10 11
xload 1 2 3 12 13
+ 10 11 load
MN#pc 14 3 2 2 nenh l=2e-06 w=4.8e-06 
MN1 12 5 15 2 nenh l=2e-06 w=3.2e-06 
MN2 15 7 16 2 nenh l=2e-06 w=3.2e-06 
MN3 16 9 14 2 nenh l=2e-06 w=3.2e-06 
MN5 13 4 14 2 nenh l=2e-06 w=3.2e-06 
MN6 13 5 17 2 nenh l=2e-06 w=3.2e-06 
MN7 17 6 14 2 nenh l=2e-06 w=3.2e-06 
MN8 17 7 18 2 nenh l=2e-06 w=3.2e-06 
MN9 18 8 14 2 nenh l=2e-06 w=3.2e-06 
.ends or3
.subckt or4 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13
xload 1 2 3 14 15
+ 12 13 load
MN#pc 16 3 2 2 nenh l=2e-06 w=6.4e-06 
MN1 14 5 17 2 nenh l=2e-06 w=3.2e-06 
MN2 17 7 18 2 nenh l=2e-06 w=3.2e-06 
MN3 18 9 19 2 nenh l=2e-06 w=3.2e-06 
MN4 19 11 16 2 nenh l=2e-06 w=3.2e-06 
MN5 15 4 16 2 nenh l=2e-06 w=3.2e-06 
MN6 15 5 20 2 nenh l=2e-06 w=3.2e-06 
MN7 20 6 16 2 nenh l=2e-06 w=3.2e-06 
MN8 20 7 21 2 nenh l=2e-06 w=3.2e-06 
MN9 21 8 16 2 nenh l=2e-06 w=3.2e-06 
MN10 21 9 22 2 nenh l=2e-06 w=3.2e-06 
MN11 22 10 16 2 nenh l=2e-06 w=3.2e-06 
.ends or4
.subckt or8 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
+ 18 19 20 21
xor1 1 2 3 4 5
+ 6 7 8 9 10 11
+ 22 23 or4
xor2 1 2 3 12 13
+ 14 15 16 17 18 19
+ 33 34 or4
xor3 1 2 3 22 23
+ 33 34 20 21 or2
.ends or8
.subckt bit#voter 1 2 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17
xcblk0 1 2 3 4 5
+ 6 7 8 9 10 11 cblk
xfblk0#a 1 2 3 4 5
+ 6 7 8 9 12 13 fblk
xfblk0#b 1 2 3 6 7
+ 8 9 4 5 14 15 fblk
xfblk0#c 1 2 3 8 9
+ 4 5 6 7 16 17 fblk
.ends bit#voter
xbit#voter0 1 0 3 4 5
+ 6 7 8 9 10 11
+ 12 13 14 15 16 17 bit#voter
Vphi1 3 0 pwl (0 0 2e-08 0 2.1e-08 5 4e-08 5 
+ 4.1e-08 0 6e-08 0 6.1e-08 5 8e-08 5 
+ 8.1e-08 0 1e-07 0 1.01e-07 5 1.2e-07 5 
+ 1.21e-07 0 1.4e-07 0 1.41e-07 5 1.6e-07 5 
+ 1.61e-07 0 1.8e-07 0 1.81e-07 5 2e-07 5 
+ 2.01e-07 0 2.2e-07 0 2.21e-07 5 2.4e-07 5 
+ 2.41e-07 0 2.6e-07 0 2.61e-07 5 2.8e-07 5 
+ 2.81e-07 0 3e-07 0 3.01e-07 5 3.2e-07 5 
+ 3.21e-07 0 3.4e-07 0 3.41e-07 5 3.6e-07 5 
+ 3.61e-07 0 3.8e-07 0 3.81e-07 5 4e-07 5 
+ 4.01e-07 0 4.2e-07 0 4.21e-07 5 4.4e-07 5 
+ 4.41e-07 0 4.6e-07 0 4.61e-07 5 4.8e-07 5 
+ 4.81e-07 0 5e-07 0 5.01e-07 5 5.2e-07 5 
+ 5.21e-07 0 5.4e-07 0 5.41e-07 5 5.6e-07 5 
+ 5.61e-07 0 5.8e-07 0 5.81e-07 5 6e-07 5 
+ 6.01e-07 0 6.2e-07 0 6.21e-07 5 6.4e-07 5 
+ 6.41e-07 0 6.6e-07 0 6.61e-07 5 6.8e-07 5 
+ 6.81e-07 0 7e-07 0 7.01e-07 5 7.2e-07 5 
+ 7.21e-07 0 7.4e-07 0 7.41e-07 5 7.6e-07 5 
+ 7.61e-07 0 7.8e-07 0 7.81e-07 5 8e-07 5 
+ 8.01e-07 0 8.2e-07 0 8.21e-07 5 8.4e-07 5 
+ 8.41e-07 0 8.6e-07 0 8.61e-07 5 8.8e-07 5 
+ 8.81e-07 0 9e-07 0 9.01e-07 5 9.2e-07 5 
+ 9.21e-07 0 9.4e-07 0 9.41e-07 5 9.6e-07 5 
+ 9.61e-07 0 9.8e-07 0 9.81e-07 5 1e-06 5 
+ 1.001e-06 0 )
Va0 4 0 pwl (0 0 4e-08 0 4.1e-08 5 8e-08 5 
+ 8.1e-08 0 1.2e-07 0 1.21e-07 5 1.6e-07 5 
+ 1.61e-07 0 2e-07 0 2.01e-07 5 2.4e-07 5 
+ 2.41e-07 0 2.8e-07 0 2.81e-07 5 3.6e-07 5 
+ 3.61e-07 0 4e-07 0 4.01e-07 5 4.4e-07 5 
+ 4.41e-07 0 5.6e-07 0 5.61e-07 5 6.4e-07 5 
+ 6.41e-07 0 7.2e-07 0 7.21e-07 5 8e-07 5 
+ 8.01e-07 0 8.4e-07 0 8.41e-07 5 8.8e-07 5 
+ 8.81e-07 0 9.2e-07 0 9.21e-07 5 9.6e-07 5 
+ 9.61e-07 0 1e-06 0 1.001e-06 5 1.04e-06 5 
+ )
Va0#bar 5 0 pwl (0 5 4e-08 5 4.1e-08 0 8e-08 0 
+ 8.1e-08 5 1.2e-07 5 1.21e-07 0 1.6e-07 0 
+ 1.61e-07 5 2e-07 5 2.01e-07 0 2.4e-07 0 
+ 2.41e-07 5 2.8e-07 5 2.81e-07 0 3.2e-07 0 
+ 3.21e-07 5 3.6e-07 5 3.61e-07 0 4e-07 0 
+ 4.01e-07 5 4.4e-07 5 4.41e-07 0 4.8e-07 0 
+ 4.81e-07 5 5.6e-07 5 5.61e-07 0 6.4e-07 0 
+ 6.41e-07 5 7.2e-07 5 7.21e-07 0 8e-07 0 
+ 8.01e-07 5 8.4e-07 5 8.41e-07 0 8.8e-07 0 
+ 8.81e-07 5 9.2e-07 5 9.21e-07 0 9.6e-07 0 
+ 9.61e-07 5 1e-06 5 1.001e-06 0 1.04e-06 0 
+ )
Vb0 6 0 pwl (0 0 8e-08 0 8.1e-08 5 1.6e-07 5 
+ 1.61e-07 0 2.4e-07 0 2.41e-07 5 3.2e-07 5 
+ 3.21e-07 0 4e-07 0 4.01e-07 5 4.8e-07 5 
+ 4.81e-07 0 5.2e-07 0 5.21e-07 5 5.6e-07 5 
+ 5.61e-07 0 6e-07 0 6.01e-07 5 6.4e-07 5 
+ 6.41e-07 0 7.2e-07 0 7.21e-07 5 8e-07 5 
+ 8.01e-07 0 8.8e-07 0 8.81e-07 5 9.6e-07 5 
+ 9.61e-07 0 1.04e-06 0 )
Vb0#bar 7 0 pwl (0 5 8e-08 5 8.1e-08 0 1.6e-07 0 
+ 1.61e-07 5 2.4e-07 5 2.41e-07 0 3.2e-07 0 
+ 3.21e-07 5 4e-07 5 4.01e-07 0 5.2e-07 0 
+ 5.21e-07 5 5.6e-07 5 5.61e-07 0 6e-07 0 
+ 6.01e-07 5 7.2e-07 5 7.21e-07 0 8e-07 0 
+ 8.01e-07 5 8.8e-07 5 8.81e-07 0 9.6e-07 0 
+ 9.61e-07 5 1.04e-06 5 )
Vc0 8 0 pwl (0 0 1.6e-07 0 1.61e-07 5 3.2e-07 5 
+ 3.21e-07 0 4e-07 0 4.01e-07 5 4.8e-07 5 
+ 4.81e-07 0 5.6e-07 0 5.61e-07 5 6.4e-07 5 
+ 6.41e-07 0 6.8e-07 0 6.81e-07 5 7.2e-07 5 
+ 7.21e-07 0 7.6e-07 0 7.61e-07 5 8e-07 5 
+ 8.01e-07 0 9.6e-07 0 9.61e-07 5 1.12e-06 5 
+ )
Vc0#bar 9 0 pwl (0 5 1.6e-07 5 1.61e-07 0 3.2e-07 0 
+ 3.21e-07 5 4e-07 5 4.01e-07 0 4.8e-07 0 
+ 4.81e-07 5 5.6e-07 5 5.61e-07 0 6.8e-07 0 
+ 6.81e-07 5 7.2e-07 5 7.21e-07 0 7.6e-07 0 
+ 7.61e-07 5 8e-07 5 9.6e-07 5 9.61e-07 0 
+ 1.12e-06 0 )
VVdd 1 0 5.5 
.temp 125 
.print TRAN v(3) v(4) v(6) v(8) v(5) v(7) 
+v(9) v(10) v(11) v(12) v(13) v(14) 
+v(15) v(16) v(17) 
.options limpts=50000 itl5=50000
.TRAN 1e-08 1e-06
.end
