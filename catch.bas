10 CLEAR1000
20 RESTORE
30 DATA205,127,10,203,36,69,62,1,211,255,16,254,69,62,2,211,255,16,254,37,32,239,201
40 GOTO770
50 CLS:RANDOM
60 FORA=15680TO15743:POKEA,187:NEXT
70 FORA=3TO14:SET(31,A):SET(95,A):NEXT
80 FORZ=1TO24
90 READB,C,D
100 FORA=BTOC:SET(A,D):NEXTA,Z
110 DATA60,66,10,0,4,13,5,8,12,9,12,11,13,16,10,17,19,9,20,22,8,123,127,13,118,122,12,113,117,11,109,112,10,106,108,9,52,59,9,67,74,9
120 DATA45,51,8,75,81,8,41,44,7,82,85,7,38,40,6,86,88,6,35,37,5,89,91,5,32,34,4,92,94,4
130 SET(23,7):SET(24,7):SET(25,6):SET(26,6):SET(104,8):SET(105,8):SET(102,7):SET(103,7):SET(100,6):SET(101,6)
140 SET(27,5):SET(28,5):SET(29,4):SET(30,3):SET(99,5):SET(98,5):SET(97,4):SET(96,3)
150 FORA=16320TO16383:POKEA,146:NEXTA
160 D=RND(47)+15622:Q=RND(10)-5:Q=Q+SGN(Q):X=1:L=1:B=0:C=0:E$=STRING$(3,95):G=0:O=0:P$="#####"
170 FORA=0TO10:H(A)=0:S(A)=0:NEXTA
180 PRINT"SCORE:     0";:PRINT@18,"HIGH: ";:PRINTUSINGP$;HI;:PRINT" ";F$;:PRINT@40,"BOMBS MISSED:     0";
190 POKED,42
200 E=D-14720+Q:PRINT@E,E$;
210 PRINT@601,"GET READY . . .":FORA=1TO500:NEXT
220 PRINT@601,"GET SET . . . .":FORA=1TO400:NEXT
230 PRINT@601,"C A T C H   ! !":FORA=1TO300:NEXT
240 PRINT@601,STRING$(15,32)
250 IFRND(10)<3THENPRINT@157,"HA-HA!";ELSEPRINT@157,"      ";
260 P=PEEK(14400):IFP=32THEN270ELSEIFP=64THEN290ELSE310
270 IFE=896THEN310
280 PRINT@E+2," ";:E=E-1:PRINT@E,E$;:GOTO310
290 IFE=957THEN310
300 PRINT@E," ";:E=E+1:PRINT@E,E$;
310 J=RND(5):ONJGOTO320,350,320,350,380
320 IFD=15623THEN360
330 POKED,32:D=D-1:POKED,42
340 POKE15631,170:POKE15663,170:GOTO380
350 IFD=15670THEN330
360 POKED,32:D=D+1:POKED,42
370 POKE15631,170:POKE15663,170
380 IFG=1THEN420ELSE390
390 K=RND(8):ONKGOTO420,400,410,400,420,420,420,420
400 H(L)=D+128:POKEH(L),79:L=L+1:S(L)=1:GOTO420
410 H(L)=D+128:POKEH(L),64:L=L+1:S(L)=2
420 FORF=XTOL:IFL<10THEN440ELSEIFX=LTHEN430ELSEG=1:GOTO440
430 G=0:X=1:L=1:GOTO250
440 IFSO=1THENIFH(F)>15360THENXX=USR(INT((H(F)-15360)/10)+15+256*3)
450 POKEH(F),32:H(F)=H(F)+64-WR+RND(WB)
460 IFS(F)=2THEN480
470 POKEH(F),79:GOTO490
480 POKEH(F),64
490 IFH(F)>16255THEN500ELSENEXTF:GOTO250
500 U=H(F)-15360:IFINT(U)=EORINT(U)=E+1ORINT(U)=E+2THEN510ELSE580
510 IFS(F)=2THEN540
520 B=B+5:PRINT@7,;:PRINTUSINGP$;B;:X=X+1:S(F)=0:H(F)=0:PRINT@E,E$;:O=O+1
530 IFB/500=INT(B/500)THEN560ELSENEXTF:GOTO250
540 B=B+20:PRINT@7,;:PRINTUSINGP$;B;:X=X+1:S(F)=0:H(F)=0:PRINT@E,E$;:O=O+1
550 IFB/500=INT(B/500)OR(B-5)/500=INT((B-5)/500)OR(B-10)/500=INT((B-10)/500)OR(B-15)=INT((B-15)/500)THEN560ELSENEXTF:GOTO250
560 C=C-1:IFC<0THENC=0
570 PRINT@56,C;:NEXTF:GOTO250
580 C=C+1:PRINT@157,"HA-HA!";
590 PRINT@56,C;:IFC=5THEN620
600 POKEH(F),32:X=X+1:S(F)=0:H(F)=0
610 PRINT@E,E$;:NEXTF:GOTO250
620 POKED,32
630 P=PEEK(D-1):D=D-1:POKED,42:POKED,P:IFD>15616THEN630
640 FORCC=1TO5:PRINT@960,CHR$(23);STRING$(31,191):POKE16382,191:POKE16383,191
650 PRINT@408,"BOOM !!"
660 FORY=896TO0STEP-64:PRINT@Y,STRING$(31,191):NEXTY
670 CLS:FORZ=50TO60:X=USR(Z+256*10):NEXTZ,CC
680 PRINT@90,CHR$(149);"CATCH !!";CHR$(170);
690 PRINT@26,CHR$(156);STRING$(8,140);CHR$(172);:PRINT@154,STRING$(10,131);
700 PRINT@465,"GAME OVER, ";B$;"."
710 PRINTTAB(17)"YOUR SCORE WAS";B;"."
720 IFHI<BTHENHI=B:F$=B$:PRINTTAB(20)"YOU'VE SET A NEW RECORD!"
730 PRINTTAB(17)"YOU CAUGHT";O;"BOMBS."
740 PRINTTAB(17);:INPUT"DO YOU WANT TO PLAY AGAIN";A$
750 A$=LEFT$(A$,1):IFA$="Y"THEN20ELSEIFA$="N"THEN760ELSECLS:GOTO680
760 PRINTTAB(20)"SEE YOU LATER!":END
770 CLS:PRINT@90,CHR$(149);"CATCH !!";CHR$(170);:PRINT@860,"PROGRAM BY: CRAIG COLE":PRINT@924,"11/27/82 - MODIFIED AGAIN 2/10/84"
780 PRINT@26,CHR$(156);STRING$(8,140);CHR$(172);:PRINT@154,STRING$(10,131);
790 PRINT@453,;:INPUT"DO YOU WANT THE INSTRUCTIONS";A$
800 A$=LEFT$(A$,1):IFA$<>"N"ANDA$<>"Y"THEN770
810 PRINT@517,"WHAT IS YOUR NAME";:INPUTB$:IFLEN(B$)>10THENPRINTTAB(15)"PLEASE SHORTEN NAME.":FORA=1TO500:NEXTA:GOTO770
820 PRINT@581,"WHAT WIND RESISTANCE (0E-10H)";:INPUTWR
830 PRINT@645,"SOUND (NO FOR A FASTER GAME)";:INPUTD$
840 D$=LEFT$(D$,1):IFD$="Y"THENSO=1ELSEIFD$="N"THENSO=0ELSEPRINT@673,STRING$(10,32);:GOTO830
850 IFWR=0THENWB=1:WR=1ELSEIFWR<1ORWR>10THEN770ELSEWB=WR/2:WR=WR/4
860 IFA$="N"THEN1000
870 CLS:PRINT@27,"CATCH !!":PRINT@87,"RULES - SCORING"
880 PRINT"OBJECT:    TO CATCH BOMBS THAT MADMAN DROPS, INTO YOUR BUCKET.             IF HE GETS 5 BOMBS IN THE WATER, HE WILL DESTROY                THE BROOKLYN BRIDGE,"
890 PRINT"MOVEMENT:  PRESS (";CHR$(93);") TO MOVE BUCKET LEFT."
900 PRINT"           PRESS (";CHR$(94);") TO MOVE BUCKET RIGHT."
910 PRINT"NOTE:      KEEP BUTTON DOWN FOR RAPID-MOVEMENT."
920 PRINT"NAMES:     BOMBS:   BIG POINT BOMBS:   MADMAN:     BUCKET:"
930 PRINT"SCORING:     0         20 (RARER)"
940 PRINT"SYMBOLS      O             @              *          ";STRING$(3,95)
950 PRINT"NOTE:      THERE IS ALSO WIND UNDERNEATH THE BRIDGE!"
960 PRINT"BONUS:     EVERY 500 POINTS, ONE BOMB IN WATER BECOMES WATER-              LOGGED AND USELESS - BOMB COUNT DROPS 1"
970 PRINT"SOUND!     PLUG AUXILARY JACK INTO AN AUDIO AMPLIFIER."
980 PRINT@960,"PRESS ANYTHING TO START:";
990 IFINKEY$=""THEN990
1000 CLS:PRINT@338,"GOOD LUCK ";B$;"!"
1010 Z$=STRING$(23,0):VV=VARPTR(Z$):LS=PEEK(VV+1):MS=PEEK(VV+2):LL=LS+256*MS:IFLL>32767THENLL=LL-65535
1020 FORA=LLTOLL+22:READXX:POKEA,XX:NEXT:IFPEEK(16396)=201THENPOKE16526,LS:POKE16527,MSELSEDEFUSR=LL
1030 FORA=1TO400:NEXTA:GOTO50