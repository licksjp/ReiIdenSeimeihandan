100 cls 3
110 'コメント
120 '初期設定項目
130 '2021.06.01:霊遺伝姓名判断単体版作成開始
140 '霊遺伝姓名判断Light_Ver202105.改.basより
150 '霊遺伝姓名藩の部分だけのソースを移殖
160 'バージョン情報
170 'Ver:2021_06_01_09_07
180 'Ver:2021_06_01_09_06
190 'Ver:2021_06_01_08_31
200 'Ver:2021_06_01_08_29
210 'Ver:2021_06_01_08_25
220 'Ver:2021_06_01_08_23
230 'Ver:2021_06_01_08_19
240 'Ver:2021_06_01_06.12
250 'メモリー定義
260 'メモリー確保 文字領域,数値データー
270 clear 4*4000,4*1000000
280 'Version 情報
290 Version$="Ver:2021_06_01_09_07"
300 'ファイル読み込み領域　ここから
310 dim buf_lines$(27),buffer_Kiso(4),buffer_Kiso2(4)
320 '定数文字1画〜27画
330 'ファイルから各画数を読み込んで代入する。
340 '1行目だけ読み込む
350 open "config/Kanji_data/Mojidata_ReiIden20200911.csv" for input as #2
360 for i=0 to 26
370 input #2,buf_lines$(i)
380 next i
390 close #2
400 Moji_1=val(buf_lines$(0)):Moji_2=val(buf_lines$(1)):Moji_3=val(buf_lines$(2)):Moji_4=val(buf_lines$(3)):Moji_5=val(buf_lines$(4)):Moji_6=val(buf_lines$(5)):Moji_7=val(buf_lines$(6)):Moji_8=val(buf_lines$(7)):Moji_9=val(buf_lines$(8)):Moji_10=val(buf_lines$(9)):Moji_11=val(buf_lines$(10)):Moji_12=val(buf_lines$(11)):Moji_13=val(buf_lines$(12)):Moji_14=val(buf_lines$(13)):Moji_15=val(buf_lines$(14)):Moji_16=val(buf_lines$(15)):Moji_17=val(buf_lines$(16)):Moji_18=val(buf_lines$(17)):Moji_19=val(buf_lines$(18)):Moji_20=val(buf_lines$(19)):Moji_21=val(buf_lines$(20)):Moji_22=val(buf_lines$(21)):Moji_23=val(buf_lines$(22)):Moji_24=val(buf_lines$(23)):Moji_25=val(buf_lines$(24)):Moji_26=val(buf_lines$(25)):Moji_27=val(buf_lines$(26))
410 Moji_total=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
420 '1画
430 Moji_Min_1 = 28:Moji_Max_1 = Moji_1 + 27+1:
440 '2画
450 Moji_Min_2 = (Moji_1) + 27+2:Moji_Max_2 = Moji_1 + Moji_2+27+2
460 '3画
470 Moji_Min_3 =(Moji_1) + (Moji_2) + 27+3:Moji_Max_3 =Moji_1 + Moji_2 + Moji_3+27+3
480 '4画
490 Moji_Min_4 = (Moji_3) + Moji_2 + Moji_1 + 27+4:Moji_Max_4=Moji_1+Moji_2 + Moji_3 + Moji_4 + 27+4
500 '5画
510 Moji_Min_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4) + 27+5:Moji_Max_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5)+27+5
520 '6画
530 Moji_Min_6 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5)+27+6:Moji_Max_6=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6)+27+6
540 '7画
550 Moji_Min_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6) + 27+7:Moji_Max_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7) + 27+7
560 '8画
570 Moji_Min_8 = Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+27+8:Moji_Max_8=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8)+27+8
580 '9画
590 Moji_Min_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + 27+9:Moji_Max_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + 27+9
600 '10画
610 Moji_Min_10 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9)+27+10:Moji_Max_10=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10)+27+10
620 '11画
630 Moji_Min_11 = (Moji_1+Moji_2+Moji_3+Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10)+27+11:Moji_Max_11=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11)+27+11
640 '12画
650 Moji_Min_12 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11)+27+12:Moji_Max_12=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+27+12
660 '13画
670 Moji_Min_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12)+13+27:Moji_Max_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+27+13
680 '14画
690 Moji_Min_14 =(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+14+27:Moji_Max_14=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+14+27
700 '15画
710 Moji_Min_15 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+15+27:Moji_Max_15=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6+ Moji_7 + Moji_8 + Moji_9+ Moji_10 + Moji_11 + Moji_12+Moji_13+Moji_14+Moji_15)+15+27
720 '16画
730 Moji_Min_16 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15)+16+27:Moji_Max_16=Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+16+27
740 '17画
750 Moji_Min_17 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16) + 17+27:Moji_Max_17 = Moji_1 + Moji_2 + Moji_3 + Moji_4+Moji_5 + Moji_6 + Moji_7+Moji_8 + Moji_9 + Moji_10 + Moji_11 + Moji_12 + Moji_13 + Moji_14 + Moji_15+Moji_16+Moji_17+17+27
760 '18画
770 Moji_Min_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17)+18+27:Moji_Max_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+18+27
780 '19画
790 Moji_Min_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+19+27:Moji_Max_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+19+27
800 '20画
810 Moji_Min_20=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+20+27:Moji_Max_20=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+20+27
820 '21画
830 Moji_Min_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20)+21+27:Moji_Max_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+21+27
840 '22画
850 Moji_Min_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+22+27:Moji_Max_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22)+22+27
860 '23画
870 Moji_Min_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+23+27):Moji_Max_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+23+27
880 '24画
890 Moji_Min_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+24+27:Moji_Max_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+24+27
900 '25画
910 Moji_Min_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+25+27:Moji_Max_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+25+27
920 '26画
930 Moji_Min_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+26+27:Moji_Max_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+26+27
940 '27画
950 Moji_Min_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+27+27:Moji_Max_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27)+27+27
960 dim Moji_data$(Moji_total+27+27)
970 'dim bufmoji$(10),Input_data$(10)
980 '１画の文字   サイズ:21+2(漢字)
990 dim buf_char_hiragana1$(Moji_1)
1000 '2画の文字  サイズ 58+14=72(漢字)
1010 dim buf_char_hiragana2$(Moji_2)
1020 '3画の文字 サイズ:48+29=77(漢字)
1030 dim buf_char_hiragana3$(Moji_3)
1040 '4画の文字 サイズ:29+51=80(漢字)
1050 dim buf_char_hiragana4$(Moji_4)
1060 '５画の文字  サイズ:18+59=77(漢字)
1070 dim buf_char_hiragana5$(Moji_5)
1080 '6画の文字  サイズ:79(漢字)
1090 dim buf_char_hiragana6$(Moji_6)
1100 '7画の文字  サイズ:88(漢字)
1110 dim buf_char_hiragana7$(Moji_7)
1120 '8画の文字
1130 dim buf_char_hiragana8$(Moji_8)
1140 '9画の文字
1150 dim buf_char_hiragana9$(Moji_9)
1160 '10画の文字 98文字
1170 dim buf_char_hiragana10$(Moji_10)
1180 '11画の文字
1190 dim buf_char_hiragana11$(Moji_11)
1200 '12画の文字
1210 dim buf_char_hiragana12$(Moji_12)
1220 '13画の文字 81文字
1230 dim buf_char_hiragana13$(Moji_13)
1240 '14画の文字
1250 dim buf_char_hiragana14$(Moji_14)
1260 '15画の文字
1270 dim buf_char_hiragana15$(Moji_15)
1280 '16画の文字
1290 dim buf_char_hiragana16$(Moji_16)
1300 '17画の文字
1310 dim buf_char_hiragana17$(Moji_17)
1320 '18画の文字
1330 dim buf_char_hiragana18$(Moji_18)
1340 '19画の文字
1350 dim buf_char_hiragana19$(Moji_19)
1360 '20画の文字
1370 dim buf_char_hiragana20$(Moji_20)
1380 '21画の文字
1390 dim buf_char_hiragana21$(Moji_21)
1400 '22画の文字
1410 dim buf_char_hiragana22$(Moji_22)
1420 '23画の文字
1430 dim buf_char_hiragana23$(Moji_23)
1440 '24画の文字
1450 dim buf_char_hiragana24$(Moji_24)
1460 '25
1470 dim buf_char_hiragana25$(Moji_25)
1480 dim buf_char_hiragana26$(Moji_26)
1490 dim buf_char_hiragana27$(Moji_27)
1500 '結果表示1　吉凶データー 81パターン
1510 'ファイル読み込み2
1520 'データー読み込み　ここから
1530 'データー読み込み　1.ひらがな
1540 '1画の文字   6文字 23文字
1550 open "config/Kanji_data/Mojidata_ReiIden20200911.csv" for input as #1
1560 '全ファイルを読み込む
1570 for i = 0 to 25+Moji_total+27
1580 input #1,Moji_data$(i)
1590 next i
1600 close #1
1610 '全ファイル読み込み　ここまで
1620 for i = 27+1 to (Moji_1)+27+1
1630 '1画の文字にデーターをコピーする
1640 buf_char_hiragana1$(i-Moji_Min_1) = Moji_data$(i)
1650 next i
1660 '2画の文字    98文字
1670 for i = Moji_Min_2  to (Moji_Max_2)
1680 buf_char_hiragana2$(i-Moji_Min_2)=Moji_data$(i)
1690 next i
1700 '3文字の文字    77文字
1710 for i = Moji_Min_3  to (Moji_Max_3)
1720 buf_char_hiragana3$(i-(Moji_Min_3)) = Moji_data$(i)
1730 next i
1740 '4文字の文字   80文字
1750 for i = (Moji_Min_4)  to (Moji_Max_4)
1760 buf_char_hiragana4$(i-Moji_Min_4)=Moji_data$(i)
1770 next i
1780 '5文字の文字 77文字
1790 for i = Moji_Min_5 to (Moji_Max_5)
1800 buf_char_hiragana5$(i - Moji_Min_5)=Moji_data$(i)
1810 next i
1820 '6文字の文字 79文字
1830 for i = Moji_Min_6  to Moji_Max_6
1840 buf_char_hiragana6$(i-Moji_Min_6) = Moji_data$(i)
1850 next i
1860 '7文字の文字 170文字
1870 for i = Moji_Min_7 to Moji_Max_7
1880 buf_char_hiragana7$(i-Moji_Min_7)=  Moji_data$(i)
1890 next i
1900 '8画の文字 120文字
1910 for i = Moji_Min_8 to Moji_Max_8
1920 buf_char_hiragana8$(i - Moji_Min_8)=Moji_data$(i)
1930 next i
1940 '9画の文字  103文字
1950 for i = Moji_Min_9 to Moji_Max_9
1960 buf_char_hiragana9$(i - Moji_Min_9)=Moji_data$(i)
1970 next i
1980 '10画の文字 285文字
1990 for i = Moji_Min_10 to (Moji_Max_10)
2000 buf_char_hiragana10$(i-Moji_Min_10)=Moji_data$(i)
2010 next i
2020 '11画の文字
2030 for i = Moji_Min_11 to Moji_Max_11
2040 buf_char_hiragana11$(i-Moji_Min_11) = Moji_data$(i)
2050 next i
2060 '12画の文字
2070 for i = Moji_Min_12 to Moji_Max_12
2080 buf_char_hiragana12$(i-Moji_Min_12)=Moji_data$(i)
2090 next i
2100 '13画の文字 81
2110 for i = Moji_Min_13 to Moji_Max_13
2120 buf_char_hiragana13$(i-Moji_Min_13) = Moji_data$(i)
2130 next i
2140 '14画の文字 66
2150 for i = Moji_Min_14 to Moji_Max_14
2160 buf_char_hiragana14$(i-Moji_Min_14)=Moji_data$(i)
2170 next i
2180 '15画の文字 59
2190 'for i = Moji_Min_15 to (Moji_Max_15) - 1
2200 for i=Moji_Min_15 to  Moji_Max_15
2210 buf_char_hiragana15$(i-Moji_Min_15)=Moji_data$(i)
2220 next i
2230 '16画の文字 44
2240 for i=Moji_Min_16 to Moji_Max_16
2250 buf_char_hiragana16$(i-Moji_Min_16)=Moji_data$(i)
2260 next i
2270 '17画の文字
2280 for i = Moji_Min_17 to Moji_Max_17
2290 buf_char_hiragana17$(i-Moji_Min_17)=Moji_data$(i)
2300 next i
2310 '18画の文字
2320 for i = Moji_Min_18 to Moji_Max_18
2330 buf_char_hiragana18$(i-Moji_Min_18)=Moji_data$(i)
2340 next i
2350 '19画の文字 17文字
2360 for i = Moji_Min_19 to Moji_Max_19
2370 buf_char_hiragana19$(i-Moji_Min_19)=Moji_data$(i)
2380 next i
2390 '20 画の文字 13文字
2400 for  i = Moji_Min_20 to Moji_Max_20
2410 buf_char_hiragana20$(i-Moji_Min_20)=Moji_data$(i)
2420 NEXT i
2430 '21画の文字 6
2440 for i = Moji_Min_21 to (Moji_Max_21)
2450 buf_char_hiragana21$(i-Moji_Min_21)=Moji_data$(i)
2460 next i
2470 '22 画の文字 4
2480 for i = Moji_Min_22 to Moji_Max_22
2490 buf_char_hiragana22$(i-Moji_Min_22)=Moji_data$(i)
2500 next i
2510 '23画の文字  3文字
2520 for i = Moji_Min_23 to Moji_Max_23
2530 buf_char_hiragana23$(i-Moji_Min_23)=Moji_data$(i)
2540 next i
2550 '24画の文字  3文字
2560 for i = Moji_Min_24 to Moji_Max_24
2570 buf_char_hiragana24$(i-Moji_Min_24)=Moji_data$(i)
2580 next i
2590 '25 画の文字 4
2600 for i = Moji_Min_25 to Moji_Max_25
2610 buf_char_hiragana25$(i-Moji_Min_25)=Moji_data$(i)
2620 next i
2630 '26画の文字  3文字
2640 for i = Moji_Min_26 to Moji_Max_26
2650 buf_char_hiragana26$(i-Moji_Min_26)=Moji_data$(i)
2660 next i
2670 '27画の文字  3文字
2680 for i = Moji_Min_27 to Moji_Max_27
2690 buf_char_hiragana27$(i-Moji_Min_27)=Moji_data$(i)
2700 next i
2710 'ファイル読み込み領域　ここまで
2720 '相性占い結果パターン ここまで
2730 'メイン画面　ここから
2740 '描画領域　ここから
2750 Select_keybord:
2760 cls 3:font 32:
2770 'line (0,0)-(1200,60),rgb(0,0,255),bf
2780 'pen 5:line (0,0)-(1197,57),rgb(127,255,212),b
2790 'line (0,60)-(1200,380),rgb(127,255,212),bf
2800 'pen 5:line(0,57)-(1197,377),rgb(0,0,255),b
2810 'line (0,380)-(1200,450),rgb(0,255,0),bf
2820 'pen 5:line(0,377)-(1197,447),rgb(0,0,255),b
2830 gload "config/Picture/Top_Screen1.png",0,0,0
2840 '描画領域　ここまで
2850 '設定画面 バーチャルキーボードの表示選択
2860 talk"キーボードの選択です。バーチャルキーボードを表示させますか ？"
2870 'color rgb(255,255,255)
2880 'print "●バーチャル キーボードの表示の選択"+chr$(13)
2890 print chr$(13)
2900 color rgb(255,0,255)
2910 print "1.バーチャルキーボードを表示する"+chr$(13)
2920 print "2.バーチャルキーボードを表示しない"+chr$(13)
2930 print "3.プログラムを終了する"+chr$(13)
2940 color rgb(0,0,0)
2950 Input"番号:",keyNo
2960 if keyNo = 1 then init"kb:2"
2970 if keyNo = 2 then init"kb:0"
2980 if keyNo = 3 then color rgb(255,255,255):cls 3:end
2990 if keyNo > 3 or keyNo = 0 then goto Select_keybord:
3000 'メイン画面 Top画面1
3010 Main_Screen:
3020 cls 3:font 48:color rgb(255,255,255),,rgb(176,196,222):No=0
3030 talk "メイン画面です、番号を選んで、エンターキーを押してください"
3040 'Text ,Grapgic clear:cls 3
3050 'グラフィック領域　ここから
3060 'line (0,0)-(570,60),rgb(0,0,255),bf
3070 'pen 5:line (0,0)-(567,57),rgb(127,255,212),b
3080 'line (0,60)-(570,460),rgb(127,255,212),bf
3090 'pen 5:line (0,57)-(567,457),rgb(0,0,255),b
3100 'line (0,460)-(570,640),rgb(0,255,0),bf
3110 'グラフィック領域 ここまで
3120 'pen 5:line (0,457)-(567,637),rgb(0,0,255),b
3130 gload "config/Picture/Main_Screen1.png",0,0,0
3140 Font 32
3150 'print"◎姓名判断　メイン画面"+chr$(13)
3160 '文字色:黒
3170 print chr$(13)+chr$(13)
3180 color rgb(255,0,255)
3190 print"1.姓名判断"+chr$(13)
3200 print"2.姓名判断の漢字" + chr$(13)
3210 print"3.ヘルプ"+chr$(13)
3220 print"4.プログラムの終了"+chr$(13)
3230 'print"5.プログラム終了"+chr$(13)
3240 '文字:黒
3250 color rgb(0,0,0)
3260 'print"番号を選んでください"+chr$(13)
3270 print chr$(13)+chr$(13)
3280 Input "番号:",No
3290 if No = 1  then goto seimeihandan_top:
3300 if No = 2 then goto seimeihandan_setting:
3310 if No = 3 then goto help:
3320 if No = 4  then talk"終了します":cls 3:end
3330 'if No = 0  then goto Main_Screen:
3340 if  No > 4 or No = 0  then ui_msg"無効な番号です、もう一度入れ直してください。":goto Main_Screen:
3350 '1.姓名判断トップ画面
3360 seimeihandan_top:
3370 cls:screen 1,1
3380 'タイトル文字:白
3390 font 48:color rgb(255,255,255),,rgb(176,196,222)
3400 talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでエンターキーを押してください"
3410 'グラフィック 描画領域　ここから
3420 'Main_Screen:
3430 cls 3:font 32
3440 '1.Title:青
3450 'Line 1
3460 'line (0,0)-(890,60),rgb(0,0,255),bf
3470 'pen 5:line(0,0)-(887,57),rgb(127,255,212),b
3480 'Line 2
3490 'line (0,60)-(890,265),rgb(127,255,212),bf
3500 'PEN 5:line(0,57)-(887,262),rgb(0,0,255),b
3510 'Line 3
3520 'line (0,265)-(890,400),rgb(0,255,0),bf
3530 'pen 5:line (0,262)-(887,397),rgb(0,0,0),b
3540 gload "config/Picture/seimeihandan_Select_top.png"
3550 'グラフィック 描画領域 ここまで
3560 color rgb(255,255,255)
3570 'print"◎姓名判断の種類トップメニュー"+chr$(13)
3580 print chr$(13)+chr$(13)
3590 color rgb(255,0,255):print"1.霊遺伝姓名学" + chr$(13)
3600 COLOR rgb(255,0,255):print"2.前の画面に戻る" + chr$(13)
3610 'color rgb(0,0,0):Print"番号を選んでエンターを押してください"
3620 print chr$(13)
3630 color rgb(0,0,0):Input"番号:",selectNo
3640 IF selectNo = 1 then goto Reiden_Top_Input_Sextype:
3650 if selectNo = 2 then goto Main_Screen:
3660 if selectNo > 2 or selectNo = 0 then ui_msg"無効な番号です。入れ直してください。":goto seimeihandan_top:
3670 '2.設定
3680 seimeihandan_setting:
3690 font 48:color rgb(0,0,0),,rgb(176,196,222)
3700 talk"設定画面です。番号を選んでエンターキーを押してください"
3710 'グラフィック領域　ここから
3720 cls 3:
3730 'line (0,0)-(750,60),rgb(0,0,255),bf
3740 'pen 5:line (0,0)-(747,57),rgb(127,255,212),b
3750 'line (0,60)-(750,460),rgb(127,255,212),bf
3760 'pen 5:line (0,57)-(747,457),rgb(0,0,255),b
3770 'line (0,460)-(750,650),rgb(0,255,0),bf
3780 'pen 5:line(0,457)-(747,647),rgb(0,0,255),b
3790 'グラフィック領域 ここまで
3800 '1行目　文字色　 白
3810 'color rgb(255,255,255):print"姓名判断　設定画面トップ画面" + chr$(13)
3820 gload "config/Picture/Setting_Top.png"
3830 print chr$(13)
3840 color rgb(255,0,255):print"1.登録文字の確認" + chr$(13)
3850 color rgb(255,0,255):print"2.登録文字数の表示" + chr$(13)
3860 color rgb(255,0,255):print"3.前の画面に戻る" + chr$(13)
3870 color rgb(255,0,255):print"4.プログラムの終了" + chr$(13)
3880 COLOR rgb(0,0,0)
3890 'print"番号を選んでください"+chr$(13)
3900 print chr$(13)
3910 Input"番号:",selectNo
3920 if selectNo=1 then goto Entry_moji_Top:
3930 if selectNo=2 then goto Entry_moji_check_count:
3940 if selectNo=3 then goto Main_Screen:
3950 if selectNo=4 then talk"終了します":cls 3:end
3960 if selectNo > 4 or selectNo = 0 then goto seimeihandan_setting:
3970 '3 番号で吉凶を見る 入力
3980 Moji_Kikkyo_Top:
3990 font 32:color rgb(0,0,0),,rgb(176,196,222)
4000 'グラフィック描画領域　ここから
4010 cls 3
4020 line (0,0)-(650,60),rgb(0,0,255),bf
4030 pen 5:line(0,0)-(645,57),rgb(127,255,212),b
4040 line (0,60)-(650,255),rgb(127,255,212),bf
4050 PEN 5:line(0,57)-(647,252),rgb(0,0,255),b
4060 line (0,255)-(650,350),rgb(0,255,0),bf
4070 pen 5:line(0,252)-(647,347),rgb(0,0,255),b
4080 'グラフィック描画領域 ここまで
4090 color rgb(255,255,255)
4100 print"画数での吉凶判定"+chr$(13)
4110 color rgb(255,0,255)
4120 print"画数を入れてください"+chr$(13)
4130 print"(Max:81文字)"+chr$(13)
4140 color rgb(0,0,0)
4150 Input"文字の画数:",Number
4160 if Number > 81 then goto Moji_Kikkyo_Top:
4170 if Number <=81 then end
4180 '3.番号で吉凶を見る 結果表示
4190 'グラフィック描画領域　ここから
4200 Entry_moji_check:
4210 cls 3
4220 '1行目
4230 line (0,0)-(840,58),rgb(0,0,255),bf
4240 pen 5:line(0,0)-(837,55),rgb(127,255,212),b
4250 '2行目
4260 line (0,58)-(840,100),rgb(127,255,212),bf
4270 PEN 5:line(0,55)-(837,97),rgb(0,0,0),b
4280 '3行目
4290 line (0,100)-(840,280),rgb(0,0,255),bf
4300 pen 5:LINE(0,103)-(837,277),rgb(127,255,212),b
4310 '4行目
4320 line (0,280)-(840,340),rgb(0,255,0),bf
4330 pen 5:line(0,277)-(837,337),rgb(0,0,0),b
4340 'グラフィック描画領域　ここまで
4350 totalmoji=Moji_1+Moji2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24
4360 color rgb(255,255,255):print "登録文字画数結果表示"
4370 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
4380 'endif
4390 color rgb(255,255,255)
4400 print"q+エンターキー:トップ画面"+chr$(13)
4410 print"エンターキー:もう一度やる"+chr$(13)
4420 color rgb(0,0,0)
4430 print"コマンド:"
4440 key$=Input$(1)
4450 if key$=chr$(13)  then buffer_count=0:goto Entry_moji_Top:
4460 if key$="q" then buffer_count=0:goto Main_Screen:
4470 if not(key$="q") then goto Moji_count_check:
4480 Entry_moji_Top:
4490 cls 3:font 48
4500 'cls 3:line (0,0)-(1050,65),rgb(0,0,255),bf
4510 'pen 5:line(0,0)-(1047,62),rgb(127,255,212),b
4520 'line (0,62)-(1050,155),rgb(0,255,255),bf
4530 'pen 5:line(0,59)-(1047,152),rgb(0,0,255),b
4540 'line (0,155)-(1050,260),rgb(0,255,0),bf
4550 'pen 5:line(0,152)-(1047,257),rgb(0,0,255),b
4560 gload "config/Picture/Input_Entry_Moji2.png"
4570 'グラフィック領域　ここまで
4580 talk"調べたい文字をひと文字入れてください。"
4590 '文字:白
4600 'olor rgb(255,255,255):print"登録文字の確認"+chr$(13)
4610 '文字:アクア
4620 'color rgb(255,0,0):print"文字を入力してエンターキーを押してください"+chr$(13)
4630 print chr$(13)+chr$(13)+chr$(13)+chr$(13)
4640 color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
4650 if name$="" then ui_msg"文字が空白です。入れ直してください。":goto Entry_moji_Top:
4660 if (len(name$)>1) then ui_msg("１文字で入れてください"):goto Entry_moji_Top:
4670 '1画の文字
4680 for i=0 to ((Moji_1)-1)
4690 if (name$=buf_char_hiragana1$(i)) then
4700 buffer_count=1:goto Moji_count_check:
4710 endif
4720 next i
4730 '2画の文字
4740 for i=0 to ((Moji_2)-1)
4750 if (name$=buf_char_hiragana2$(i)) then
4760 buffer_count=2:goto Moji_count_check:
4770 endif
4780 next i
4790 '3画の文字
4800 for i=0 to ((Moji_3)-1)
4810 if (name$=buf_char_hiragana3$(i)) then
4820 buffer_count=3:goto Moji_count_check:
4830 endif
4840 next i
4850 '4画の文字
4860 for i=0 to ((Moji_4)-1)
4870 if (name$=buf_char_hiragana4$(i)) then
4880 buffer_count=4:goto Moji_count_check:
4890 endif
4900 next i
4910 '5画の文字
4920 for i=0 to ((Moji_5)-1)
4930 if (name$=buf_char_hiragana5$(i)) then
4940 buffer_count=5:goto Moji_count_check:
4950 endif
4960 next i
4970 '6画の文字
4980 for i=0 to ((Moji_6)-1)
4990 if (name$=buf_char_hiragana6$(i)) then
5000 buffer_count=6:goto Moji_count_check:
5010 endif
5020 next i
5030 '7画の文字
5040 for i=0 to ((Moji_7)-1)
5050 if (name$=buf_char_hiragana7$(i)) then
5060 buffer_count=7:goto Moji_count_check:
5070 endif
5080 next i
5090 '8画の文字 120 文字
5100 for i=0 to ((Moji_8)-1)
5110 if (name$=buf_char_hiragana8$(i)) then
5120 buffer_count=8:goto Moji_count_check:
5130 endif
5140 next i
5150 '9画の文字  103文字
5160 for i=0 to ((Moji_9)-1)
5170 if (name$=buf_char_hiragana9$(i)) then
5180 buffer_count=9:goto Moji_count_check:
5190 endif
5200 next i
5210 '10画の文字 98文字
5220 for i=0 to ((Moji_10)-1)
5230 if (name$=buf_char_hiragana10$(i)) then
5240 buffer_count=10:goto Moji_count_check:
5250 endif
5260 next i
5270 '11画の文字 98文字
5280 for i=0 to ((Moji_11)-1)
5290 if (name$=buf_char_hiragana11$(i)) then
5300 buffer_count=11:goto Moji_count_check:
5310 endif
5320 next i
5330 '12画の文字
5340 for i=0 to ((Moji_12)-1)
5350 if (name$=buf_char_hiragana12$(i)) then
5360 buffer_count=12:goto Moji_count_check:
5370 endif
5380 next i
5390 '13画の文字
5400 for i=0 to ((Moji_13)-1)
5410 if (name$=buf_char_hiragana13$(i)) then
5420 buffer_count=13:goto Moji_count_check:
5430 endif
5440 next i
5450 '14画の文字
5460 for i=0 to ((Moji_14)-1)
5470 if (name$=buf_char_hiragana14$(i)) then
5480 buffer_count=14:goto Moji_count_check:
5490 endif
5500 next i
5510 '15画の文字
5520 for i=0 to ((Moji_15)-1)
5530 if (name$=buf_char_hiragana15$(i)) then
5540 buffer_count=15:goto Moji_count_check:
5550 endif
5560 next i
5570 '16画の文字
5580 for i=0 to ((Moji_16)-1)
5590 if (name$=buf_char_hiragana16$(i)) then
5600 buffer_count=16:goto Moji_count_check:
5610 endif
5620 next i
5630 '17画の文字
5640 for i=0 to ((Moji_17)-1)
5650 if (name$=buf_char_hiragana17$(i)) then
5660 buffer_count=17:goto Moji_count_check:
5670 endif
5680 next i
5690 '18画の文字 25
5700 for i=0 to ((Moji_18)-1)
5710 if (name$=buf_char_hiragana18$(i)) then
5720 buffer_count=18:goto Moji_count_check:
5730 endif
5740 next i
5750 '19画の文字 17
5760 for i=0 to ((Moji_19)-1)
5770 if (name$=buf_char_hiragana19$(i)) then
5780 buffer_count=19:goto Moji_count_check:
5790 endif
5800 next i
5810 '20画の文字 13
5820 for i=0 to ((Moji_20)-1)
5830 if (name$=buf_char_hiragana20$(i)) then
5840 buffer_count=20:goto Moji_count_check:
5850 endif
5860 next i
5870 '21画の文字 6
5880 for i=0 to ((Moji_21)-1)
5890 if (name$=buf_char_hiragana21$(i)) then
5900 buffer_count=21:goto Moji_count_check:
5910 endif
5920 next i
5930 '22画の文字 4
5940 for i=0 to ((Moji_22)-1)
5950 if (name$=buf_char_hiragana22$(i)) then
5960 buffer_count=22:goto Moji_count_check:
5970 endif
5980 next i
5990 '23画の文字 3
6000 for i=0 to ((Moji_23)-1)
6010 if (name$=buf_char_hiragana23$(i)) then
6020 buffer_count=23:goto Moji_count_check:
6030 endif
6040 next i
6050 '24画の文字
6060 for i=0 to ((Moji_24)-1)
6070 if (name$=buf_char_hiragana24$(i)) then
6080 buffer_count=24:goto Moji_count_check:
6090 endif
6100 next i
6110 'Menu3 結果表示 画数の登録確認
6120 Moji_count_check:
6130 if (buffer_count = 0) then
6140 '登録文字がない場合の処理
6150 'グラフィック領域　ここから
6160 'Moji_count_check:
6170 cls 3:font 48
6180 '1行
6190 'ine (0,0)-(840,60),rgb(0,0,255),bf
6200 'pen 5:line (0,0)-(837,57),rgb(127,255,212),b
6210 '2行目
6220 'line (0,60)-(840,165),rgb(127,255,212),bf
6230 'pen 5:line (0,57)-(837,162),rgb(0,0,255),b
6240 '3行目
6250 'line (0,165)-(840,370),rgb(0,0,255),bf
6260 'pen 5:line (0,162)-(837,367),rgb(0,255,0),b
6270 '4行目
6280 'line (0,370)-(840,450),rgb(0,255,0),bf
6290 'pen 5:line(0,367)-(837,447),rgb(0,0,0),b
6300 'グラフィック領域　ここまで
6310 color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
6320 color rgb(255,0,0):print name$;":この文字は、登録されていません"+chr$(13)
6330 talk "この文字は、登録されていません"
6340 color rgb(255,255,255):print"q:トップ画面"+chr$(13)
6350 COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
6360 color rgb(0,0,0):print"コマンド:"
6370 key$ = Input$(1)
6380 if key$ = "q" or key$ = "Q" then goto Main_Screen:
6390 if key$ = chr$(13) then goto Entry_moji_Top:
6400 else
6410 'グラフィック描画領域　ここから
6420 'Entry_moji_check:
6430 cls 3
6440 '1行目
6450 'line (0,0)-(840,58),rgb(0,0,255),bf
6460 'pen 5:line(0,0)-(837,55),rgb(127,255,212),b
6470 '2行目
6480 'line (0,58)-(840,100),rgb(127,255,212),bf
6490 'PEN 5:line(0,55)-(837,97),rgb(0,0,0),b
6500 '3行目
6510 'line (0,100)-(840,280),rgb(0,0,255),bf
6520 'pen 5:LINE(0,103)-(837,277),rgb(127,255,212),b
6530 '4行目
6540 'line (0,280)-(840,340),rgb(0,255,0),bf
6550 'pen 5:line(0,277)-(837,337),rgb(0,0,0),b
6560 'グラフィック描画領域　ここまで
6570 'color rgb(255,255,255):print "登録文字画数結果表示"
6580 gload "config/Picture/Result_EntryMoji2.png"
6590 print chr$(13)
6600 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています"+chr$(13)
6610 endif
6620 color rgb(0,0,0)
6630 print"qキー:トップ画面"+chr$(13)
6640 print"エンターキー:もう一度やる"+chr$(13)
6650 'color rgb(0,0,0)
6660 'print"コマンド:"
6670 key$=Input$(1)
6680 if key$=chr$(13)  then buffer_count=0:goto Entry_moji_Top:
6690 if key$="q" then buffer_count=0:goto Main_Screen:
6700 if not(key$="q") then goto Moji_count_check:
6710 '
6720 'dif
6730 'グラフィック描画領域　ここから
6740 '登録文字数の確認
6750 Entry_moji_check_count:
6760 totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
6770 'グラフィック描画領域　ここから
6780 cls 3:font 48
6790 '1行目
6800 'ine (0,0)-(800,60),rgb(0,0,255),bf
6810 'en 5:line (0,0)-(797,57),rgb(127,255,212),b
6820 '2行目
6830 'line (0,60)-(800,150),rgb(157,255,212),bf
6840 'pen 5:line(0,57)-(797,147),rgb(0,0,255),b
6850 '3行目
6860 'line (0,150)-(800,250),rgb(0,255,0),bf
6870 'pen 5:line(0,147)-(797,247),rgb(0,0,255),b
6880 'グラフィック描画領域 ここまで
6890 'color rgb(255,255,255)
6900 'PRINT"登録文字数の確認"+chr$(13)
6910 gload "config/Picture/Moji_check.png"
6920 print chr$(13)
6930 color rgb(255,0,255)
6940 PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
6950 TALK"登録文字数は"+str$(totalmoji)+"もじです"
6960 color rgb(0,0,0)
6970 'print"エンターキーを押してください"+chr$(13)
6980 'key$=Input$(1)
6990 print"エンターキーを押してください"+chr$(13)
7000 key$=Input$(1)
7010 if key$ = chr$(13) then goto Main_Screen:
7020 'グラフィック領域　ここから
7030 '性別入力
7040 Reiden_Top_Input_Sextype:
7050 cls 3:font 48
7060 'Line1
7070 'line (0,0)-(850,60),rgb(0,0,255),bf
7080 'line (0,0)-(847,57),rgb(0,255,0),b
7090 'Line 2
7100 'line (0,63)-(853,537),rgb(127,255,212),bf
7110 'line (0,60)-(850,540),rgb(0,0,0),b
7120 'Line 3
7130 'line (0,540)-(850,630),rgb(0,255,0),bf
7140 'line (0,543)-(853,633),rgb(0,0,255),b
7150 gload "config/Picture/Select_sextype.png"
7160 'グラフィック領域　ここまで
7170 '音声表示
7180 talk "霊遺伝生命学　性別の選択です。占う方の性別を入れてください"
7190 '性別変数:sex_type=0
7200 '文字色： 白
7210 'color rgb(255,255,255):print"霊遺伝姓名学 性別の選択" + chr$(13)
7220 '文字色：赤
7230 print chr$(13)
7240 color rgb(255,0,255)
7250 print"占う人の性別の番号を入れてください" + chr$(13)
7260 'print chr$(13)
7270 print"1.女 性" + chr$(13)
7280 print"2.男 性" + chr$(13)
7290 print"3.前の画面に戻る" + chr$(13)
7300 print"4.終 了" + chr$(13)
7310 'print chr$(13)
7320 color rgb(0,0,0)
7330 Input"番号:",No
7340 '2:男性の場合 名前を入力
7350 '男性の性別:sex_type=2
7360 if No=2 then sex_type=2:talk"":goto ReiIden_Input_male:
7370 '1:女性の場合 既婚の場合、旧姓で入力
7380 '女性の性別:sex_type=1
7390 if No=1 then sex_type=1:talk"":goto ReiIden_Input_female:
7400 '3:終了処理
7410 if No=4 then cls 3:end
7420 if No=3 then goto Main_Screen:
7430 if No >4 then goto Reiden_Top_Input_Sextype:
7440 '１．男性の場合の名前入力
7450 '描画領域　ここから
7460 ReiIden_Input_male:
7470 cls 3
7480 'Line 1 Title
7490 'line (0,0)-(850,60),rgb(0,0,255),bf
7500 'line (0,0)-(850,57),rgb(0,255,0),b
7510 'Line2 Input name
7520 'line (0,60)-(850,300),rgb(0,255,0),bf
7530 'line (0,60)-(850,303),rgb(0,0,255),b
7540 gload "config/Picture/Input_name1_male.png"
7550 '描画領域 ここまで
7560 '文字色：白
7570 talk "名前の入力です。名前の姓の部分を入力してください"
7580 color rgb(255,255,255)
7590 'print "霊遺伝姓名学 名前の姓入力（男性）" + chr$(13)
7600 print chr$(13)
7610 '文字色：黒
7620 color rgb(0,0,0)
7630 print "名前の姓の部分を入れてください" + chr$(13)
7640 Input"名前(姓の部分):",name1$
7650 '名の入力部分
7660 cls 3
7670 gload "config/Picture/Input_name2_male.png"
7680 talk"名前のめいの部分を入れてください"
7690 'color rgb(255,255,255)
7700 'print "霊遺伝姓名学 名前の名入力(男性)" + chr$(13)
7710 print chr$(13)
7720 color rgb(0,0,0)
7730 print "名前の名の部分を入れてください"+chr$(13)
7740 Input"名前(名の部分):",name2$:goto check:
7750 '2.女性の場合　既婚か未婚か確認する
7760 '2-2-1女性の姓の入力
7770 'グラフィック領域　ここから
7780 ReiIden_Input_female:
7790 cls 3:font 48
7800 talk"名前の入力です。名前のせいの部分を入れてください"
7810 'Line1 Title
7820 'line (0,0)-(850,60),rgb(0,0,255),bf
7830 'line (0,0)-(850,57),rgb(0,255,0),b
7840 'Line 2 入力欄
7850 'line (0,60)-(850,360),rgb(0,255,0),bf
7860 'line (0,60)-(850,357),rgb(0,0,255),b
7870 'Line 2 入力欄(名前入力)
7880 'グラフィック領域 ここまで
7890 gload "config/Picture/Input_name1_female.png"
7900 cls:print chr$(13)
7910 'color rgb(255,255,255)
7920 'print "霊遺伝姓名学 名前の姓入力(女性）"+chr$(13)
7930 color rgb(255,0,0)
7940 print"既婚者の方は、旧姓を入れてください"+chr$(13)
7950 color rgb(0,0,0)
7960 print "名前の姓の部分を入れてください"+chr$(13)
7970 Input "名前(姓の部分):",name3$
7980 talk ""
7990 '2-2-2女性の名の入力
8000 cls 3
8010 gload "config/Picture/Input_name2_female.png"
8020 talk"名前のめいの部分を入れてください。"
8030 color rgb(255,255,255)
8040 'print "霊遺伝姓名学 名前の名の部分(女性)"+chr$(13)
8050 print chr$(13)
8060 color rgb(0,0,0)
8070 print "名前の名の部分を入れてください"+chr$(13)
8080 Input "名前(名の部分):",name4$
8090 talk ""
8100 '計算領域　ここから
8110 check:
8120 '苗字の画数:buffer_name1_count
8130 'name1$,name2$:男性
8140 if sex_type = 1 then
8150 'sex_type=1 :女性のとき
8160 buf_male_female_name1$=name3$
8170 buf_male_female_name2$=name4$
8180 endif
8190 if sex_type = 2 then
8200 'sex_type=2 :男性のとき
8210 buf_male_female_name1$=name1$
8220 buf_male_female_name2$=name2$
8230 endif
8240 buffer_name1_count=len(buf_male_female_name1$)
8250 buffer_name2_count=len(buf_male_female_name2$)
8260 select case buffer_name1_count
8270 'AとBを求める
8280 case 1:
8290 '1.苗字の画数が1つのとき
8300 'A:霊数 1
8310 A=1
8320 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
8330 B = char_count(buf_name1$)
8340 case 2:
8350 '2.苗字の画数が2つのとき
8360 '2-1:苗字の1文字目:buf_name1$
8370 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
8380 '2-2:苗字の2文字目:buf_name2$
8390 buf_name2$ = Mid$(buf_male_female_name1$,2,1)
8400 A=char_count(buf_name1$)
8410 B=char_count(buf_name2$)
8420 'B=char_count(buf_name2$)
8430 case 3:
8440 '3.苗字の画数が3つの時
8450 '3-1:苗字の1文字目:buf_name1$
8460 buf_name1$=Mid$(buf_male_female_name1$,1,1)
8470 '3-2:苗字が3つのときの2つ目の文字をもとめる
8480 '3-2:苗字の2つ目:buf_name2$
8490 buf_name2$=Mid$(buf_male_female_name1$,2,1)
8500 '3-3:苗字が3つのときの3文字目
8510 '3-3:苗字の3文字目buf_name3$(name1$,3,1)
8520 buf_name3$ = Mid$(buf_male_female_name1$,3,1)
8530 if buf_name2$="々" then
8540 A = char_count(buf_name1$) * 2
8550 B = char_count(buf_name3$)
8560 else
8570 A = char_count(buf_name1$) + char_count(buf_name2$)
8580 B = char_count(buf_name3$)
8590 endif
8600 '姓が4文字
8610 case 4:
8620 buf_name1$=Mid$(buf_male_female_name1$,1,1)
8630 buf_name2$=Mid$(buf_male_female_name1$,2,1)
8640 buf_name3$=Mid$(buf_male_female_name1$,3,1)
8650 buf_name4$=Mid$(buf_male_female_name1$,4,1)
8660 A=char_count(buf_name1$)+char_count(buf_name2$)+char_count(buf_name3$)
8670 B=char_count(buf_name4$)
8680 case else:
8690 end select
8700 '2.C,Dを求める
8710 select case buffer_name2_count
8720 case 1:
8730 '名が1文字の時
8740 'CとDを求める
8750 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
8760 C = char_count(buff_name1$)
8770 'D=1:霊数
8780 D = 1
8790 case 2:
8800 '名が2文字の時
8810 'CとDを求める
8820 '名の1文字目:buff_name1$
8830 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
8840 '名の2文字目:buff_name2$
8850 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
8860 C = char_count(buff_name1$)
8870 D = char_count(buff_name2$)
8880 case 3:
8890 '名が3文字の時
8900 'CとDを求める
8910 '名の1文字目:buff_name1$
8920 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
8930 '名の2文字目:buff_name2$
8940 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
8950 if buff_name2$ = "々" then
8960 buff_name2$ = buff_name1$
8970 endif
8980 '名の3文字目:buff_name3$
8990 buff_name3$ = Mid$(buf_male_female_name2$,3,1)
9000 C = char_count(buff_name1$)
9010 D = char_count(buff_name2$) + char_count(buff_name3$)
9020 end select
9030 '1.先祖運を求める
9040 buffer_Senzo = A + B
9050 '2.性格運を求める
9060 buffer_Seikaku = B + C
9070 '3.愛情運を求める
9080 buffer_Aijyou = C + D
9090 '4.行動運を求める
9100 buffer_Kouzou = A + D
9110 'if buffer_Kouzou=10 then
9120 'endif
9130 '1.生数を求める
9140 func buf_Seisu(buffer)
9150 if buffer < 10 then
9160 seisu=buffer
9170 endif
9180 if buffer = 10 or buffer = 0 or buffer=20 or buffer=30 then
9190 seisu = 0
9200 endif
9210 if buffer > 10 then
9220 if buffer=20 then
9230 seisu = 0
9240 else
9250 n = buffer - (fix(buffer / 10) * 10)
9260 seisu = n
9270 endif
9280 endif
9290 endfunc seisu
9300 '和数を求める
9310 func buf_Wasu(buffer)
9320 buf_wasu = 0:wasu = 0
9330 if buffer < 10 then
9340 '
9350 wasu = buffer:goto wasu:
9360 else
9370 if buffer = 10 then
9380 wasu = 1:goto wasu:
9390 else
9400 if buffer > 10  then
9410 if buffer=19 or buffer=28 or buffer=37 then
9420 wasu=1:goto wasu:
9430 else
9440 if buffer = 29 then
9450 wasu=2:goto wasu:
9460 'endif
9470 else
9480 a = fix(buffer / 10)
9490 b = buffer - a * 10
9500 c = a + b
9510 if c = 19 or c=28 then
9520 wasu=1
9530 '
9540 else
9550 wasu=c
9560 endif
9570 endif
9580 endif
9590 endif
9600 endif
9610 if c < 10 then
9620 wasu = c
9630 'endif
9640 endif
9650 else
9660 if buffer=19 or buffer=28 then
9670 wasu = 1
9680 endif
9690 endif
9700 wasu:
9710 buf_wasu=wasu
9720 endfunc buf_wasu
9730 func buf_kyoudai$(buf_sex_type,buf_Sa$)
9740 select case buf_sex_type
9750 '1.女性の場合
9760 case 1:
9770 if (buf_Sa$ = "連続") then
9780 buffer_kyoudai$="長女相"
9790 endif
9800 if (buf_Sa$ = "1差") then
9810 buffer_kyoudai$="次女相"
9820 endif
9830 if (buf_Sa$ = "2差") then
9840 buffer_kyoudai$="三女相"
9850 endif
9860 if (buf_Sa$ = "3差") then
9870 buffer_kyoudai$="四女相"
9880 endif
9890 if (buf_Sa$ = "4差") then
9900 buffer_kyoudai$="五女相"
9910 endif
9920 '男性の場合
9930 case 2:
9940 if (buf_Sa$ = "連続") then
9950 buffer_kyoudai$="長男相"
9960 endif
9970 if (buf_Sa$ = "1差") then
9980 buffer_kyoudai$="次男相"
9990 endif
10000 if (buf_Sa$ = "2差") then
10010 buffer_kyoudai$="三男相"
10020 endif
10030 if (buf_Sa$ = "3差") then
10040 buffer_kyoudai$="四男相"
10050 endif
10060 if (buf_Sa$ = "4差") then
10070 buffer_kyoudai$="五男相"
10080 endif
10090 case else:
10100 end select
10110 kyoudai$=buffer_kyoudai$
10120 endfunc kyoudai$
10130 '1.タテ型
10140 '1.同じ数字が2組ある場合
10150 func Tate_gata$()
10160 if Senzo_wasu = Seikaku_wasu  then
10170 if Aijyou_wasu - Seikaku_wasu > 1 then
10180 Spirit_type$="タテ型"
10190 Sa_count = Aijyou_wasu - Seikaku_wasu - 1
10200 Sa$ = str$(Sa_count) + "差"
10210 else
10220 Spirit_type$="タテ型"
10230 Sa$="連続"
10240 endif
10250 endif
10260 endfunc
10270 '2. ナナメ型
10280 '同じ数字が2組ある場合
10290 func Naname_gata$()
10300 if  Senzo_wasu = Koudou_wasu And  Seikaku_wasu = Aijyou_wasu then
10310 Spirit_type$="斜め型"
10320 endif
10330 if Seikaku_wasu - Senzo_wasu > 1 then
10340 Sa_count = Seikaku_wasu  -  Senzo_wasu  -  1
10350 Sa$=str$(Sa_count)+" 差"
10360 else
10370 Sa$="連続"
10380 endif
10390 endfunc
10400 '3.表十字型
10410 '同じ数字が2組ある場合
10420 func Omote_jyuji_gata1$()
10430 if Senzo_wasu = Aijyou_wasu  And  Kouzou_wasu = Seikaku_wasu then
10440 Spirit_type$ = "表十字型"
10450 endif
10460 if Senzo _wasu - Seikaku_wasu > 1 then
10470 Sa_count = Senzo_wasu - Seikaku_wasu - 1
10480 else
10490 if Senzo_wasu  -  Seikaku_wasu = 1  then
10500 Sa$="連続"
10510 endif
10520 endif
10530 endfunc
10540 Spirit_type$="No data"
10550 '1.先祖運　和数
10560 Senzo_wasu = buf_Wasu(buffer_Senzo)
10570 '2.先祖運 生数
10580 Senzo_seisu = buf_Seisu(buffer_Senzo)
10590 '3.性格運 和数
10600 Seikaku_wasu = buf_Wasu(buffer_Seikaku)
10610 '4.性格運 生数
10620 Seikaku_seisu = buf_Seisu(buffer_Seikaku)
10630 '5.愛情運 和数
10640 Aijyou_wasu = buf_Wasu(buffer_Aijyou)
10650 '6.愛情運 生数
10660 Aijyou_seisu = buf_Seisu(buffer_Aijyou)
10670 '7.行動運 和数
10680 Koudou_wasu = buf_Wasu(buffer_Kouzou)
10690 '8.行動運 生数
10700 Koudou_seisu = buf_Seisu(buffer_Kouzou)
10710 '計算領域 ここまで
10720 '描画領域　ここから
10730 Result_ReiIden1:
10740 cls 3
10750 'Title
10760 'line (0,0)-(850,60),rgb(0,0,255),bf
10770 'pen 3:line (0,0)-(850,57),rgb(255,255,255),b
10780 'name
10790 'line (0,60)-(850,165),rgb(0,255,0),bf
10800 'pen 5:line (0,63)-(850,162),rgb(255,0,255),b
10810 '生数、和数
10820 'line (0,165)-(850,550),rgb(125,255,212),bf
10830 'pen 3:line(0,168)-(850,547),rgb(0,0,255),b
10840 'プッシュメッセージ
10850 'line (0,550)-(850,750),rgb(0,255,0),bf
10860 'pen 5:line (0,553)-(850,753),rgb(0,0,0),b
10870 '描画領域　ここまで
10880 'color rgb(255,255,255)
10890 'print "霊遺伝姓名学　診断結果１/2"+chr$(13)
10900 gload "config/Picture/Result_Screen1.png"
10910 print chr$(13)
10920 color rgb(0,0,0)
10930 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
10940 color rgb(255,0,255)
10950 print "1.先祖運";" ";"和数:";Senzo_wasu;"生数:";Senzo_seisu;chr$(13)
10960 print "2.性格運";" ";"和数:";Seikaku_wasu;"生数:";Seikaku_seisu;" ";chr$(13)
10970 print "3.愛情運";" ";"和数:";Aijyou_wasu;"生数:";Aijyou_seisu;chr$(13)
10980 print "4.行動運";" ";"和数:";Koudou_wasu;"生数:";Koudou_seisu;chr$(13)
10990 talk "診断結果１です、あなたのわすうとせいすうです。"
11000 color rgb(0,0,0)
11010 print"エンターキー:次へ行く"+chr$(13)
11020 print"スペースキー:トップ画面"+chr$(13)
11030 key$ = Input$(1)
11040 if key$ = chr$(13) then
11050 talk"":goto Jyuni_KisoUnn:
11060 else
11070 if key$=" " then
11080 talk"":goto Main_Screen:
11090 else
11100 talk"":goto Result_ReiIden1:
11110 endif
11120 endif
11130 '姓名判断データー文字比較
11140 '画数を求める関数
11150 func char_count(buf_count$)
11160 count=0:buffer=0
11170 '1画の文字 23文字
11180 for j=0 to ((Moji_1)-1)
11190 if buf_count$=buf_char_hiragana1$(j) then
11200 count =1:
11210 endif
11220 next j
11230 '2画の文字
11240 for j=0 to ((Moji_2)-1)
11250 if buf_count$=buf_char_hiragana2$(j)  then
11260 count = 2:
11270 endif
11280 next j
11290 for j=0 to ((Moji_3)-1)
11300 if buf_count$=buf_char_hiragana3$(j) then
11310 count =3:
11320 endif
11330 next j
11340 for j=0 to ((Moji_4)-1)
11350 if buf_count$=buf_char_hiragana4$(j) then
11360 count = 4:
11370 endif
11380 next j
11390 for j=0 to ((Moji_5)-1)
11400 if buf_count$=buf_char_hiragana5$(j) then
11410 count = 5:
11420 endif
11430 next j
11440 for j=0 to ((Moji_6)-1)
11450 if buf_count$=buf_char_hiragana6$(j) then
11460 count= 6
11470 endif
11480 next j
11490 for  j=0 to ((Moji_7)-1)
11500 if buf_count$=buf_char_hiragana7$(j) then
11510 count=  7
11520 endif
11530 next j
11540 for j=0 to ((Moji_8)-1)
11550 if buf_count$=buf_char_hiragana8$(j) then
11560 count= 8
11570 endif
11580 next j
11590 for j=0 to ((Moji_9)-1)
11600 if buf_count$=buf_char_hiragana9$(j) then
11610 count=9
11620 endif
11630 next j
11640 for j=0 to ((Moji_10)-1)
11650 if buf_count$=buf_char_hiragana10$(j) then
11660 count=10
11670 endif
11680 next j
11690 for j=0 to ((Moji_11)-1)
11700 if buf_count$=buf_char_hiragana11$(j) then
11710 count=11
11720 endif
11730 next j
11740 for j=0 to  ((Moji_12)-1)
11750 if buf_count$=buf_char_hiragana12$(j) then
11760 count=12
11770 endif
11780 next j
11790 for j=0 to ((Moji_13)-1)
11800 if buf_count$=buf_char_hiragana13$(j) then
11810 count=13
11820 endif
11830 next j
11840 for j=0 to ((Moji_14)-1)
11850 if buf_count$=buf_char_hiragana14$(j) then
11860 count=14
11870 endif
11880 next j
11890 for j=0 to ((Moji_15)-1)
11900 if buf_count$=buf_char_hiragana15$(j) then
11910 count=15
11920 endif
11930 next j
11940 for j=0 to ((Moji_16)-1)
11950 if buf_count$=buf_char_hiragana16$(j) then
11960 count=16
11970 endif
11980 next j
11990 for j=0 to ((Moji_17)-1)
12000 if buf_count$=buf_char_hiragana17$(j) then
12010 count=17
12020 endif
12030 next j
12040 for j=0 to ((Moji_18)-1)
12050 if buf_count$=buf_char_hiragana18$(j) then
12060 count=18
12070 endif
12080 next j
12090 for j=0 to ((Moji_19)-1)
12100 if buf_count$=buf_char_hiragana19$(j) then
12110 count=19
12120 endif
12130 next j
12140 for j=0 to ((Moji_20)-1)
12150 if buf_count$=buf_char_hiragana20$(j) then
12160 count=20
12170 endif
12180 next i
12190 for j=0 to ((Moji_21)-1)
12200 if buf_count$=buf_char_hiragana21$(j) then
12210 count=21
12220 endif
12230 next j
12240 for j=0 to ((Moji_22)-1)
12250 if buf_count$=buf_char_hiragana22$(j) then
12260 count=22
12270 endif
12280 next j
12290 for j=0 to ((Moji_23)-1)
12300 if buf_count$=buf_char_hiragana23$(j) then
12310 count=23
12320 endif
12330 next j
12340 for j=0 to ((Moji_24)-1)
12350 if buf_count$=buf_char_hiragana24$(j) then
12360 count=24
12370 endif
12380 buffer = count
12390 next j
12400 endfunc buffer
12410 '3.ヘルプ
12420 help:
12430 cls 3:font 48:color rgb(0,0,0),,rgb(176,196,222)
12440 '描画領域 ここから
12450 'line (0,0)-(550,60),rgb(0,0,255),bf
12460 'pen 5:line(0,0)-(547,57),rgb(127,255,212),b
12470 'line (0,60)-(550,470),rgb(127,255,212),bf
12480 'pen 5:line(0,57)-(547,467),rgb(0,0,255),b
12490 'line (0,470)-(550,550),rgb(0,255,0),bf
12500 'pen 5:line(0,467)-(547,547),rgb(0,0,255),b
12510 '描画領域　ここまで
12520 talk "へるぷがめんです。番号を選んでエンターキーを押してください。"
12530 'color rgb(255,255,255):print "姓名判断　ヘルプ"+chr$(13)
12540 gload "config/Picture/Help2.png"
12550 print chr$(13)
12560 color rgb(255,0,255):print"1.バージョン情報"+chr$(13)
12570 color rgb(255,0,255):print"2.参考文献"+chr$(13)
12580 color rgb(255,0,255):print"3.前の画面に戻る"+chr$(13)
12590 color rgb(255,0,255):PRINT"4.プログラムの終了"+chr$(13)
12600 color rgb(0,0,0):Input"番号:",selectNo
12610 if selectNo=1 then goto Version_Info:
12620 if selectNo=2 then goto Reference_Book:
12630 'プログラムの終了
12640 if selectNo=4 then talk"終了いたします":cls 3:end
12650 if selectNo=3 then goto Main_Screen:
12660 '十二基礎運を求める
12670 Jyuni_KisoUnn:
12680 buffer_Kiso(0)=Senzo_wasu
12690 buffer_Kiso(1)=Seikaku_wasu
12700 buffer_Kiso(2)=Aijyou_wasu
12710 buffer_Kiso(3)=Koudou_wasu
12720 'シャッフル前の処理 ここから
12730 ' 5.オール同数型:○ ok
12740 if (buffer_Kiso(0) = buffer_Kiso(1) and  buffer_Kiso(2) = buffer_Kiso(3) and  buffer_Kiso(1)=buffer_Kiso(2)) then
12750 Kisoun$ = "オール同数型":goto shuffle:
12760 else
12770 '　1.タテ型:○ ok
12780 if (((buffer_Kiso(1) - buffer_Kiso(0)) = 0) and (buffer_Kiso(3) - buffer_Kiso(2)) = 0) and (buffer_Kiso(3) <> buffer_Kiso(1)) then
12790 Kisoun$="タテ型":goto shuffle:
12800 else
12810 '2.ヨコ型:○ ok
12820 if (buffer_Kiso(1)=buffer_Kiso(3) and abs(buffer_Kiso(0) - buffer_Kiso(2)) > 1) then
12830 Kisoun$="ヨコ型":goto shuffle:
12840 else
12850 '3.斜め型:○ ok
12860 if ((buffer_Kiso(0)=buffer_Kiso(3)) and (buffer_Kiso(1) = buffer_Kiso(2)) and (buffer_Kiso(0) <> buffer_Kiso(1))) then
12870 Kisoun$="斜め型":goto shuffle:
12880 else
12890 '4.上下型:○ ok
12900 if (buffer_Kiso(0) = buffer_Kiso(2) and buffer_Kiso(1) - buffer_Kiso(0)>1 and buffer_Kiso(1) - buffer_Kiso(2)>1 and buffer_Kiso(1)-buffer_Kiso(3) > 1) then
12910 Kisoun$="上下型":goto shuffle:
12920 else
12930 '5.オール同数型
12940 'if (buffer_Kiso(0) = buffer_Kiso(1) = buffer_Kiso(2) = buffer_Kiso(3)) then
12950 'Kisoun$="オール同数型":goto shuffle:
12960 'else
12970 '6.表十字型
12980 '6.表十字型 同じ数字が2組ある
12990 if ((buffer_Kiso(0) = buffer_Kiso(2)) and (abs(buffer_Kiso(3) - buffer_Kiso(1))=1))  then
13000 Kisoun$="表十字型":goto shuffle:
13010 else
13020 '6-2.表十字型 (ヨコ系)
13030 if ((buffer_Kiso(1) - buffer_Kiso(3) = 0) and (buffer_Kiso(2) - buffer_Kiso(0) = 1)) then
13040 Kisoun$="表十字型(ヨコ系)":goto shuffle:
13050 else
13060 '6-3.表十字型 (上下系):○ ok
13070 if ((buffer_Kiso(2)-buffer_Kiso(0)=0) and (buffer_Kiso(1)-buffer_Kiso(3)=1)) then
13080 Kisoun$="表十字型(上下系)":goto shuffle:
13090 else
13100 '7-1.順序型(タテ・上下系):○ ok
13110 if ((abs(buffer_Kiso(1)-buffer_Kiso(2))=1) and (abs(buffer_Kiso(3) - buffer_Kiso(0)) = 1) and (abs(buffer_Kiso(2)-buffer_Kiso(1))=1)) then
13120 Kisoun$="順序型(タテ ・上下系)":goto shuffle:
13130 else
13140 '7-2.順序型(タテ・ヨコ系):○ ok
13150 if ((abs(buffer_Kiso(3) - buffer_Kiso(2)) = 1) and abs(buffer_Kiso(1) - buffer_Kiso(3)=1) and ((buffer_Kiso(0)=1 and buffer_Kiso(1)=9) or abs(buffer_Kiso(0) - buffer_Kiso(1)) = 1)) then
13160 Kisoun$="順序型(タテ・ヨコ系)":goto shuffle:
13170 else
13180 '7-3.順序型(斜め・上下系):○ ok
13190 if ((buffer_Kiso(3)-buffer_Kiso(0)=1) and (buffer_Kiso(0)-buffer_Kiso(2)=1) and (buffer_Kiso(2)-buffer_Kiso(1)=1)) then
13200 Kisoun$="順序型(斜め・上下系)":goto shuffle
13210 else
13220 '7-4.順序型(斜め・ヨコ系):○ ok
13230 if ((abs(buffer_Kiso(0) - buffer_Kiso(3)) = 2) and (abs(buffer_Kiso(3) - buffer_Kiso(1)) = 2) and (abs(buffer_Kiso(1) - buffer_Kiso(2)) = 7)) then
13240 Kisoun$="順序型(斜め・ヨコ系)":goto shuffle
13250 else
13260 '8-1.隔離型(タテ・上下系):○ ok
13270 if ((abs(buffer_Kiso(1)-buffer_Kiso(0)) = 2) and (abs(buffer_Kiso(2)-buffer_Kiso(3)) = 2) and (buffer_Kiso(3)-buffer_Kiso(1) > 2)) then
13280 Kisoun$="隔離型(タテ・上下系)":goto shuffle:
13290 '8-2.隔離型(タテ・ヨコ系)
13300 else
13310 if ((buffer_Kiso(1) - buffer_Kiso(0) = 2) and (abs(buffer_Kiso(3) - buffer_Kiso(1)) = 2) and (abs(buffer_Kiso(3) - buffer_Kiso(2)) = 2)) then
13320 Kisoun$="隔離型(タテ・ヨコ系)":goto shuffle:
13330 else
13340 '8-3.隔離型(斜め・上下系)○:ok
13350 if (((abs(buffer_Kiso(3)-buffer_Kiso(0)=2) and ((abs(buffer_Kiso(2)-buffer_Kiso(1))=2) and (abs(buffer_Kiso(2) - buffer_Kiso(0)) = 7))))) then
13360 Kisoun$="隔離型(斜め・上下系)":goto shuffle:
13370 else
13380 '8-4.隔離型(斜め・ヨコ系)
13390 if ((buffer_Kiso(0)-buffer_Kiso(3)=2) and (buffer_Kiso(3)-buffer_Kiso(1)=2) and (buffer_Kiso(2)-buffer_Kiso(1)=2)) then
13400 Kisoun$="隔離型(斜め・ヨコ系)":goto shuffle:
13410 else
13420 '8-5.隔離型(タテ系):○ ok
13430 if ((buffer_Kiso(2) - buffer_Kiso(0) = 3) and (buffer_Kiso(0)-buffer_Kiso(1) = 2) and (buffer_Kiso(1)-buffer_Kiso(3) = 2)) then
13440 Kisoun$="隔離型(タテ系)":goto shuffle:
13450 else
13460 '8-6.隔離型(斜め系)
13470 if (abs(buffer_Kiso(3)-buffer_Kiso(0)-1)=1 and (buffer_Kiso(2) - buffer_Kiso(1)-1)=1 and (abs(buffer_Kiso(1)-buffer_Kiso(3)-1)=2)) then
13480 Kisoun$="隔離型(斜め系)":goto shuffle:
13490 '8-7.隔離型(上下・ヨコ系)
13500 else
13510 if ((buffer_Kiso(3)-buffer_Kiso(0)=2) and (buffer_Kiso(1)-buffer_Kiso(3)=2) and (buffer_Kiso(2)-buffer_Kiso(1)=3)) then
13520 Kisoun$="隔離型(上下・ヨコ系)":goto shuffle:
13530 else
13540 '9-1.中一差型 (タテ系)
13550 if ((buffer_Kiso(0) - buffer_Kiso(1) = 1) and (buffer_Kiso(3) - buffer_Kiso(2) = 1) and (buffer_Kiso(1) - buffer_Kiso(3) = 2)) then
13560 Kisoun$="中一差(タテ系)":goto shuffle:
13570 else
13580 '9-2.中一差(斜め系)
13590 if ((buffer_Kiso(3)-buffer_Kiso(0)=1) and (buffer_Kiso(2)-buffer_Kiso(1)=1) and (buffer_Kiso(0)-buffer_Kiso(2)=2)) then
13600 Kisoun$="中一差(斜め系)":goto shuffle:
13610 else
13620 '10-1.中二差(タテ系)
13630 if ((buffer_Kiso(0)-buffer_Kiso(1)=1) and (buffer_Kiso(3)-buffer_Kiso(2)=1) and buffer_Kiso(1)-buffer_Kiso(3)=3)  then
13640 Kisoun$="中二差(タテ系)":goto shuffle:
13650 else
13660 '10-2.中二差(斜め系)
13670 if ((buffer_Kiso(0)-buffer_Kiso(3)=1) and (buffer_Kiso(1)-buffer_Kiso(2)=1))  then
13680  Kisoun$="中二差(斜め系)":goto shuffle:
13690 else
13700 '11-1.中広型(タテ系)
13710 if ((buffer_Kiso(0)-buffer_Kiso(1)=1) and (buffer_Kiso(2)-buffer_Kiso(3)=1) and (buffer_Kiso(3)-buffer_Kiso(1)=4)) then
13720 Kisoun$="中広型(タテ系)":goto shuffle:
13730 else
13740 '12-1.中順序型(ヨコ系)
13750 if ((buffer_Kiso(1) - buffer_Kiso(3) = 1) and (buffer_Kiso(0) - buffer_Kiso(1) = 2) and (buffer_Kiso(3) - buffer_Kiso(2) = 2))  then
13760 Kisoun$="中順序型(ヨコ系)":goto shuffle:
13770 else
13780 '12-2.中順序型(上下系)
13790 if ((buffer_Kiso(2)-buffer_Kiso(0)=1) and (buffer_Kiso(1) - buffer_Kiso(3))=2) then
13800 Kisoun$="中順序型(上下系)":goto shuffle:
13810 endif
13820 endif
13830 endif
13840 endif
13850 endif
13860 endif
13870 endif
13880 endif
13890 endif
13900 endif
13910 endif
13920 endif
13930 endif
13940 endif
13950 endif
13960 endif
13970 endif
13980 endif
13990 endif
14000 endif
14010 endif
14020 endif
14030 endif
14040 endif
14050 endif
14060 endif
14070 'endif
14080 'endif
14090 'シャッフル前の処理 ここまで
14100 shuffle:
14110 timer=0
14120 for i=0 to 3
14130 for j=3 to i+1 step -1
14140 if buffer_Kiso(j-1)>buffer_Kiso(j) then
14150 swap buffer_Kiso(j),buffer_Kiso(j-1)
14160 endif
14170 next j
14180 next i
14190 cls 3:talk"あなたのじゅうにきそうんです"
14200 'rgb(0,0,255):blue
14210 'line (0,0)-(1200,60),rgb(0,0,255),bf
14220 'pen 3:line(0,3)-(1203,63),rgb(0,0,255),b
14230 'line (0,60)-(1200,165),rgb(0,255,0),bf
14240 'pen 3:line (0,63)-(1203,168),rgb(0,0,255),b
14250 'line (0,165)-(1200,165+(550/3)),rgb(125,255,212),bf
14260 'pen 3:line (0,168)-(1203,165+(550/3)),rgb(0,0,255),b
14270 'line (0,165+(550/3))-(1200,165+(550/3)+90),rgb(0,255,0),bf
14280 'en 3:line (0,165+(550/3))-(1203,165+(550/3)+90+3),rgb(0,0,0),b
14290 gload "config/Picture/Result_Screen2.png"
14300 'color rgb(255,255,255)
14310 'print"十二基礎運 診断結果 2/2"+chr$(13)
14320 print chr$(13)
14330 'for j=0 to 3
14340 'print buffer_Kiso(j);
14350 'next j
14360 'print timer;"msec"
14370 'print chr$(13)
14380 buf_kyodai$=get_Sa$()
14390 color rgb(0,0,0)
14400 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
14410 color rgb(255,0,255)
14420 print"和数:";Kisoun$;chr$(13)
14430 print"兄弟相:";buf_kyodai$;chr$(13)
14440 color rgb(0,0,0)
14450 print"エンターキー:戻る" + chr$(13)
14460 key$ = input$(1)
14470 if key$ = chr$(13) then
14480 goto Result_ReiIden1:
14490 else
14500 goto shuffle:
14510 endif
14520 'バージョン情報
14530 Version_Info:
14540 cls 3:font 24
14550 line(0,0) - (1300,40),rgb(0,0,255),bf
14560 line (0,40)-(1300,220),rgb(127,255,212),bf
14570 line (0,220)-(1300,280),rgb(0,255,0),bf
14580 talk "バージョン情報です"
14590 color rgb(255,255,255)
14600 print "バージョン情報" + chr$(13)
14610 color rgb(255,0,255)
14620 print "アプリ名:霊遺伝姓名学 スタンダード" + chr$(13)
14630 print "Author:licksjp" + chr$(13)
14640 print Version$ + chr$(13)
14650 print"(c)copy rights licksjp All rights reserved since 2019" + chr$(13)
14660 color rgb(0,0,0)
14670 print"エンターキーを押してください" + chr$(13)
14680 a$ = input$(1)
14690 if a$=chr$(13) then goto Main_Screen:
14700 Reference_Book:
14710 cls 3
14720 line(0,0)-(1200,60),rgb(0,0,255),bf
14730 pen 3:line(0,0)-(1201,61),rgb(0,0,255),b
14740 line(0,60)-(1200,580),rgb(127,255,212),bf
14750 pen 3:line(0,61)-(1201,581),rgb(0,0,255),b
14760 line(0,580)-(1200,640),rgb(0,255,0),bf
14770 pen 3:line(0,583)-(1203,640),rgb(0,0,255),b
14780 color rgb(255,255,255)
14790 print "参考文献" + chr$(13)
14800 color rgb(255,0,255)
14810 print "書名:姓名の暗号" + chr$(13)
14820 print "著者:樹門 幸宰" + chr$(13)
14830 print "出版社:幻冬舎" + chr$(13)
14840 print "定価:1400+税"+chr$(13)
14850 print "ISBN:4-344-0077-8" + chr$(13)
14860 color rgb(0,0,0)
14870 print "スペースキーを押してください"+CHR$(13)
14880 key$ = input$(1)
14890 if key$=" " then goto Reference_Book2:
14900 '
14910 Reference_Book2:
14920 cls 3
14930 pen 3:line(0,3) - (1203,63),rgb(0,0,255),b
14940 line(0,0) - (1200,60),rgb(0,0,255),bf
14950 pen 3:line(0,57) - (1197,577),rgb(0,0,255),b
14960 line(0,60) - (1200,570),rgb(127,255,212),bf
14970 pen 3:line(0,63) - (1197,753),rgb(0,0,255),b
14980 line(0,573) - (1193,750),rgb(0,255,0),bf
14990 color rgb(255,255,255)
15000 print "参考文献2" + chr$(13)
15010 color rgb(255,0,255)
15020 print "書名:姓名の暗号 解読法" + chr$(13)
15030 print "著者:樹門 幸宰" + chr$(13)
15040 print "出版社:幻冬舎" + chr$(13)
15050 print "定価:600円 + 税" + chr$(13)
15060 print "ISBN:978-4-344-41190-6" + chr$(13)
15070 color rgb(0,0,0)
15080 print"スペースキー:参考文献1へ行く" + chr$(13)
15090 print"エンターキー:トップ画面" + chr$(13)
15100 key$=input$(1)
15110 if key$=" " then goto Reference_Book:
15120 if key$=chr$(13) then goto Main_Screen:
15130 '差を求める
15140 func get_Sa$()
15150 for i=0 to 3
15160 for j=3 to i+1 step -1
15170 if buffer_Kiso(j-1)>buffer_Kiso(j) then
15180 swap buffer_Kiso(j),buffer_Kiso(j-1)
15190 endif
15200 next j
15210 next i
15220 sa1=0:sa2=0:sa3=0:sa4=0:sa_max=0:sa_max1=0:sa_max2=0:
15230 sa1=abs(buffer_Kiso(2)-buffer_Kiso(1))  - 1
15240 sa2=abs(buffer_Kiso(2)-buffer_Kiso(3)) - 1
15250 sa3=abs(buffer_Kiso(1)-buffer_Kiso(0)) - 1
15260 sa4=abs(buffer_Kiso(3)-buffer_Kiso(0)) - 1
15270 sa_max1=max(sa1,sa2)
15280 sa_max2=max(sa2,sa3)
15290 sa_max3=max(sa3,sa1)
15300 if (sa1=sa2 and sa3=sa4) then
15310 sa_max = -1
15320 else
15330 if (buffer_Kiso(3)=9 and buffer_Kiso(0)=1) and (buffer_Kiso(3)-buffer_Kiso(2)-1=0) and (buffer_Kiso(2)-buffer_Kiso(1)-1=0) then
15340 sa_max=0
15350 else
15360 'Patern1 sa_max1が一番大きいとき
15370 if (sa_max1 >= sa_max2 and sa_max1 >= sa_max3) then
15380 sa_max=sa_max1
15390 else
15400 'Patern2 sa_maxが一番大きいとき
15410 if (sa_max2 >= sa_max1 and sa_max2 >= sa_max3) then
15420 sa_max=sa_max2
15430 else
15440 'Patern3 sa_max3が一番大きいとき
15450 if (sa_max3 >= sa_max1 and sa_max3>=sa_max2) then
15460 sa_max=sa_max3
15470 endif
15480 endif
15490 endif
15500 endif
15510 endif
15520 select case sa_max
15530 case -1:
15540        buffer$ = "オール同数型"
15550        select case sex_type
15560        case 1:
15570              buffer2$="四女相"
15580        case 2:
15590              buffer2$="四男相"
15600        end select
15610 case 0:
15620        buffer$ ="連続"
15630        select case sex_type
15640        case 1:
15650              buffer2$="長女相"
15660        case 2:
15670              buffer2$="長男相"
15680        end select
15690 case 1:
15700        buffer$ ="1差"
15710        select case sex_type
15720        case 1:
15730             buffer2$="次女相"
15740        case 2:
15750             buffer2$="次男相"
15760        end select
15770 case 2:
15780        buffer$ ="2差"
15790        select case sex_type
15800        case 1:
15810             buffer2$="3女相"
15820        case 2:
15830             buffer2$="3男相"
15840        end select
15850 case 3:
15860        buffer$ ="3差"
15870        select case sex_type
15880        case 1:
15890              buffer2$="4女相"
15900        case 2:
15910              buffer2$="4男相"
15920        end select
15930 case 4:
15940        buffer$ ="4差"
15950        select case sex_type
15960         case 1:
15970              buffer2$="5女相"
15980         case 2:
15990              buffer2$="5男相"
16000        end select
16010 case else:
16020 end select
16030 buffer_Sa$ = buffer$ +","+ buffer2$
16040 endfunc buffer_Sa$
