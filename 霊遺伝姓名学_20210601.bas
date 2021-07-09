100 cls 3
110 'コメント
120 '初期設定項目
130 '2021.06.01:霊遺伝姓名判断単体版作成開始
140 '霊遺伝姓名判断Light_Ver202105.改.basより
150 '霊遺伝姓名藩の部分だけのソースを移殖
160 'バージョン情報
170 '"Ver:2021_06_01_06.12"
180 'メモリー定義
190 'メモリー確保 文字領域,数値データー
200 clear 4*4000,4*1000000
210 'Version 情報
220 Version$="Ver:2021_06_01_06.23"
230 'ファイル読み込み領域　ここから
240 dim buf_lines$(27),buffer_Kiso(4),buffer_Kiso2(4)
250 '定数文字1画〜27画
260 'ファイルから各画数を読み込んで代入する。
270 '1行目だけ読み込む
280 open "config/Kanji_data/Mojidata_ReiIden20200911.csv" for input as #2
290 for i=0 to 26
300 input #2,buf_lines$(i)
310 next i
320 close #2
330 Moji_1=val(buf_lines$(0)):Moji_2=val(buf_lines$(1)):Moji_3=val(buf_lines$(2)):Moji_4=val(buf_lines$(3)):Moji_5=val(buf_lines$(4)):Moji_6=val(buf_lines$(5)):Moji_7=val(buf_lines$(6)):Moji_8=val(buf_lines$(7)):Moji_9=val(buf_lines$(8)):Moji_10=val(buf_lines$(9)):Moji_11=val(buf_lines$(10)):Moji_12=val(buf_lines$(11)):Moji_13=val(buf_lines$(12)):Moji_14=val(buf_lines$(13)):Moji_15=val(buf_lines$(14)):Moji_16=val(buf_lines$(15)):Moji_17=val(buf_lines$(16)):Moji_18=val(buf_lines$(17)):Moji_19=val(buf_lines$(18)):Moji_20=val(buf_lines$(19)):Moji_21=val(buf_lines$(20)):Moji_22=val(buf_lines$(21)):Moji_23=val(buf_lines$(22)):Moji_24=val(buf_lines$(23)):Moji_25=val(buf_lines$(24)):Moji_26=val(buf_lines$(25)):Moji_27=val(buf_lines$(26))
340 Moji_total=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
350 '1画
360 Moji_Min_1 = 28:Moji_Max_1 = Moji_1 + 27+1:
370 '2画
380 Moji_Min_2 = (Moji_1) + 27+2:Moji_Max_2 = Moji_1 + Moji_2+27+2
390 '3画
400 Moji_Min_3 =(Moji_1) + (Moji_2) + 27+3:Moji_Max_3 =Moji_1 + Moji_2 + Moji_3+27+3
410 '4画
420 Moji_Min_4 = (Moji_3) + Moji_2 + Moji_1 + 27+4:Moji_Max_4=Moji_1+Moji_2 + Moji_3 + Moji_4 + 27+4
430 '5画
440 Moji_Min_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4) + 27+5:Moji_Max_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5)+27+5
450 '6画
460 Moji_Min_6 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5)+27+6:Moji_Max_6=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6)+27+6
470 '7画
480 Moji_Min_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6) + 27+7:Moji_Max_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7) + 27+7
490 '8画
500 Moji_Min_8 = Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+27+8:Moji_Max_8=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8)+27+8
510 '9画
520 Moji_Min_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + 27+9:Moji_Max_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + 27+9
530 '10画
540 Moji_Min_10 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9)+27+10:Moji_Max_10=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10)+27+10
550 '11画
560 Moji_Min_11 = (Moji_1+Moji_2+Moji_3+Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10)+27+11:Moji_Max_11=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11)+27+11
570 '12画
580 Moji_Min_12 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11)+27+12:Moji_Max_12=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+27+12
590 '13画
600 Moji_Min_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12)+13+27:Moji_Max_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+27+13
610 '14画
620 Moji_Min_14 =(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+14+27:Moji_Max_14=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+14+27
630 '15画
640 Moji_Min_15 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+15+27:Moji_Max_15=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6+ Moji_7 + Moji_8 + Moji_9+ Moji_10 + Moji_11 + Moji_12+Moji_13+Moji_14+Moji_15)+15+27
650 '16画
660 Moji_Min_16 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15)+16+27:Moji_Max_16=Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+16+27
670 '17画
680 Moji_Min_17 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16) + 17+27:Moji_Max_17 = Moji_1 + Moji_2 + Moji_3 + Moji_4+Moji_5 + Moji_6 + Moji_7+Moji_8 + Moji_9 + Moji_10 + Moji_11 + Moji_12 + Moji_13 + Moji_14 + Moji_15+Moji_16+Moji_17+17+27
690 '18画
700 Moji_Min_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17)+18+27:Moji_Max_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+18+27
710 '19画
720 Moji_Min_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+19+27:Moji_Max_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+19+27
730 '20画
740 Moji_Min_20=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+20+27:Moji_Max_20=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+20+27
750 '21画
760 Moji_Min_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20)+21+27:Moji_Max_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+21+27
770 '22画
780 Moji_Min_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+22+27:Moji_Max_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22)+22+27
790 '23画
800 Moji_Min_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+23+27):Moji_Max_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+23+27
810 '24画
820 Moji_Min_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+24+27:Moji_Max_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+24+27
830 '25画
840 Moji_Min_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+25+27:Moji_Max_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+25+27
850 '26画
860 Moji_Min_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+26+27:Moji_Max_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+26+27
870 '27画
880 Moji_Min_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+27+27:Moji_Max_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27)+27+27
890 dim Moji_data$(Moji_total+27+27)
900 'dim bufmoji$(10),Input_data$(10)
910 '１画の文字   サイズ:21+2(漢字)
920 dim buf_char_hiragana1$(Moji_1)
930 '2画の文字  サイズ 58+14=72(漢字)
940 dim buf_char_hiragana2$(Moji_2)
950 '3画の文字 サイズ:48+29=77(漢字)
960 dim buf_char_hiragana3$(Moji_3)
970 '4画の文字 サイズ:29+51=80(漢字)
980 dim buf_char_hiragana4$(Moji_4)
990 '５画の文字  サイズ:18+59=77(漢字)
1000 dim buf_char_hiragana5$(Moji_5)
1010 '6画の文字  サイズ:79(漢字)
1020 dim buf_char_hiragana6$(Moji_6)
1030 '7画の文字  サイズ:88(漢字)
1040 dim buf_char_hiragana7$(Moji_7)
1050 '8画の文字
1060 dim buf_char_hiragana8$(Moji_8)
1070 '9画の文字
1080 dim buf_char_hiragana9$(Moji_9)
1090 '10画の文字 98文字
1100 dim buf_char_hiragana10$(Moji_10)
1110 '11画の文字
1120 dim buf_char_hiragana11$(Moji_11)
1130 '12画の文字
1140 dim buf_char_hiragana12$(Moji_12)
1150 '13画の文字 81文字
1160 dim buf_char_hiragana13$(Moji_13)
1170 '14画の文字
1180 dim buf_char_hiragana14$(Moji_14)
1190 '15画の文字
1200 dim buf_char_hiragana15$(Moji_15)
1210 '16画の文字
1220 dim buf_char_hiragana16$(Moji_16)
1230 '17画の文字
1240 dim buf_char_hiragana17$(Moji_17)
1250 '18画の文字
1260 dim buf_char_hiragana18$(Moji_18)
1270 '19画の文字
1280 dim buf_char_hiragana19$(Moji_19)
1290 '20画の文字
1300 dim buf_char_hiragana20$(Moji_20)
1310 '21画の文字
1320 dim buf_char_hiragana21$(Moji_21)
1330 '22画の文字
1340 dim buf_char_hiragana22$(Moji_22)
1350 '23画の文字
1360 dim buf_char_hiragana23$(Moji_23)
1370 '24画の文字
1380 dim buf_char_hiragana24$(Moji_24)
1390 '25
1400 dim buf_char_hiragana25$(Moji_25)
1410 dim buf_char_hiragana26$(Moji_26)
1420 dim buf_char_hiragana27$(Moji_27)
1430 '結果表示1　吉凶データー 81パターン
1440 'ファイル読み込み2
1450 'データー読み込み　ここから
1460 'データー読み込み　1.ひらがな
1470 '1画の文字   6文字 23文字
1480 open "config/Kanji_data/Mojidata_ReiIden20200911.csv" for input as #1
1490 '全ファイルを読み込む
1500 for i = 0 to 25+Moji_total+27
1510 input #1,Moji_data$(i)
1520 next i
1530 close #1
1540 '全ファイル読み込み　ここまで
1550 for i = 27+1 to (Moji_1)+27+1
1560 '1画の文字にデーターをコピーする
1570 buf_char_hiragana1$(i-Moji_Min_1) = Moji_data$(i)
1580 next i
1590 '2画の文字    98文字
1600 for i = Moji_Min_2  to (Moji_Max_2)
1610 buf_char_hiragana2$(i-Moji_Min_2)=Moji_data$(i)
1620 next i
1630 '3文字の文字    77文字
1640 for i = Moji_Min_3  to (Moji_Max_3)
1650 buf_char_hiragana3$(i-(Moji_Min_3)) = Moji_data$(i)
1660 next i
1670 '4文字の文字   80文字
1680 for i = (Moji_Min_4)  to (Moji_Max_4)
1690 buf_char_hiragana4$(i-Moji_Min_4)=Moji_data$(i)
1700 next i
1710 '5文字の文字 77文字
1720 for i = Moji_Min_5 to (Moji_Max_5)
1730 buf_char_hiragana5$(i - Moji_Min_5)=Moji_data$(i)
1740 next i
1750 '6文字の文字 79文字
1760 for i = Moji_Min_6  to Moji_Max_6
1770 buf_char_hiragana6$(i-Moji_Min_6) = Moji_data$(i)
1780 next i
1790 '7文字の文字 170文字
1800 for i = Moji_Min_7 to Moji_Max_7
1810 buf_char_hiragana7$(i-Moji_Min_7)=  Moji_data$(i)
1820 next i
1830 '8画の文字 120文字
1840 for i = Moji_Min_8 to Moji_Max_8
1850 buf_char_hiragana8$(i - Moji_Min_8)=Moji_data$(i)
1860 next i
1870 '9画の文字  103文字
1880 for i = Moji_Min_9 to Moji_Max_9
1890 buf_char_hiragana9$(i - Moji_Min_9)=Moji_data$(i)
1900 next i
1910 '10画の文字 285文字
1920 for i = Moji_Min_10 to (Moji_Max_10)
1930 buf_char_hiragana10$(i-Moji_Min_10)=Moji_data$(i)
1940 next i
1950 '11画の文字
1960 for i = Moji_Min_11 to Moji_Max_11
1970 buf_char_hiragana11$(i-Moji_Min_11) = Moji_data$(i)
1980 next i
1990 '12画の文字
2000 for i = Moji_Min_12 to Moji_Max_12
2010 buf_char_hiragana12$(i-Moji_Min_12)=Moji_data$(i)
2020 next i
2030 '13画の文字 81
2040 for i = Moji_Min_13 to Moji_Max_13
2050 buf_char_hiragana13$(i-Moji_Min_13) = Moji_data$(i)
2060 next i
2070 '14画の文字 66
2080 for i = Moji_Min_14 to Moji_Max_14
2090 buf_char_hiragana14$(i-Moji_Min_14)=Moji_data$(i)
2100 next i
2110 '15画の文字 59
2120 'for i = Moji_Min_15 to (Moji_Max_15) - 1
2130 for i=Moji_Min_15 to  Moji_Max_15
2140 buf_char_hiragana15$(i-Moji_Min_15)=Moji_data$(i)
2150 next i
2160 '16画の文字 44
2170 for i=Moji_Min_16 to Moji_Max_16
2180 buf_char_hiragana16$(i-Moji_Min_16)=Moji_data$(i)
2190 next i
2200 '17画の文字
2210 for i = Moji_Min_17 to Moji_Max_17
2220 buf_char_hiragana17$(i-Moji_Min_17)=Moji_data$(i)
2230 next i
2240 '18画の文字
2250 for i = Moji_Min_18 to Moji_Max_18
2260 buf_char_hiragana18$(i-Moji_Min_18)=Moji_data$(i)
2270 next i
2280 '19画の文字 17文字
2290 for i = Moji_Min_19 to Moji_Max_19
2300 buf_char_hiragana19$(i-Moji_Min_19)=Moji_data$(i)
2310 next i
2320 '20 画の文字 13文字
2330 for  i = Moji_Min_20 to Moji_Max_20
2340 buf_char_hiragana20$(i-Moji_Min_20)=Moji_data$(i)
2350 NEXT i
2360 '21画の文字 6
2370 for i = Moji_Min_21 to (Moji_Max_21)
2380 buf_char_hiragana21$(i-Moji_Min_21)=Moji_data$(i)
2390 next i
2400 '22 画の文字 4
2410 for i = Moji_Min_22 to Moji_Max_22
2420 buf_char_hiragana22$(i-Moji_Min_22)=Moji_data$(i)
2430 next i
2440 '23画の文字  3文字
2450 for i = Moji_Min_23 to Moji_Max_23
2460 buf_char_hiragana23$(i-Moji_Min_23)=Moji_data$(i)
2470 next i
2480 '24画の文字  3文字
2490 for i = Moji_Min_24 to Moji_Max_24
2500 buf_char_hiragana24$(i-Moji_Min_24)=Moji_data$(i)
2510 next i
2520 '25 画の文字 4
2530 for i = Moji_Min_25 to Moji_Max_25
2540 buf_char_hiragana25$(i-Moji_Min_25)=Moji_data$(i)
2550 next i
2560 '26画の文字  3文字
2570 for i = Moji_Min_26 to Moji_Max_26
2580 buf_char_hiragana26$(i-Moji_Min_26)=Moji_data$(i)
2590 next i
2600 '27画の文字  3文字
2610 for i = Moji_Min_27 to Moji_Max_27
2620 buf_char_hiragana27$(i-Moji_Min_27)=Moji_data$(i)
2630 next i
2640 'ファイル読み込み領域　ここまで
2650 '相性占い結果パターン ここまで
2660 'メイン画面　ここから
2670 '描画領域　ここから
2680 Select_keybord:
2690 cls 3:font 48:
2700 line (0,0)-(1200,60),rgb(0,0,255),bf
2710 pen 5:line (0,0)-(1197,57),rgb(127,255,212),b
2720 line (0,60)-(1200,380),rgb(127,255,212),bf
2730 pen 5:line(0,57)-(1197,377),rgb(0,0,255),b
2740 line (0,380)-(1200,450),rgb(0,255,0),bf
2750 pen 5:line(0,377)-(1197,447),rgb(0,0,255),b
2760 'gload"Picture/Select1.png",0,0,0
2770 '描画領域　ここまで
2780 '設定画面 バーチャルキーボードの表示選択
2790 talk"キーボードの選択です。バーチャルキーボードを表示させますか ？"
2800 color rgb(255,255,255)
2810 print "●バーチャル キーボードの表示の選択"+chr$(13)
2820 color rgb(255,0,255)
2830 print "1.バーチャルキーボードを表示する"+chr$(13)
2840 print "2.バーチャルキーボードを表示しない"+chr$(13)
2850 print "3.プログラムを終了する"+chr$(13)
2860 color rgb(0,0,0)
2870 Input"番号:",keyNo
2880 if keyNo = 1 then init"kb:2"
2890 if keyNo = 2 then init"kb:0"
2900 if keyNo = 3 then color rgb(255,255,255):cls 3:end
2910 if keyNo > 3 or keyNo = 0 then goto Select_keybord:
2920 'メイン画面 Top画面1
2930 Main_Screen:
2940 cls 3:font 48:color rgb(255,255,255),,rgb(176,196,222):No=0
2950 talk "メイン画面です、番号を選んで、エンターキーを押してください"
2960 'Text ,Grapgic clear:cls 3
2970 'グラフィック領域　ここから
2980 line (0,0)-(570,60),rgb(0,0,255),bf
2990 pen 5:line (0,0)-(567,57),rgb(127,255,212),b
3000 line (0,60)-(570,460),rgb(127,255,212),bf
3010 pen 5:line (0,57)-(567,457),rgb(0,0,255),b
3020 line (0,460)-(570,640),rgb(0,255,0),bf
3030 'グラフィック領域 ここまで
3040 pen 5:line (0,457)-(567,637),rgb(0,0,255),b
3050 'gload "Picture/Main_Screen.png",0,0,0
3060 Font 48
3070 print"◎姓名判断　メイン画面"+chr$(13)
3080 '文字色:黒
3090 color rgb(255,0,255)
3100 print"1.姓名判断"+chr$(13)
3110 print"2.姓名判断の漢字" + chr$(13)
3120 print"3.ヘルプ"+chr$(13)
3130 print"4.プログラムの終了"+chr$(13)
3140 'print"5.プログラム終了"+chr$(13)
3150 '文字:黒
3160 color rgb(0,0,0)
3170 print"番号を選んでください"+chr$(13)
3180 Input "番号:",No
3190 if No = 1  then goto seimeihandan_top:
3200 if No = 2 then goto seimeihandan_setting:
3210 if No = 3 then goto help:
3220 if No = 4  then talk"終了します":cls 3:end
3230 'if No = 0  then goto Main_Screen:
3240 if  No > 4 or No = 0  then ui_msg"無効な番号です、もう一度入れ直してください。":goto Main_Screen:
3250 '1.姓名判断トップ画面
3260 seimeihandan_top:
3270 cls:screen 1,1
3280 'タイトル文字:白
3290 font 48:color rgb(255,255,255),,rgb(176,196,222)
3300 talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでエンターキーを押してください"
3310 'グラフィック 描画領域　ここから
3320 'Main_Screen:
3330 cls 3
3340 '1.Title:青
3350 'Line 1
3360 line (0,0)-(890,60),rgb(0,0,255),bf
3370 pen 5:line(0,0)-(887,57),rgb(127,255,212),b
3380 'Line 2
3390 line (0,60)-(890,265),rgb(127,255,212),bf
3400 PEN 5:line(0,57)-(887,262),rgb(0,0,255),b
3410 'Line 3
3420 line (0,265)-(890,400),rgb(0,255,0),bf
3430 pen 5:line (0,262)-(887,397),rgb(0,0,0),b
3440 'グラフィック 描画領域 ここまで
3450 color rgb(255,255,255)
3460 print"◎姓名判断の種類トップメニュー"+chr$(13)
3470 color rgb(255,0,255):print"1.霊遺伝姓名学" + chr$(13)
3480 COLOR rgb(255,0,255):print"2.前の画面に戻る" + chr$(13)
3490 color rgb(0,0,0):Print"番号を選んでエンターを押してください"
3500 color rgb(0,0,0):Input"番号:",selectNo
3510 IF selectNo = 1 then goto Reiden_Top_Input_Sextype:
3520 if selectNo = 2 then goto Main_Screen:
3530 if selectNo > 2 or selectNo = 0 then ui_msg"無効な番号です。入れ直してください。":goto seimeihandan_top:
3540 '2.設定
3550 seimeihandan_setting:
3560 font 46:color rgb(0,0,0),,rgb(176,196,222)
3570 talk"設定画面です。番号を選んでエンターキーを押してください"
3580 'グラフィック領域　ここから
3590 cls 3:
3600 line (0,0)-(750,60),rgb(0,0,255),bf
3610 pen 5:line (0,0)-(747,57),rgb(127,255,212),b
3620 line (0,60)-(750,460),rgb(127,255,212),bf
3630 pen 5:line (0,57)-(747,457),rgb(0,0,255),b
3640 line (0,460)-(750,650),rgb(0,255,0),bf
3650 pen 5:line(0,457)-(747,647),rgb(0,0,255),b
3660 'グラフィック領域 ここまで
3670 '1行目　文字色　 白
3680 color rgb(255,255,255):print"姓名判断　設定画面トップ画面" + chr$(13)
3690 color rgb(255,0,255):print"1.登録文字の確認" + chr$(13)
3700 color rgb(255,0,255):print"2.登録文字数の表示" + chr$(13)
3710 color rgb(255,0,255):print"3.前の画面に戻る" + chr$(13)
3720 color rgb(255,0,255):print"4.プログラムの終了" + chr$(13)
3730 COLOR rgb(0,0,0)
3740 print"番号を選んでください"+chr$(13)
3750 Input"番号:",selectNo
3760 if selectNo=1 then goto Entry_moji_Top:
3770 if selectNo=2 then goto Entry_moji_check_count:
3780 if selectNo=3 then goto Main_Screen:
3790 if selectNo=4 then talk"終了します":cls 3:end
3800 if selectNo > 4 or selectNo = 0 then goto seimeihandan_setting:
3810 '3 番号で吉凶を見る 入力
3820 Moji_Kikkyo_Top:
3830 font 32:color rgb(0,0,0),,rgb(176,196,222)
3840 'グラフィック描画領域　ここから
3850 cls 3
3860 line (0,0)-(650,60),rgb(0,0,255),bf
3870 pen 5:line(0,0)-(645,57),rgb(127,255,212),b
3880 line (0,60)-(650,255),rgb(127,255,212),bf
3890 PEN 5:line(0,57)-(647,252),rgb(0,0,255),b
3900 line (0,255)-(650,350),rgb(0,255,0),bf
3910 pen 5:line(0,252)-(647,347),rgb(0,0,255),b
3920 'グラフィック描画領域 ここまで
3930 color rgb(255,255,255)
3940 print"画数での吉凶判定"+chr$(13)
3950 color rgb(255,0,255)
3960 print"画数を入れてください"+chr$(13)
3970 print"(Max:81文字)"+chr$(13)
3980 color rgb(0,0,0)
3990 Input"文字の画数:",Number
4000 if Number > 81 then goto Moji_Kikkyo_Top:
4010 if Number <=81 then end
4020 '3.番号で吉凶を見る 結果表示
4030 'グラフィック描画領域　ここから
4040 Entry_moji_check:
4050 cls 3
4060 '1行目
4070 line (0,0)-(840,58),rgb(0,0,255),bf
4080 pen 5:line(0,0)-(837,55),rgb(127,255,212),b
4090 '2行目
4100 line (0,58)-(840,100),rgb(127,255,212),bf
4110 PEN 5:line(0,55)-(837,97),rgb(0,0,0),b
4120 '3行目
4130 line (0,100)-(840,280),rgb(0,0,255),bf
4140 pen 5:LINE(0,103)-(837,277),rgb(127,255,212),b
4150 '4行目
4160 line (0,280)-(840,340),rgb(0,255,0),bf
4170 pen 5:line(0,277)-(837,337),rgb(0,0,0),b
4180 'グラフィック描画領域　ここまで
4190 totalmoji=Moji_1+Moji2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24
4200 color rgb(255,255,255):print "登録文字画数結果表示"
4210 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
4220 'endif
4230 color rgb(255,255,255)
4240 print"q+エンターキー:トップ画面"+chr$(13)
4250 print"エンターキー:もう一度やる"+chr$(13)
4260 color rgb(0,0,0)
4270 print"コマンド:"
4280 key$=Input$(1)
4290 if key$=chr$(13)  then buffer_count=0:goto Entry_moji_Top:
4300 if key$="q" then buffer_count=0:goto Main_Screen:
4310 if not(key$="q") then goto Moji_count_check:
4320 Entry_moji_Top:
4330 cls 3:line (0,0)-(1050,65),rgb(0,0,255),bf
4340 pen 5:line(0,0)-(1047,62),rgb(127,255,212),b
4350 line (0,62)-(1050,155),rgb(0,255,255),bf
4360 pen 5:line(0,59)-(1047,152),rgb(0,0,255),b
4370 line (0,155)-(1050,260),rgb(0,255,0),bf
4380 pen 5:line(0,152)-(1047,257),rgb(0,0,255),b
4390 'グラフィック領域　ここまで
4400 talk"調べたい文字をひと文字入れてください。"
4410 '文字:白
4420 color rgb(255,255,255):print"登録文字の確認"+chr$(13)
4430 '文字:アクア
4440 color rgb(255,0,0):print"文字を入力してエンターキーを押してください"+chr$(13)
4450 color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
4460 if name$="" then ui_msg"文字が空白です。入れ直してください。":goto Entry_moji_Top:
4470 if (len(name$)>1) then ui_msg("１文字で入れてください"):goto Entry_moji_Top:
4480 '1画の文字
4490 for i=0 to ((Moji_1)-1)
4500 if (name$=buf_char_hiragana1$(i)) then
4510 buffer_count=1:goto Moji_count_check:
4520 endif
4530 next i
4540 '2画の文字
4550 for i=0 to ((Moji_2)-1)
4560 if (name$=buf_char_hiragana2$(i)) then
4570 buffer_count=2:goto Moji_count_check:
4580 endif
4590 next i
4600 '3画の文字
4610 for i=0 to ((Moji_3)-1)
4620 if (name$=buf_char_hiragana3$(i)) then
4630 buffer_count=3:goto Moji_count_check:
4640 endif
4650 next i
4660 '4画の文字
4670 for i=0 to ((Moji_4)-1)
4680 if (name$=buf_char_hiragana4$(i)) then
4690 buffer_count=4:goto Moji_count_check:
4700 endif
4710 next i
4720 '5画の文字
4730 for i=0 to ((Moji_5)-1)
4740 if (name$=buf_char_hiragana5$(i)) then
4750 buffer_count=5:goto Moji_count_check:
4760 endif
4770 next i
4780 '6画の文字
4790 for i=0 to ((Moji_6)-1)
4800 if (name$=buf_char_hiragana6$(i)) then
4810 buffer_count=6:goto Moji_count_check:
4820 endif
4830 next i
4840 '7画の文字
4850 for i=0 to ((Moji_7)-1)
4860 if (name$=buf_char_hiragana7$(i)) then
4870 buffer_count=7:goto Moji_count_check:
4880 endif
4890 next i
4900 '8画の文字 120 文字
4910 for i=0 to ((Moji_8)-1)
4920 if (name$=buf_char_hiragana8$(i)) then
4930 buffer_count=8:goto Moji_count_check:
4940 endif
4950 next i
4960 '9画の文字  103文字
4970 for i=0 to ((Moji_9)-1)
4980 if (name$=buf_char_hiragana9$(i)) then
4990 buffer_count=9:goto Moji_count_check:
5000 endif
5010 next i
5020 '10画の文字 98文字
5030 for i=0 to ((Moji_10)-1)
5040 if (name$=buf_char_hiragana10$(i)) then
5050 buffer_count=10:goto Moji_count_check:
5060 endif
5070 next i
5080 '11画の文字 98文字
5090 for i=0 to ((Moji_11)-1)
5100 if (name$=buf_char_hiragana11$(i)) then
5110 buffer_count=11:goto Moji_count_check:
5120 endif
5130 next i
5140 '12画の文字
5150 for i=0 to ((Moji_12)-1)
5160 if (name$=buf_char_hiragana12$(i)) then
5170 buffer_count=12:goto Moji_count_check:
5180 endif
5190 next i
5200 '13画の文字
5210 for i=0 to ((Moji_13)-1)
5220 if (name$=buf_char_hiragana13$(i)) then
5230 buffer_count=13:goto Moji_count_check:
5240 endif
5250 next i
5260 '14画の文字
5270 for i=0 to ((Moji_14)-1)
5280 if (name$=buf_char_hiragana14$(i)) then
5290 buffer_count=14:goto Moji_count_check:
5300 endif
5310 next i
5320 '15画の文字
5330 for i=0 to ((Moji_15)-1)
5340 if (name$=buf_char_hiragana15$(i)) then
5350 buffer_count=15:goto Moji_count_check:
5360 endif
5370 next i
5380 '16画の文字
5390 for i=0 to ((Moji_16)-1)
5400 if (name$=buf_char_hiragana16$(i)) then
5410 buffer_count=16:goto Moji_count_check:
5420 endif
5430 next i
5440 '17画の文字
5450 for i=0 to ((Moji_17)-1)
5460 if (name$=buf_char_hiragana17$(i)) then
5470 buffer_count=17:goto Moji_count_check:
5480 endif
5490 next i
5500 '18画の文字 25
5510 for i=0 to ((Moji_18)-1)
5520 if (name$=buf_char_hiragana18$(i)) then
5530 buffer_count=18:goto Moji_count_check:
5540 endif
5550 next i
5560 '19画の文字 17
5570 for i=0 to ((Moji_19)-1)
5580 if (name$=buf_char_hiragana19$(i)) then
5590 buffer_count=19:goto Moji_count_check:
5600 endif
5610 next i
5620 '20画の文字 13
5630 for i=0 to ((Moji_20)-1)
5640 if (name$=buf_char_hiragana20$(i)) then
5650 buffer_count=20:goto Moji_count_check:
5660 endif
5670 next i
5680 '21画の文字 6
5690 for i=0 to ((Moji_21)-1)
5700 if (name$=buf_char_hiragana21$(i)) then
5710 buffer_count=21:goto Moji_count_check:
5720 endif
5730 next i
5740 '22画の文字 4
5750 for i=0 to ((Moji_22)-1)
5760 if (name$=buf_char_hiragana22$(i)) then
5770 buffer_count=22:goto Moji_count_check:
5780 endif
5790 next i
5800 '23画の文字 3
5810 for i=0 to ((Moji_23)-1)
5820 if (name$=buf_char_hiragana23$(i)) then
5830 buffer_count=23:goto Moji_count_check:
5840 endif
5850 next i
5860 '24画の文字
5870 for i=0 to ((Moji_24)-1)
5880 if (name$=buf_char_hiragana24$(i)) then
5890 buffer_count=24:goto Moji_count_check:
5900 endif
5910 next i
5920 'Menu3 結果表示 画数の登録確認
5930 Moji_count_check:
5940 if (buffer_count = 0) then
5950 '登録文字がない場合の処理
5960 'グラフィック領域　ここから
5970 'Moji_count_check:
5980 cls 3
5990 '1行
6000 line (0,0)-(840,60),rgb(0,0,255),bf
6010 pen 5:line (0,0)-(837,57),rgb(127,255,212),b
6020 '2行目
6030 line (0,60)-(840,165),rgb(127,255,212),bf
6040 pen 5:line (0,57)-(837,162),rgb(0,0,255),b
6050 '3行目
6060 line (0,165)-(840,370),rgb(0,0,255),bf
6070 pen 5:line (0,162)-(837,367),rgb(0,255,0),b
6080 '4行目
6090 line (0,370)-(840,450),rgb(0,255,0),bf
6100 pen 5:line(0,367)-(837,447),rgb(0,0,0),b
6110 'グラフィック領域　ここまで
6120 color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
6130 color rgb(255,0,0):print name$;":この文字は、登録されていません"+chr$(13)
6140 talk "この文字は、登録されていません"
6150 color rgb(255,255,255):print"q:トップ画面"+chr$(13)
6160 COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
6170 color rgb(0,0,0):print"コマンド:"
6180 key$ = Input$(1)
6190 if key$ = "q" or key$ = "Q" then goto Main_Screen:
6200 if key$ = chr$(13) then goto Entry_moji_Top:
6210 else
6220 'グラフィック描画領域　ここから
6230 'Entry_moji_check:
6240 cls 3
6250 '1行目
6260 line (0,0)-(840,58),rgb(0,0,255),bf
6270 pen 5:line(0,0)-(837,55),rgb(127,255,212),b
6280 '2行目
6290 line (0,58)-(840,100),rgb(127,255,212),bf
6300 PEN 5:line(0,55)-(837,97),rgb(0,0,0),b
6310 '3行目
6320 line (0,100)-(840,280),rgb(0,0,255),bf
6330 pen 5:LINE(0,103)-(837,277),rgb(127,255,212),b
6340 '4行目
6350 line (0,280)-(840,340),rgb(0,255,0),bf
6360 pen 5:line(0,277)-(837,337),rgb(0,0,0),b
6370 'グラフィック描画領域　ここまで
6380 color rgb(255,255,255):print "登録文字画数結果表示"
6390 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
6400 endif
6410 color rgb(255,255,255)
6420 print"q+エンターキー:トップ画面"+chr$(13)
6430 print"エンターキー:もう一度やる"+chr$(13)
6440 color rgb(0,0,0)
6450 print"コマンド:"
6460 key$=Input$(1)
6470 if key$=chr$(13)  then buffer_count=0:goto Entry_moji_Top:
6480 if key$="q" then buffer_count=0:goto Main_Screen:
6490 if not(key$="q") then goto Moji_count_check:
6500 '
6510 'dif
6520 'グラフィック描画領域　ここから
6530 '登録文字数の確認
6540 Entry_moji_check_count:
6550 totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
6560 'グラフィック描画領域　ここから
6570 cls 3
6580 '1行目
6590 line (0,0)-(800,60),rgb(0,0,255),bf
6600 pen 5:line (0,0)-(797,57),rgb(127,255,212),b
6610 '2行目
6620 line (0,60)-(800,150),rgb(157,255,212),bf
6630 pen 5:line(0,57)-(797,147),rgb(0,0,255),b
6640 '3行目
6650 line (0,150)-(800,250),rgb(0,255,0),bf
6660 pen 5:line(0,147)-(797,247),rgb(0,0,255),b
6670 'グラフィック描画領域 ここまで
6680 color rgb(255,255,255)
6690 PRINT"登録文字数の確認"+chr$(13)
6700 color rgb(255,0,255)
6710 PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
6720 TALK"登録文字数は"+str$(totalmoji)+"もじです"
6730 color rgb(0,0,0)
6740 'print"エンターキーを押してください"+chr$(13)
6750 'key$=Input$(1)
6760 print"エンターキーを押してください"
6770 key$=Input$(1)
6780 if key$ = chr$(13) then goto Main_Screen:'霊遺伝姓名学 ここから
6790 'グラフィック領域　ここから
6800 '性別入力
6810 Reiden_Top_Input_Sextype:
6820 cls 3
6830 'Line1
6840 line (0,0)-(850,60),rgb(0,0,255),bf
6850 line (0,0)-(847,57),rgb(0,255,0),b
6860 'Line 2
6870 line (0,63)-(853,537),rgb(127,255,212),bf
6880 line (0,60)-(850,540),rgb(0,0,0),b
6890 'Line 3
6900 line (0,540)-(850,630),rgb(0,255,0),bf
6910 line (0,543)-(853,633),rgb(0,0,255),b
6920 'グラフィック領域　ここまで
6930 '音声表示
6940 talk "霊遺伝生命学　性別の選択です。占う方の性別を入れてください"
6950 '性別変数:sex_type=0
6960 '文字色： 白
6970 color rgb(255,255,255):print"霊遺伝姓名学 性別の選択" + chr$(13)
6980 '文字色：赤
6990 color rgb(255,0,255)
7000 print"占う人の性別の番号を入れてください" + chr$(13)
7010 print"1.女 性" + chr$(13)
7020 print"2.男 性" + chr$(13)
7030 print"3.前の画面に戻る" + chr$(13)
7040 print"4.終 了" + chr$(13)
7050 color rgb(0,0,0)
7060 Input"番号:",No
7070 '2:男性の場合 名前を入力
7080 '男性の性別:sex_type=2
7090 if No=2 then sex_type=2:goto ReiIden_Input_male:
7100 '1:女性の場合 既婚の場合、旧姓で入力
7110 '女性の性別:sex_type=1
7120 if No=1 then sex_type=1:goto ReiIden_Input_female:
7130 '3:終了処理
7140 if No=4 then cls 3:end
7150 if No=3 then goto Main_Screen:
7160 if No >4 then goto Reiden_Top_Input_Sextype:
7170 '１．男性の場合の名前入力
7180 '描画領域　ここから
7190 ReiIden_Input_male:
7200 cls 3
7210 'Line 1 Title
7220 line (0,0)-(850,60),rgb(0,0,255),bf
7230 line (0,0)-(850,57),rgb(0,255,0),b
7240 'Line2 Input name
7250 line (0,60)-(850,300),rgb(0,255,0),bf
7260 line (0,60)-(850,303),rgb(0,0,255),b
7270 '描画領域 ここまで
7280 '文字色：白
7290 color rgb(255,255,255)
7300 print "霊遺伝姓名学 名前の姓入力（男性）" + chr$(13)
7310 '文字色：黒
7320 color rgb(0,0,0)
7330 print "名前の姓の部分を入れてください" + chr$(13)
7340 Input"名前(姓の部分):",name1$
7350 '名の入力部分
7360 cls
7370 color rgb(255,255,255)
7380 print "霊遺伝姓名学 名前の名入力(男性)" + chr$(13)
7390 color rgb(0,0,0)
7400 print "名前の名の部分を入れてください"+chr$(13)
7410 Input"名前(名の部分):",name2$:goto check:
7420 '2.女性の場合　既婚か未婚か確認する
7430 '2-2-1女性の姓の入力
7440 'グラフィック領域　ここから
7450 ReiIden_Input_female:
7460 cls 3
7470 'Line1 Title
7480 line (0,0)-(850,60),rgb(0,0,255),bf
7490 line (0,0)-(850,57),rgb(0,255,0),b
7500 'Line 2 入力欄
7510 line (0,60)-(850,360),rgb(0,255,0),bf
7520 line (0,60)-(850,357),rgb(0,0,255),b
7530 'Line 2 入力欄(名前入力)
7540 'グラフィック領域 ここまで
7550 cls
7560 color rgb(255,255,255)
7570 print "霊遺伝姓名学 名前の姓入力(女性）"+chr$(13)
7580 color rgb(255,0,0)
7590 print"既婚者の方は、旧姓を入れてください"+chr$(13)
7600 color rgb(0,0,0)
7610 print "名前の姓の部分を入れてください"+chr$(13)
7620 Input "名前(姓の部分):",name3$
7630 '2-2-2女性の名の入力
7640 cls
7650 color rgb(255,255,255)
7660 print "霊遺伝姓名学 名前の名の部分(女性)"+chr$(13)
7670 color rgb(0,0,0)
7680 print "名前の名の部分を入れてください"+chr$(13)
7690 Input "名前(名の部分):",name4$
7700 '計算領域　ここから
7710 check:
7720 '苗字の画数:buffer_name1_count
7730 'name1$,name2$:男性
7740 if sex_type = 1 then
7750 'sex_type=1 :女性のとき
7760 buf_male_female_name1$=name3$
7770 buf_male_female_name2$=name4$
7780 endif
7790 if sex_type = 2 then
7800 'sex_type=2 :男性のとき
7810 buf_male_female_name1$=name1$
7820 buf_male_female_name2$=name2$
7830 endif
7840 buffer_name1_count=len(buf_male_female_name1$)
7850 buffer_name2_count=len(buf_male_female_name2$)
7860 select case buffer_name1_count
7870 'AとBを求める
7880 case 1:
7890 '1.苗字の画数が1つのとき
7900 'A:霊数 1
7910 A=1
7920 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
7930 B = char_count(buf_name1$)
7940 case 2:
7950 '2.苗字の画数が2つのとき
7960 '2-1:苗字の1文字目:buf_name1$
7970 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
7980 '2-2:苗字の2文字目:buf_name2$
7990 buf_name2$ = Mid$(buf_male_female_name1$,2,1)
8000 A=char_count(buf_name1$)
8010 B=char_count(buf_name2$)
8020 'B=char_count(buf_name2$)
8030 case 3:
8040 '3.苗字の画数が3つの時
8050 '3-1:苗字の1文字目:buf_name1$
8060 buf_name1$=Mid$(buf_male_female_name1$,1,1)
8070 '3-2:苗字が3つのときの2つ目の文字をもとめる
8080 '3-2:苗字の2つ目:buf_name2$
8090 buf_name2$=Mid$(buf_male_female_name1$,2,1)
8100 '3-3:苗字が3つのときの3文字目
8110 '3-3:苗字の3文字目buf_name3$(name1$,3,1)
8120 buf_name3$ = Mid$(buf_male_female_name1$,3,1)
8130 if buf_name2$="々" then
8140 A = char_count(buf_name1$) * 2
8150 B = char_count(buf_name3$)
8160 else
8170 A = char_count(buf_name1$) + char_count(buf_name2$)
8180 B = char_count(buf_name3$)
8190 endif
8200 '姓が4文字
8210 case 4:
8220 buf_name1$=Mid$(buf_male_female_name1$,1,1)
8230 buf_name2$=Mid$(buf_male_female_name1$,2,1)
8240 buf_name3$=Mid$(buf_male_female_name1$,3,1)
8250 buf_name4$=Mid$(buf_male_female_name1$,4,1)
8260 A=char_count(buf_name1$)+char_count(buf_name2$)+char_count(buf_name3$)
8270 B=char_count(buf_name4$)
8280 case else:
8290 end select
8300 '2.C,Dを求める
8310 select case buffer_name2_count
8320 case 1:
8330 '名が1文字の時
8340 'CとDを求める
8350 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
8360 C = char_count(buff_name1$)
8370 'D=1:霊数
8380 D = 1
8390 case 2:
8400 '名が2文字の時
8410 'CとDを求める
8420 '名の1文字目:buff_name1$
8430 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
8440 '名の2文字目:buff_name2$
8450 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
8460 C = char_count(buff_name1$)
8470 D = char_count(buff_name2$)
8480 case 3:
8490 '名が3文字の時
8500 'CとDを求める
8510 '名の1文字目:buff_name1$
8520 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
8530 '名の2文字目:buff_name2$
8540 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
8550 if buff_name2$ = "々" then
8560 buff_name2$ = buff_name1$
8570 endif
8580 '名の3文字目:buff_name3$
8590 buff_name3$ = Mid$(buf_male_female_name2$,3,1)
8600 C = char_count(buff_name1$)
8610 D = char_count(buff_name2$) + char_count(buff_name3$)
8620 end select
8630 '1.先祖運を求める
8640 buffer_Senzo = A + B
8650 '2.性格運を求める
8660 buffer_Seikaku = B + C
8670 '3.愛情運を求める
8680 buffer_Aijyou = C + D
8690 '4.行動運を求める
8700 buffer_Kouzou = A + D
8710 'if buffer_Kouzou=10 then
8720 'endif
8730 '1.生数を求める
8740 func buf_Seisu(buffer)
8750 if buffer < 10 then
8760 seisu=buffer
8770 endif
8780 if buffer = 10 or buffer = 0 or buffer=20 or buffer=30 then
8790 seisu = 0
8800 endif
8810 if buffer > 10 then
8820 if buffer=20 then
8830 seisu = 0
8840 else
8850 n = buffer - (fix(buffer / 10) * 10)
8860 seisu = n
8870 endif
8880 endif
8890 endfunc seisu
8900 '和数を求める
8910 func buf_Wasu(buffer)
8920 buf_wasu = 0:wasu = 0
8930 if buffer < 10 then
8940 '
8950 wasu = buffer:goto wasu:
8960 else
8970 if buffer = 10 then
8980 wasu = 1:goto wasu:
8990 else
9000 if buffer > 10  then
9010 if buffer=19 or buffer=28 or buffer=37 then
9020 wasu=1:goto wasu:
9030 else
9040 if buffer = 29 then
9050 wasu=2:goto wasu:
9060 'endif
9070 else
9080 a = fix(buffer / 10)
9090 b = buffer - a * 10
9100 c = a + b
9110 if c = 19 or c=28 then
9120 wasu=1
9130 '
9140 else
9150 wasu=c
9160 endif
9170 endif
9180 endif
9190 endif
9200 endif
9210 if c < 10 then
9220 wasu = c
9230 'endif
9240 endif
9250 else
9260 if buffer=19 or buffer=28 then
9270 wasu = 1
9280 endif
9290 endif
9300 wasu:
9310 buf_wasu=wasu
9320 endfunc buf_wasu
9330 func buf_kyoudai$(buf_sex_type,buf_Sa$)
9340 select case buf_sex_type
9350 '1.女性の場合
9360 case 1:
9370 if (buf_Sa$ = "連続") then
9380 buffer_kyoudai$="長女"
9390 endif
9400 if (buf_Sa$ = "1差") then
9410 buffer_kyoudai$="次女"
9420 endif
9430 if (buf_Sa$ = "2差") then
9440 buffer_kyoudai$="三女"
9450 endif
9460 if (buf_Sa$ = "3差") then
9470 buffer_kyoudai$="四女"
9480 endif
9490 if (buf_Sa$ = "4差") then
9500 buffer_kyoudai$="五女"
9510 endif
9520 '男性の場合
9530 case 2:
9540 if (buf_Sa$ = "連続") then
9550 buffer_kyoudai$="長男"
9560 endif
9570 if (buf_Sa$ = "1差") then
9580 buffer_kyoudai$="次男"
9590 endif
9600 if (buf_Sa$ = "2差") then
9610 buffer_kyoudai$="三男"
9620 endif
9630 if (buf_Sa$ = "3差") then
9640 buffer_kyoudai$="四男"
9650 endif
9660 if (buf_Sa$ = "4差") then
9670 buffer_kyoudai$="五男"
9680 endif
9690 case else:
9700 end select
9710 kyoudai$=buffer_kyoudai$
9720 endfunc kyoudai$
9730 '1.タテ型
9740 '1.同じ数字が2組ある場合
9750 func Tate_gata$()
9760 if Senzo_wasu = Seikaku_wasu  then
9770 if Aijyou_wasu - Seikaku_wasu > 1 then
9780 Spirit_type$="タテ型"
9790 Sa_count = Aijyou_wasu - Seikaku_wasu - 1
9800 Sa$ = str$(Sa_count) + "差"
9810 else
9820 Spirit_type$="タテ型"
9830 Sa$="連続"
9840 endif
9850 endif
9860 endfunc
9870 '2. ナナメ型
9880 '同じ数字が2組ある場合
9890 func Naname_gata$()
9900 if  Senzo_wasu = Koudou_wasu And  Seikaku_wasu = Aijyou_wasu then
9910 Spirit_type$="斜め型"
9920 endif
9930 if Seikaku_wasu - Senzo_wasu > 1 then
9940 Sa_count = Seikaku_wasu  -  Senzo_wasu  -  1
9950 Sa$=str$(Sa_count)+" 差"
9960 else
9970 Sa$="連続"
9980 endif
9990 endfunc
10000 '3.表十字型
10010 '同じ数字が2組ある場合
10020 func Omote_jyuji_gata1$()
10030 if Senzo_wasu = Aijyou_wasu  And  Kouzou_wasu = Seikaku_wasu then
10040 Spirit_type$ = "表十字型"
10050 endif
10060 if Senzo _wasu - Seikaku_wasu > 1 then
10070 Sa_count = Senzo_wasu - Seikaku_wasu - 1
10080 else
10090 if Senzo_wasu  -  Seikaku_wasu = 1  then
10100 Sa$="連続"
10110 endif
10120 endif
10130 endfunc
10140 Spirit_type$="No data"
10150 '1.先祖運　和数
10160 Senzo_wasu = buf_Wasu(buffer_Senzo)
10170 '2.先祖運 生数
10180 Senzo_seisu = buf_Seisu(buffer_Senzo)
10190 '3.性格運 和数
10200 Seikaku_wasu = buf_Wasu(buffer_Seikaku)
10210 '4.性格運 生数
10220 Seikaku_seisu = buf_Seisu(buffer_Seikaku)
10230 '5.愛情運 和数
10240 Aijyou_wasu = buf_Wasu(buffer_Aijyou)
10250 '6.愛情運 生数
10260 Aijyou_seisu = buf_Seisu(buffer_Aijyou)
10270 '7.行動運 和数
10280 Koudou_wasu = buf_Wasu(buffer_Kouzou)
10290 '8.行動運 生数
10300 Koudou_seisu = buf_Seisu(buffer_Kouzou)
10310 '計算領域 ここまで
10320 '描画領域　ここから
10330 Result_ReiIden1:
10340 cls 3
10350 'Title
10360 line (0,0)-(850,60),rgb(0,0,255),bf
10370 pen 3:line (0,0)-(850,57),rgb(255,255,255),b
10380 'name
10390 line (0,60)-(850,165),rgb(0,255,0),bf
10400 pen 5:line (0,63)-(850,162),rgb(255,0,255),b
10410 '生数、和数
10420 line (0,165)-(850,550),rgb(125,255,212),bf
10430 pen 3:line(0,168)-(850,547),rgb(0,0,255),b
10440 'プッシュメッセージ
10450 line (0,550)-(850,650),rgb(0,255,0),bf
10460 pen 5:line (0,553)-(850,653),rgb(0,0,0),b
10470 '描画領域　ここまで
10480 color rgb(255,255,255)
10490 print "霊遺伝姓名学　診断結果１/2"+chr$(13)
10500 color rgb(0,0,0)
10510 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
10520 color rgb(255,0,255)
10530 print "1.先祖運";" ";"和数:";Senzo_wasu;"生数:";Senzo_seisu;chr$(13)
10540 print "2.性格運";" ";"和数:";Seikaku_wasu;"生数:";Seikaku_seisu;" ";chr$(13)
10550 print "3.愛情運";" ";"和数:";Aijyou_wasu;"生数:";Aijyou_seisu;chr$(13)
10560 print "4.行動運";" ";"和数:";Koudou_wasu;"生数:";Koudou_seisu;chr$(13)
10570 talk "診断結果１です、あなたのわすうとせいすうです。"
10580 color rgb(0,0,0)
10590 print"エンターキーを押してください"
10600 key$ = Input$(1)
10610 if key$ = chr$(13) then goto Jyuni_KisoUnn:
10620 '姓名判断データー文字比較
10630 '画数を求める関数
10640 func char_count(buf_count$)
10650 count=0:buffer=0
10660 '1画の文字 23文字
10670 for j=0 to ((Moji_1)-1)
10680 if buf_count$=buf_char_hiragana1$(j) then
10690 count =1:
10700 endif
10710 next j
10720 '2画の文字
10730 for j=0 to ((Moji_2)-1)
10740 if buf_count$=buf_char_hiragana2$(j)  then
10750 count = 2:
10760 endif
10770 next j
10780 for j=0 to ((Moji_3)-1)
10790 if buf_count$=buf_char_hiragana3$(j) then
10800 count =3:
10810 endif
10820 next j
10830 for j=0 to ((Moji_4)-1)
10840 if buf_count$=buf_char_hiragana4$(j) then
10850 count = 4:
10860 endif
10870 next j
10880 for j=0 to ((Moji_5)-1)
10890 if buf_count$=buf_char_hiragana5$(j) then
10900 count = 5:
10910 endif
10920 next j
10930 for j=0 to ((Moji_6)-1)
10940 if buf_count$=buf_char_hiragana6$(j) then
10950 count= 6
10960 endif
10970 next j
10980 for  j=0 to ((Moji_7)-1)
10990 if buf_count$=buf_char_hiragana7$(j) then
11000 count=  7
11010 endif
11020 next j
11030 for j=0 to ((Moji_8)-1)
11040 if buf_count$=buf_char_hiragana8$(j) then
11050 count= 8
11060 endif
11070 next j
11080 for j=0 to ((Moji_9)-1)
11090 if buf_count$=buf_char_hiragana9$(j) then
11100 count=9
11110 endif
11120 next j
11130 for j=0 to ((Moji_10)-1)
11140 if buf_count$=buf_char_hiragana10$(j) then
11150 count=10
11160 endif
11170 next j
11180 for j=0 to ((Moji_11)-1)
11190 if buf_count$=buf_char_hiragana11$(j) then
11200 count=11
11210 endif
11220 next j
11230 for j=0 to  ((Moji_12)-1)
11240 if buf_count$=buf_char_hiragana12$(j) then
11250 count=12
11260 endif
11270 next j
11280 for j=0 to ((Moji_13)-1)
11290 if buf_count$=buf_char_hiragana13$(j) then
11300 count=13
11310 endif
11320 next j
11330 for j=0 to ((Moji_14)-1)
11340 if buf_count$=buf_char_hiragana14$(j) then
11350 count=14
11360 endif
11370 next j
11380 for j=0 to ((Moji_15)-1)
11390 if buf_count$=buf_char_hiragana15$(j) then
11400 count=15
11410 endif
11420 next j
11430 for j=0 to ((Moji_16)-1)
11440 if buf_count$=buf_char_hiragana16$(j) then
11450 count=16
11460 endif
11470 next j
11480 for j=0 to ((Moji_17)-1)
11490 if buf_count$=buf_char_hiragana17$(j) then
11500 count=17
11510 endif
11520 next j
11530 for j=0 to ((Moji_18)-1)
11540 if buf_count$=buf_char_hiragana18$(j) then
11550 count=18
11560 endif
11570 next j
11580 for j=0 to ((Moji_19)-1)
11590 if buf_count$=buf_char_hiragana19$(j) then
11600 count=19
11610 endif
11620 next j
11630 for j=0 to ((Moji_20)-1)
11640 if buf_count$=buf_char_hiragana20$(j) then
11650 count=20
11660 endif
11670 next i
11680 for j=0 to ((Moji_21)-1)
11690 if buf_count$=buf_char_hiragana21$(j) then
11700 count=21
11710 endif
11720 next j
11730 for j=0 to ((Moji_22)-1)
11740 if buf_count$=buf_char_hiragana22$(j) then
11750 count=22
11760 endif
11770 next j
11780 for j=0 to ((Moji_23)-1)
11790 if buf_count$=buf_char_hiragana23$(j) then
11800 count=23
11810 endif
11820 next j
11830 for j=0 to ((Moji_24)-1)
11840 if buf_count$=buf_char_hiragana24$(j) then
11850 count=24
11860 endif
11870 buffer = count
11880 next j
11890 endfunc buffer
11900 '3.ヘルプ
11910 help:
11920 cls 3:font 48:color rgb(0,0,0),,rgb(176,196,222)
11930 '描画領域 ここから
11940 line (0,0)-(550,60),rgb(0,0,255),bf
11950 pen 5:line(0,0)-(547,57),rgb(127,255,212),b
11960 line (0,60)-(550,470),rgb(127,255,212),bf
11970 pen 5:line(0,57)-(547,467),rgb(0,0,255),b
11980 line (0,470)-(550,550),rgb(0,255,0),bf
11990 pen 5:line(0,467)-(547,547),rgb(0,0,255),b
12000 '描画領域　ここまで
12010 talk "へるぷがめんです。番号を選んでエンターキーを押してください。"
12020 color rgb(255,255,255):print "姓名判断　ヘルプ"+chr$(13)
12030 color rgb(255,0,255):print"1.バージョン情報"+chr$(13)
12040 color rgb(255,0,255):print"2.参考文献"+chr$(13)
12050 color rgb(255,0,255):print"3.前の画面に戻る"+chr$(13)
12060 color rgb(255,0,255):PRINT"4.プログラムの終了"+chr$(13)
12070 color rgb(0,0,0):Input"番号:",selectNo
12080 if selectNo=1 then goto Version_Info:
12090 if selectNo=2 then goto Reference_Book:
12100 'プログラムの終了
12110 if selectNo=4 then talk"終了いたします":cls 3:end
12120 if selectNo=3 then goto Main_Screen:
12130 '十二基礎運を求める
12140 Jyuni_KisoUnn:
12150 buffer_Kiso(0)=Senzo_wasu
12160 buffer_Kiso(1)=Seikaku_wasu
12170 buffer_Kiso(2)=Aijyou_wasu
12180 buffer_Kiso(3)=Koudou_wasu
12190 'シャッフル前の処理 ここから
12200 ' 5.オール同数型
12210 if (buffer_Kiso(0) = buffer_Kiso(1) and  buffer_Kiso(2) = buffer_Kiso(3) and  buffer_Kiso(1)=buffer_Kiso(2)) then
12220 Kisoun$ = "オール同数型":goto shuffle:
12230 else
12240 '　1.タテ型
12250 if (((buffer_Kiso(1) - buffer_Kiso(0)) = 0) and (buffer_Kiso(3) - buffer_Kiso(2)) = 0) and (buffer_Kiso(3) - buffer_Kiso(1) = 3) then
12260 Kisoun$="タテ型":goto shuffle:
12270 else
12280 '2.ヨコ型
12290 if (buffer_Kiso(1)=buffer_Kiso(3) and abs(buffer_Kiso(0) - buffer_Kiso(2)) > 1) then
12300 Kisoun$="ヨコ型":goto shuffle:
12310 else
12320 '3.斜め型
12330 if ((buffer_Kiso(0)=buffer_Kiso(3)) and (buffer_Kiso(1) = buffer_Kiso(2)) and (buffer_Kiso(0) <> buffer_Kiso(1))) then
12340 Kisoun$="斜め型":goto shuffle:
12350 else
12360 '4.上下型
12370 if (buffer_Kiso(0) = buffer_Kiso(2) and buffer_Kiso(1) - buffer_Kiso(0)>1 and buffer_Kiso(1) - buffer_Kiso(2)>1 and buffer_Kiso(1)-buffer_Kiso(3) > 1) then
12380 Kisoun$="上下型":goto shuffle:
12390 else
12400 '5.オール同数型
12410 'if (buffer_Kiso(0) = buffer_Kiso(1) = buffer_Kiso(2) = buffer_Kiso(3)) then
12420 'Kisoun$="オール同数型":goto shuffle:
12430 'else
12440 '6.表十字型
12450 if ((buffer_Kiso(0) = buffer_Kiso(2)) and (buffer_Kiso(3) - buffer_Kiso(1)=1)) then
12460 Kisoun$="表十字型":goto shuffle:
12470 else
12480 '6-2.表十字型 (ヨコ系)
12490 if ((buffer_Kiso(1) - buffer_Kiso(3) = 0) and (buffer_Kiso(2) - buffer_Kiso(0) = 1)) then
12500 Kisoun$="表十字型(ヨコ系)":goto shuffle:
12510 else
12520 '6-3.表十字型 (上下系)
12530 if ((buffer_Kiso(2)-buffer_Kiso(0)=0) and (buffer_Kiso(1)-buffer_Kiso(3)=1)) then
12540 Kisoun$="表十字型(上下系)":goto shuffle:
12550 else
12560 '7-1.順序型(タテ・上下系)
12570 if (((buffer_Kiso(2)-buffer_Kiso(3))=1) and (abs(buffer_Kiso(1) - buffer_Kiso(0) = 1)) and ((buffer_Kiso(0)-buffer_Kiso(2))=1)) then
12580 Kisoun$="順序型(タテ ・上下系)":goto shuffle:
12590 else
12600 if () then
12610 '7-2.順序型(タテ・横系)
12620 if ((buffer_Kiso(3) - buffer_Kiso(2) = 1) and (buffer_Kiso(1) - buffer_Kiso(3)=1) and ((buffer_Kiso(0)=1 and buffer_Kiso(1)=9) or (buffer_Kiso(0) - buffer_Kiso(1) = 1))) then
12630 Kisoun$="順序型(タテ・ヨコ系)":goto shuffle:
12640 else
12650 '7-3.順序型(斜め・上下系)
12660 if ((buffer_Kiso(3)-buffer_Kiso(0)=1) and (buffer_Kiso(0)-buffer_Kiso(2)=1) and (buffer_Kiso(2)-buffer_Kiso(1)=1)) then
12670 Kisoun$="順序型(斜め・上下系)":goto shuffle
12680 else
12690 '7-4.順序型(斜め・ヨコ系)
12700 if ((buffer_Kiso(0) - buffer_Kiso(3)) = 1 and buffer_Kiso(3) - buffer_Kiso(1) = 1 and buffer_Kiso(1) - buffer_Kiso(2)=1) then
12710 Kisoun$="順序型(斜め・ヨコ系)":goto shuffle
12720 else
12730 '8-1.隔離型(タテ・上下系)
12740 if ((buffer_Kiso(1)-buffer_Kiso(0) =2) and (buffer_Kiso(2)-buffer_Kiso(3)=2) and (buffer_Kiso(3)-buffer_Kiso(1)>2)) then
12750 Kisoun$="隔離型(タテ・上下系)":goto shuffle:
12760 else
12770 '8-2.隔離型(タテ・ヨコ系)
12780 if ((buffer_Kiso(1) - buffer_Kiso(0)=2) and (buffer_Kiso(3) - buffer_Kiso(1)=2) and (buffer_Kiso(2) - buffer_Kiso(3)=2)) then
12790 Kisoun$="隔離型(タテ・ヨコ系)":goto shuffle:
12800 else
12810 '8-3.隔離型(斜め・上下系)
12820 if ((buffer_Kiso(3)-buffer_Kiso(0)=2) and (buffer_Kiso(2)-buffer_Kiso(1)=2) and (buffer_Kiso(1) - buffer_Kiso(3) = 3)) then
12830 Kisoun$="隔離型(斜め・上下系)":goto shuffle:
12840 else
12850 '8-4.隔離型(斜め・ヨコ系)
12860 if ((buffer_Kiso(0)-buffer_Kiso(3)=2) and (buffer_Kiso(3)-buffer_Kiso(1)=2) and (buffer_Kiso(1)-buffer_Kiso(2)=2) or (buffer_Kiso(1)=1 and buffer_Kiso(2)=8)) then
12870 Kisoun$="隔離型(斜め・ヨコ系)":goto shuffle:
12880 else
12890 '8-5.隔離型(タテ系)
12900 if ((buffer_Kiso(2) - buffer_Kiso(0) = 3) and (buffer_Kiso(0)-buffer_Kiso(1) = 2) and (buffer_Kiso(1)-buffer_Kiso(3) = 2)) then
12910 Kisoun$="隔離型(タテ系)":goto shuffle:
12920 else
12930 '8-6.隔離型(斜め系)
12940 if ((buffer_Kiso(3)-buffer_Kiso(0)=2) and (buffer_Kiso(2) - buffer_Kiso(1)=2) and (buffer_Kiso(1)-buffer_Kiso(3)=3)) then
12950 Kisoun$="隔離型(斜め系)":goto shuffle:
12960 '8-7.隔離型(上下・ヨコ系)
12970 else
12980 if ((buffer_Kiso(3)-buffer_Kiso(0)=2) and (buffer_Kiso(1)-buffer_Kiso(3)=2) and (buffer_Kiso(2)-buffer_Kiso(1)=3)) then
12990 Kisoun$="隔離型(上下・ヨコ系)":goto shuffle:
13000 else
13010 '9-1.中一差型 (タテ系)
13020 if ((buffer_Kiso(0) - buffer_Kiso(1) = 1) and (buffer_Kiso(3) - buffer_Kiso(2) = 1) and (buffer_Kiso(1) - buffer_Kiso(3) = 2)) then
13030 Kisoun$="中一差(タテ系)":goto shuffle:
13040 else
13050 '9-2.中一差(斜め系)
13060 if ((buffer_Kiso(3)-buffer_Kiso(0)=1) and (buffer_Kiso(2)-buffer_Kiso(1)=1) and (buffer_Kiso(0)-buffer_Kiso(2)=2)) then
13070 Kisoun$="中一差(斜め系)":goto shuffle:
13080 else
13090 '10-1.中二差(タテ系)
13100 if ((buffer_Kiso(0)-buffer_Kiso(1)=1) and (buffer_Kiso(3)-buffer_Kiso(2)=1) and buffer_Kiso(1)-buffer_Kiso(3)=3)  then
13110 Kisoun$="中二差(タテ系)":goto shuffle:
13120 else
13130 '10-2.中二差(斜め系)
13140 if ((buffer_Kiso(0)-buffer_Kiso(3)=1) and (buffer_Kiso(1)-buffer_Kiso(2)=1) and (buffer_Kiso(3)-buffer_Kiso(1)=3))  then
13150  Kisoun$="中二差(斜め系)":goto shuffle:
13160 else
13170 '11-1.中広型(タテ系)
13180 if ((buffer_Kiso(0)-buffer_Kiso(1)=1) and (buffer_Kiso(2)-buffer_Kiso(3)=1) and (buffer_Kiso(3)-buffer_Kiso(1)=4)) then
13190 Kisoun$="中広型(タテ系)":goto shuffle:
13200 endif
13210 endif
13220 endif
13230 endif
13240 endif
13250 endif
13260 endif
13270 endif
13280 endif
13290 endif
13300 endif
13310 endif
13320 endif
13330 endif
13340 endif
13350 endif
13360 endif
13370 endif
13380 endif
13390 endif
13400 endif
13410 endif
13420 endif
13430 endif
13440 endif
13450 'endif
13460 'シャッフル前の処理 ここまで
13470 shuffle:
13480 timer=0
13490 for i=0 to 3
13500 for j=3 to i+1 step -1
13510 if buffer_Kiso(j-1)>buffer_Kiso(j) then
13520 swap buffer_Kiso(j),buffer_Kiso(j-1)
13530 endif
13540 next j
13550 next i
13560 line (0,220)-(1200,280),rgb(0,255,0),bf
13570 cls 3
13580 color rgb(255,255,255)
13590 for j=0 to 3
13600 print buffer_Kiso(j);
13610 next j
13620 print timer;"msec"
13630 print chr$(13)
13640 print Kisoun$;chr$(13)
13650 key$=input$(1)
13660 if key$=chr$(13) then goto Main_Screen:
13670 'バージョン情報
13680 Version_Info:
13690 cls 3:font 24
13700 line(0,0) - (1300,40),rgb(0,0,255),bf
13710 line (0,40)-(1300,220),rgb(127,255,212),bf
13720 line (0,220)-(1300,280),rgb(0,255,0),bf
13730 talk "バージョン情報です"
13740 color rgb(255,255,255)
13750 print "バージョン情報" + chr$(13)
13760 color rgb(255,0,255)
13770 print "アプリ名:霊遺伝姓名学 スタンダード" + chr$(13)
13780 print "Author:licksjp" + chr$(13)
13790 print Version$ + chr$(13)
13800 print"(c)copy rights licksjp All rights reserved since 2019" + chr$(13)
13810 color rgb(0,0,0)
13820 print"エンターキーを押してください" + chr$(13)
13830 a$ = input$(1)
13840 if a$=chr$(13) then goto Main_Screen:
13850 Reference_Book:
13860 cls 3
13870 line(0,0)-(1200,60),rgb(0,0,255),bf
13880 pen 3:line(0,0)-(1201,61),rgb(0,0,255),b
13890 line(0,60)-(1200,580),rgb(127,255,212),bf
13900 pen 3:line(0,61)-(1201,581),rgb(0,0,255),b
13910 line(0,580)-(1200,640),rgb(0,255,0),bf
13920 pen 3:line(0,583)-(1203,640),rgb(0,0,255),b
13930 color rgb(255,255,255)
13940 print "参考文献" + chr$(13)
13950 color rgb(255,0,255)
13960 print "書名:姓名の暗号" + chr$(13)
13970 print "著者:樹門 幸宰" + chr$(13)
13980 print "出版社:幻冬舎" + chr$(13)
13990 print "定価:1400+税"+chr$(13)
14000 print "ISBN:4-344-0077-8" + chr$(13)
14010 color rgb(0,0,0)
14020 print "スペースキーを押してください"+CHR$(13)
14030 key$ = input$(1)
14040 if key$=" " then goto Reference_Book2:
14050 '
14060 Reference_Book2:
14070 cls 3
14080 pen 3:line(0,3) - (1203,63),rgb(0,0,255),b
14090 line(0,0) - (1200,60),rgb(0,0,255),bf
14100 pen 3:line(0,57) - (1197,577),rgb(0,0,255),b
14110 line(0,60) - (1200,570),rgb(127,255,212),bf
14120 pen 3:line(0,63) - (1197,753),rgb(0,0,255),b
14130 line(0,573) - (1193,750),rgb(0,255,0),bf
14140 color rgb(255,255,255)
14150 print "参考文献2" + chr$(13)
14160 color rgb(255,0,255)
14170 print "書名:姓名の暗号 解読法" + chr$(13)
14180 print "著者:樹門 幸宰" + chr$(13)
14190 print "出版社:幻冬舎" + chr$(13)
14200 print "定価:600円 + 税" + chr$(13)
14210 print "ISBN:978-4-344-41190-6" + chr$(13)
14220 color rgb(0,0,0)
14230 print"スペースキー:参考文献1へ行く" + chr$(13)
14240 print"エンターキー:トップ画面" + chr$(13)
14250 key$=input$(1)
14260 if key$=" " then goto Reference_Book:
14270 if key$=chr$(13) then goto Main_Screen:
