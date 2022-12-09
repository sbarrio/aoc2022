10 FL$ = "data.txt": RW% = 99: CL% = 99
15 CLS : IF VDP(10) = 2 THEN HZ = 50 ELSE HZ = 60 : TIME = 0
17 DIM A%(RW%, CL%): C% = 1: R% = 1: VT% = 0
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
95 ' (Trees on the edge are always visible, so we count them directly and skip looping through them)
95 VT% = RW% * 2 + (CL% - 2) * 2 
100 FOR I = 2 TO RW% - 1
110  FOR J = 2 TO CL% - 1
111    'CLS: PRINT "Checking: " I " " J " " A%(I, J)
112    GOSUB 130
115  NEXT
120 NEXT
121 PRINT "Visible trees: " VT%
122 PRINT "Ran in "TIME / HZ "sec."
123 STOP
 
130 ' Determine if tree is visible. 
130 ' DIR DR% => 0 Top, 1 Left, 2 Right, 3 Bottom
130 DR% = 0: ST% = -1: IN% = 0
140 IF DR% = 0 THEN IN% = J: ST% = -1: EN% = 1: GOTO 160
141 IF DR% = 1 THEN IN% = I: ST% = -1: EN% = 1: GOTO 210
142 IF DR% = 2 THEN IN% = I: ST% = 1: EN% = RW%: GOTO 210
143 IF DR% = 3 THEN IN% = J: ST% = 1: EN% = CL%: GOTO 160
144 'Checked all directions => Tree is not visible
144 RETURN
160 'Horizontal loop
160 FOR Y=IN% TO EN% STEP ST%
165    'PRINT "FROM "Y" TO "EN%" INC: "ST% 
170    IF Y <> J AND A%(I, Y) >= A%(I, J) THEN DR% = DR% + 1: GOTO 140
180 NEXT
190 GOTO 250
200 'Vertical loop 
210 FOR X=IN% TO EN% STEP ST%
215    'PRINT "FROM "X" TO "EN%" INC: "ST% 
220    IF X <> I AND A%(X, J) >= A%(I, J) THEN DR% = DR% + 1: GOTO 140
230 NEXT
250 'Made it to the border => Tree is visible
260 VT% = VT% + 1
265 PRINT "" I " " J "VAL: " A%(I, J) " is visible"
270 RETURN