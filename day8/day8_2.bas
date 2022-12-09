10 FL$ = "data.txt": RW% = 99: CL% = 99
15 CLS : IF VDP(10) = 2 THEN HZ = 50 ELSE HZ = 60 : TIME = 0
17 DIM A%(RW%, CL%): C% = 1: R% = 1: TS# = 0 :TX% = 1 : TY% = 1
20 OPEN FL$ FOR INPUT AS #1
25 CLS: PRINT "ROW " R%
30 IF R% = RW% + 1 THEN GOTO 80 ELSE INPUT #1,A$
40 FOR I=1 TO LEN(A$)
50    A%(R%, I) = ASC(MID$(A$, I, 1)) - 48
55    PRINT A%(R%, I);
60 NEXT
65 R% = R% + 1
70 GOTO 25

80 ' Looping through all trees
87 CLS
100 FOR I = 1 TO RW%
110  FOR J = 1 TO CL%
111    CLS: PRINT I"-"J
112    GOSUB 130
115  NEXT
120 NEXT
121 PRINT "TOP Score:"TS#
122 PRINT "Ran in "TIME / HZ "sec."
123 STOP
 
130 ' Determine tree visibility. 
130 ' DIR DR% => 0 Top, 1 Left, 2 Right, 3 Bottom
130 DR% = 0: ST% = -1: IN% = 0: VT% = 0: VL% = 0: VR% = 0: VB% = 0
140 IF DR% = 0 THEN IN% = I: ST% = -1: EN% = 1: GOTO 160
141 IF DR% = 1 THEN IN% = J: ST% = -1: EN% = 1: GOTO 210
142 IF DR% = 2 THEN IN% = J: ST% = 1: EN% = RW%: GOTO 210
143 IF DR% = 3 THEN IN% = I: ST% = 1: EN% = CL%: GOTO 160
144 'Checked all directions => Calculate visibility score and return
145 NS# = VT% * VL% * VR% * VB%
147 IF NS# > TS# THEN TS# = NS# : TX% = I: TY% = J
150 RETURN

160 'Vertical loop
160 FOR Y=IN% TO EN% STEP ST%
162     IF Y <> IN% AND DR% = 0 THEN VT% = VT% + 1
163     IF Y <> IN% AND DR% = 3 THEN VB% = VB% + 1
165     IF Y <> I AND A%(Y, J) >= A%(I, J) THEN DR% = DR% + 1: GOTO 140
180 NEXT
185 DR% = DR% + 1
190 GOTO 140
200 'Horizontal loop 
210 FOR X=IN% TO EN% STEP ST%
212    IF X <> IN% AND DR% = 1 THEN VL% = VL% + 1
213    IF X <> IN% AND DR% = 2 THEN VR% = VR% + 1
215    IF X <> J AND A%(I, X) >= A%(I, J) THEN DR% = DR% + 1: GOTO 140 
230 NEXT
250 DR% = DR% + 1
260 GOTO 140