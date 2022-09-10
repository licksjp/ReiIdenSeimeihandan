100 cls 3
110 'コメント
120 '◎変更履歴
130 '初期設定項目
140 '2021.06.01:霊遺伝姓名判断単体版作成開始
150 '霊遺伝姓名判断Light_Ver202105.改.basより
160 '霊遺伝姓名藩の部分だけのソースを移殖
170 'Date:2022.09.10:Ver2021.06.01をVer2022.09.10にアップデートして改変して制作続行
180 'バージョン情報
190 'Ver:2021.06.01_09_20
200 'Ver:2021_06_01_09_07
210 'Ver:2021_06_01_09_06
220 'Ver:2021_06_01_08_31
230 'Ver:2021_06_01_08_29
240 'Ver:2021_06_01_08_25
250 'Ver:2021_06_01_08_23
260 'Ver:2021_06_01_08_19
270 'Ver:2021_06_01_06.12
280 'メモリー定義
290 'メモリー確保 文字領域,数値データー
300 clear 4*4000,4*1000000
310 'Version 情報
320 Version$="Ver:2022_09_10"
330 'ファイル読み込み領域　ここから
340 dim buf_lines$(27),buffer_Kiso(4),buffer_Kiso2(4)
350 '定数文字1画〜27画
360 'ファイルから各画数を読み込んで代入する。
370 '1行目だけ読み込む
380 open "config/Kanji_data/Mojidata_ReiIden20200911.csv" for input as #2
390 for i=0 to 26
400 input #2,buf_lines$(i)
410 next i
420 close #2
430 Moji_1=val(buf_lines$(0)):Moji_2=val(buf_lines$(1)):Moji_3=val(buf_lines$(2)):Moji_4=val(buf_lines$(3)):Moji_5=val(buf_lines$(4)):Moji_6=val(buf_lines$(5)):Moji_7=val(buf_lines$(6)):Moji_8=val(buf_lines$(7)):Moji_9=val(buf_lines$(8)):Moji_10=val(buf_lines$(9)):Moji_11=val(buf_lines$(10)):Moji_12=val(buf_lines$(11)):Moji_13=val(buf_lines$(12)):Moji_14=val(buf_lines$(13)):Moji_15=val(buf_lines$(14)):Moji_16=val(buf_lines$(15)):Moji_17=val(buf_lines$(16)):Moji_18=val(buf_lines$(17)):Moji_19=val(buf_lines$(18)):Moji_20=val(buf_lines$(19)):Moji_21=val(buf_lines$(20)):Moji_22=val(buf_lines$(21)):Moji_23=val(buf_lines$(22)):Moji_24=val(buf_lines$(23)):Moji_25=val(buf_lines$(24)):Moji_26=val(buf_lines$(25)):Moji_27=val(buf_lines$(26))
440 Moji_total=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
450 '1画
460 Moji_Min_1 = 28:Moji_Max_1 = Moji_1 + 27+1:
470 '2画
480 Moji_Min_2 = (Moji_1) + 27+2:Moji_Max_2 = Moji_1 + Moji_2+27+2
490 '3画
500 Moji_Min_3 =(Moji_1) + (Moji_2) + 27+3:Moji_Max_3 =Moji_1 + Moji_2 + Moji_3+27+3
510 '4画
520 Moji_Min_4 = (Moji_3) + Moji_2 + Moji_1 + 27+4:Moji_Max_4=Moji_1+Moji_2 + Moji_3 + Moji_4 + 27+4
530 '5画
540 Moji_Min_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4) + 27+5:Moji_Max_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5)+27+5
550 '6画
560 Moji_Min_6 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5)+27+6:Moji_Max_6=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6)+27+6
570 '7画
580 Moji_Min_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6) + 27+7:Moji_Max_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7) + 27+7
590 '8画
600 Moji_Min_8 = Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+27+8:Moji_Max_8=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8)+27+8
610 '9画
620 Moji_Min_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + 27+9:Moji_Max_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + 27+9
630 '10画
640 Moji_Min_10 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9)+27+10:Moji_Max_10=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10)+27+10
650 '11画
660 Moji_Min_11 = (Moji_1+Moji_2+Moji_3+Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10)+27+11:Moji_Max_11=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11)+27+11
670 '12画
680 Moji_Min_12 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11)+27+12:Moji_Max_12=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+27+12
690 '13画
700 Moji_Min_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12)+13+27:Moji_Max_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+27+13
710 '14画
720 Moji_Min_14 =(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+14+27:Moji_Max_14=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+14+27
730 '15画
740 Moji_Min_15 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+15+27:Moji_Max_15=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6+ Moji_7 + Moji_8 + Moji_9+ Moji_10 + Moji_11 + Moji_12+Moji_13+Moji_14+Moji_15)+15+27
750 '16画
760 Moji_Min_16 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15)+16+27:Moji_Max_16=Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+16+27
770 '17画
780 Moji_Min_17 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16) + 17+27:Moji_Max_17 = Moji_1 + Moji_2 + Moji_3 + Moji_4+Moji_5 + Moji_6 + Moji_7+Moji_8 + Moji_9 + Moji_10 + Moji_11 + Moji_12 + Moji_13 + Moji_14 + Moji_15+Moji_16+Moji_17+17+27
790 '18画
800 Moji_Min_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17)+18+27:Moji_Max_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+18+27
810 '19画
820 Moji_Min_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+19+27:Moji_Max_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+19+27
830 '20画
840 Moji_Min_20=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+20+27:Moji_Max_20=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+20+27
850 '21画
860 Moji_Min_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20)+21+27:Moji_Max_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+21+27
870 '22画
880 Moji_Min_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+22+27:Moji_Max_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22)+22+27
890 '23画
900 Moji_Min_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+23+27):Moji_Max_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+23+27
910 '24画
920 Moji_Min_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+24+27:Moji_Max_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+24+27
930 '25画
940 Moji_Min_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+25+27:Moji_Max_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+25+27
950 '26画
960 Moji_Min_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+26+27:Moji_Max_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+26+27
970 '27画
980 Moji_Min_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+27+27:Moji_Max_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27)+27+27
990 dim Moji_data$(Moji_total+27+27)
1000 'dim bufmoji$(10),Input_data$(10)
1010 '１画の文字   サイズ:21+2(漢字)
1020 dim buf_char_hiragana1$(Moji_1)
1030 '2画の文字  サイズ 58+14=72(漢字)
1040 dim buf_char_hiragana2$(Moji_2)
1050 '3画の文字 サイズ:48+29=77(漢字)
1060 dim buf_char_hiragana3$(Moji_3)
1070 '4画の文字 サイズ:29+51=80(漢字)
1080 dim buf_char_hiragana4$(Moji_4)
1090 '５画の文字  サイズ:18+59=77(漢字)
1100 dim buf_char_hiragana5$(Moji_5)
1110 '6画の文字  サイズ:79(漢字)
1120 dim buf_char_hiragana6$(Moji_6)
1130 '7画の文字  サイズ:88(漢字)
1140 dim buf_char_hiragana7$(Moji_7)
1150 '8画の文字
1160 dim buf_char_hiragana8$(Moji_8)
1170 '9画の文字
1180 dim buf_char_hiragana9$(Moji_9)
1190 '10画の文字 98文字
1200 dim buf_char_hiragana10$(Moji_10)
1210 '11画の文字
1220 dim buf_char_hiragana11$(Moji_11)
1230 '12画の文字
1240 dim buf_char_hiragana12$(Moji_12)
1250 '13画の文字 81文字
1260 dim buf_char_hiragana13$(Moji_13)
1270 '14画の文字
1280 dim buf_char_hiragana14$(Moji_14)
1290 '15画の文字
1300 dim buf_char_hiragana15$(Moji_15)
1310 '16画の文字
1320 dim buf_char_hiragana16$(Moji_16)
1330 '17画の文字
1340 dim buf_char_hiragana17$(Moji_17)
1350 '18画の文字
1360 dim buf_char_hiragana18$(Moji_18)
1370 '19画の文字
1380 dim buf_char_hiragana19$(Moji_19)
1390 '20画の文字
1400 dim buf_char_hiragana20$(Moji_20)
1410 '21画の文字
1420 dim buf_char_hiragana21$(Moji_21)
1430 '22画の文字
1440 dim buf_char_hiragana22$(Moji_22)
1450 '23画の文字
1460 dim buf_char_hiragana23$(Moji_23)
1470 '24画の文字
1480 dim buf_char_hiragana24$(Moji_24)
1490 '25
1500 dim buf_char_hiragana25$(Moji_25)
1510 dim buf_char_hiragana26$(Moji_26)
1520 dim buf_char_hiragana27$(Moji_27)
1530 '結果表示1　吉凶データー 81パターン
1540 'ファイル読み込み2
1550 'データー読み込み　ここから
1560 'データー読み込み　1.ひらがな
1570 '1画の文字   6文字 23文字
1580 open "config/Kanji_data/Mojidata_ReiIden20200911.csv" for input as #1
1590 '全ファイルを読み込む
1600 for i = 0 to 25+Moji_total+27
1610 input #1,Moji_data$(i)
1620 next i
1630 close #1
1640 '全ファイル読み込み　ここまで
1650 for i = 27+1 to (Moji_1)+27+1
1660 '1画の文字にデーターをコピーする
1670 buf_char_hiragana1$(i-Moji_Min_1) = Moji_data$(i)
1680 next i
1690 '2画の文字    98文字
1700 for i = Moji_Min_2  to (Moji_Max_2)
1710 buf_char_hiragana2$(i-Moji_Min_2)=Moji_data$(i)
1720 next i
1730 '3文字の文字    77文字
1740 for i = Moji_Min_3  to (Moji_Max_3)
1750 buf_char_hiragana3$(i-(Moji_Min_3)) = Moji_data$(i)
1760 next i
1770 '4文字の文字   80文字
1780 for i = (Moji_Min_4)  to (Moji_Max_4)
1790 buf_char_hiragana4$(i-Moji_Min_4)=Moji_data$(i)
1800 next i
1810 '5文字の文字 77文字
1820 for i = Moji_Min_5 to (Moji_Max_5)
1830 buf_char_hiragana5$(i - Moji_Min_5)=Moji_data$(i)
1840 next i
1850 '6文字の文字 79文字
1860 for i = Moji_Min_6  to Moji_Max_6
1870 buf_char_hiragana6$(i-Moji_Min_6) = Moji_data$(i)
1880 next i
1890 '7文字の文字 170文字
1900 for i = Moji_Min_7 to Moji_Max_7
1910 buf_char_hiragana7$(i-Moji_Min_7)=  Moji_data$(i)
1920 next i
1930 '8画の文字 120文字
1940 for i = Moji_Min_8 to Moji_Max_8
1950 buf_char_hiragana8$(i - Moji_Min_8)=Moji_data$(i)
1960 next i
1970 '9画の文字  103文字
1980 for i = Moji_Min_9 to Moji_Max_9
1990 buf_char_hiragana9$(i - Moji_Min_9)=Moji_data$(i)
2000 next i
2010 '10画の文字 285文字
2020 for i = Moji_Min_10 to (Moji_Max_10)
2030 buf_char_hiragana10$(i-Moji_Min_10)=Moji_data$(i)
2040 next i
2050 '11画の文字
2060 for i = Moji_Min_11 to Moji_Max_11
2070 buf_char_hiragana11$(i-Moji_Min_11) = Moji_data$(i)
2080 next i
2090 '12画の文字
2100 for i = Moji_Min_12 to Moji_Max_12
2110 buf_char_hiragana12$(i-Moji_Min_12)=Moji_data$(i)
2120 next i
2130 '13画の文字 81
2140 for i = Moji_Min_13 to Moji_Max_13
2150 buf_char_hiragana13$(i-Moji_Min_13) = Moji_data$(i)
2160 next i
2170 '14画の文字 66
2180 for i = Moji_Min_14 to Moji_Max_14
2190 buf_char_hiragana14$(i-Moji_Min_14)=Moji_data$(i)
2200 next i
2210 '15画の文字 59
2220 'for i = Moji_Min_15 to (Moji_Max_15) - 1
2230 for i=Moji_Min_15 to  Moji_Max_15
2240 buf_char_hiragana15$(i-Moji_Min_15)=Moji_data$(i)
2250 next i
2260 '16画の文字 44
2270 for i=Moji_Min_16 to Moji_Max_16
2280 buf_char_hiragana16$(i-Moji_Min_16)=Moji_data$(i)
2290 next i
2300 '17画の文字
2310 for i = Moji_Min_17 to Moji_Max_17
2320 buf_char_hiragana17$(i-Moji_Min_17)=Moji_data$(i)
2330 next i
2340 '18画の文字
2350 for i = Moji_Min_18 to Moji_Max_18
2360 buf_char_hiragana18$(i-Moji_Min_18)=Moji_data$(i)
2370 next i
2380 '19画の文字 17文字
2390 for i = Moji_Min_19 to Moji_Max_19
2400 buf_char_hiragana19$(i-Moji_Min_19)=Moji_data$(i)
2410 next i
2420 '20 画の文字 13文字
2430 for  i = Moji_Min_20 to Moji_Max_20
2440 buf_char_hiragana20$(i-Moji_Min_20)=Moji_data$(i)
2450 NEXT i
2460 '21画の文字 6
2470 for i = Moji_Min_21 to (Moji_Max_21)
2480 buf_char_hiragana21$(i-Moji_Min_21)=Moji_data$(i)
2490 next i
2500 '22 画の文字 4
2510 for i = Moji_Min_22 to Moji_Max_22
2520 buf_char_hiragana22$(i-Moji_Min_22)=Moji_data$(i)
2530 next i
2540 '23画の文字  3文字
2550 for i = Moji_Min_23 to Moji_Max_23
2560 buf_char_hiragana23$(i-Moji_Min_23)=Moji_data$(i)
2570 next i
2580 '24画の文字  3文字
2590 for i = Moji_Min_24 to Moji_Max_24
2600 buf_char_hiragana24$(i-Moji_Min_24)=Moji_data$(i)
2610 next i
2620 '25 画の文字 4
2630 for i = Moji_Min_25 to Moji_Max_25
2640 buf_char_hiragana25$(i-Moji_Min_25)=Moji_data$(i)
2650 next i
2660 '26画の文字  3文字
2670 for i = Moji_Min_26 to Moji_Max_26
2680 buf_char_hiragana26$(i-Moji_Min_26)=Moji_data$(i)
2690 next i
2700 '27画の文字  3文字
2710 for i = Moji_Min_27 to Moji_Max_27
2720 buf_char_hiragana27$(i-Moji_Min_27)=Moji_data$(i)
2730 next i
2740 'ファイル読み込み領域　ここまで
2750 '相性占い結果パターン ここまで
2760 'メイン画面　ここから
2770 '描画領域　ここから
2780 Select_keybord:
2790 cls 3:font 32:screen 1,1,1,1
2800 'line (0,0)-(1200,60),rgb(0,0,255),bf
2810 'pen 5:line (0,0)-(1197,57),rgb(127,255,212),b
2820 'line (0,60)-(1200,380),rgb(127,255,212),bf
2830 'pen 5:line(0,57)-(1197,377),rgb(0,0,255),b
2840 'line (0,380)-(1200,450),rgb(0,255,0),bf
2850 'pen 5:line(0,377)-(1197,447),rgb(0,0,255),b
2860 gload "config/Picture/Top_Screen1.png",0,0,0
2870 gload "config/img/Selection.png",1,1,60
2880 gload "config/img/Selection.png",1,1,125
2890 gload "config/img/Selection.png",1,1,190
2900 sp_def 0,(1,60),32,32
2910 sp_def 1,(1,125),32,32
2920 sp_def 2,(1,190),32,32
2930 sp_on 0,1:sp_on 1,0:sp_on 2,0
2940 sp_put 0,(1,60),0,0:sp_on 1,(1,120),1,0:sp_on 2,(1,190),2,0
2950 '描画領域　ここまで
2960 '設定画面 バーチャルキーボードの表示選択
2970 talk"キーボードの選択です。バーチャルキーボードを表示させますか？"
2980 'color rgb(255,255,255)
2990 'print "●バーチャル キーボードの表示の選択"+chr$(13)
3000 No=0
3010 print chr$(13)
3020 color rgb(255,0,255)
3030 print " 1.バーチャルキーボードを表示する"+chr$(13)
3040 print " 2.バーチャルキーボードを表示しない"+chr$(13)
3050 print " 3.プログラムを終了する"+chr$(13)
3060 locate 1,8
3070 color rgb(0,0,0)
3080 print "1.バーチャルキーボードを表示するを選択"+chr$(13)
3090 key1$:
3100 key$ = input$(1)
3110 if key$=chr$(31) then
3120 select case No
3130 case 0:
3140        No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_put 1,(1,120),1,0:locate 1,8:print"                                   ":locate 1,8:print "2.バーチャルキーボードを表示しないを選択":goto key1$:
3150 case 1:
3160        No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_put 2,(1,190),2,0:locate 1,8:print "                                                  ":locate 1,8:print"3.プログラムを終了するを選択":goto key1$:
3170 case 2:
3180        No=0:sp_on 0,1:sp_on 1,0:sp_on 2,0:sp_put 0,(1,60),0,0:locate 1,8:print "                                                          ":locate 1,8:print "1.バーチャルキーボードを表示するを選択":goto key1$:
3190 end select
3200 else
3210 if key$=chr$(13) then
3220 select case No
3230 case 0:
3240         :init"kb:2":goto Main_Screen:
3250 case 1:
3260        sp_on 1,0 :init"kb:0":goto Main_Screen:
3270 case 2:
3280        color rgb(255,255,255):cls 3:cls 4:end
3290 end select
3300 else
3310 goto key1$:
3320 endif
3330 endif
3340 'input"番号:",keyNo
3350 'if keyNo = 1 then init"kb:2"
3360 'if keyNo = 2 then init"kb:0"
3370 'if keyNo = 3 then color rgb(255,255,255):cls 3:end
3380 'if keyNo > 3 or keyNo = 0 then goto Select_keybord:
3390 'メイン画面 Top画面1
3400 Main_Screen:
3410 cls 3:font 48:color rgb(255,255,255),,rgb(176,196,222):No=0
3420 talk "メイン画面です、番号を選んで、エンターキーを押してください"
3430 'Text ,Grapgic clear:cls 3
3440 'グラフィック領域　ここから
3450 'line (0,0)-(570,60),rgb(0,0,255),bf
3460 'pen 5:line (0,0)-(567,57),rgb(127,255,212),b
3470 'line (0,60)-(570,460),rgb(127,255,212),bf
3480 'pen 5:line (0,57)-(567,457),rgb(0,0,255),b
3490 'line (0,460)-(570,640),rgb(0,255,0),bf
3500 'グラフィック領域 ここまで
3510 'pen 5:line (0,457)-(567,637),rgb(0,0,255),b
3520 gload "config/Picture/Main_Screen1.png",0,0,0
3530 Font 32
3540 'print"◎姓名判断　メイン画面"+chr$(13)
3550 '文字色:黒
3560 print chr$(13)
3570 color rgb(255,0,255)
3580 print" 1.姓名判断"+chr$(13)
3590 print" 2.姓名判断の漢字" + chr$(13)
3600 print" 3.設定"+chr$(13)
3610 print" 4.ヘルプ"+chr$(13)
3620 print" 5.プログラムの終了"+chr$(13)
3630 No=0
3640 sp_on 0,1:sp_put 0,(1,60),0,0
3650 key2$:
3660 key$=input$(1)
3670 if key$=chr$(31) then
3680 select case No
3690 case 0:
3700        No=1:sp_on 0,0:sp_on 1,1:sp_on 2,0:sp_put 1,(1,120),0,0:goto key2$
3710 case 1:
3720        No=2:sp_on 0,0:sp_on 1,0:sp_on 2,1:sp_put 2,(1,190),0,0:goto key2$
3730 end select
3740 else
3750 goto key2$
3760 endif
3770 'print"5.プログラム終了"+chr$(13)
3780 '文字:黒
3790 color rgb(0,0,0)
3800 'print"番号を選んでください"+chr$(13)
3810 print chr$(13)
3820 'Input "番号:",No
3830 'if No = 1  then goto seimeihandan_top:
3840 'if No = 2 then goto seimeihandan_setting:
3850 'if No = 4 then goto help:
3860 'if No = 5  then talk"終了します":cls 3:end
3870 'if No = 3 then goto Settei_Koumoku:
3880 'if  No > 5 or No = 0  then ui_msg"無効な番号です、もう一度入れ直してください。":goto Main_Screen:
3890 '1.姓名判断トップ画面
3900 seimeihandan_top:
3910 cls:screen 1,1
3920 'タイトル文字:白
3930 font 48:color rgb(255,255,255),,rgb(176,196,222)
3940 talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでエンターキーを押してください"
3950 'グラフィック 描画領域　ここから
3960 'Main_Screen:
3970 cls 3:font 32
3980 '1.Title:青
3990 'Line 1
4000 'line (0,0)-(890,60),rgb(0,0,255),bf
4010 'pen 5:line(0,0)-(887,57),rgb(127,255,212),b
4020 'Line 2
4030 'line (0,60)-(890,265),rgb(127,255,212),bf
4040 'PEN 5:line(0,57)-(887,262),rgb(0,0,255),b
4050 'Line 3
4060 'line (0,265)-(890,400),rgb(0,255,0),bf
4070 'pen 5:line (0,262)-(887,397),rgb(0,0,0),b
4080 gload "config/Picture/seimeihandan_Select_top.png"
4090 'グラフィック 描画領域 ここまで
4100 color rgb(255,255,255)
4110 'print"◎姓名判断の種類トップメニュー"+chr$(13)
4120 print chr$(13)+chr$(13)
4130 color rgb(255,0,255):print"1.霊遺伝姓名学" + chr$(13)
4140 COLOR rgb(255,0,255):print"2.前の画面に戻る" + chr$(13)
4150 'color rgb(0,0,0):Print"番号を選んでエンターを押してください"
4160 print chr$(13)
4170 color rgb(0,0,0):Input"番号:",selectNo
4180 IF selectNo = 1 then goto Reiden_Top_Input_Sextype:
4190 if selectNo = 2 then goto Main_Screen:
4200 if selectNo > 2 or selectNo = 0 then ui_msg"無効な番号です。入れ直してください。":goto seimeihandan_top:
4210 '2.設定
4220 seimeihandan_setting:
4230 font 48:color rgb(0,0,0),,rgb(176,196,222)
4240 talk"設定画面です。番号を選んでエンターキーを押してください"
4250 'グラフィック領域　ここから
4260 cls 3:
4270 'line (0,0)-(750,60),rgb(0,0,255),bf
4280 'pen 5:line (0,0)-(747,57),rgb(127,255,212),b
4290 'line (0,60)-(750,460),rgb(127,255,212),bf
4300 'pen 5:line (0,57)-(747,457),rgb(0,0,255),b
4310 'line (0,460)-(750,650),rgb(0,255,0),bf
4320 'pen 5:line(0,457)-(747,647),rgb(0,0,255),b
4330 'グラフィック領域 ここまで
4340 '1行目　文字色　 白
4350 'color rgb(255,255,255):print"姓名判断　設定画面トップ画面" + chr$(13)
4360 gload "config/Picture/Setting_Top.png"
4370 print chr$(13)
4380 color rgb(255,0,255):print"1.登録文字の確認" + chr$(13)
4390 color rgb(255,0,255):print"2.登録文字数の表示" + chr$(13)
4400 color rgb(255,0,255):print"3.前の画面に戻る" + chr$(13)
4410 color rgb(255,0,255):print"4.プログラムの終了" + chr$(13)
4420 COLOR rgb(0,0,0)
4430 'print"番号を選んでください"+chr$(13)
4440 print chr$(13)
4450 Input"番号:",selectNo
4460 if selectNo=1 then goto Entry_moji_Top:
4470 if selectNo=2 then goto Entry_moji_check_count:
4480 if selectNo=3 then goto Main_Screen:
4490 if selectNo=4 then talk"終了します":cls 3:end
4500 if selectNo > 4 or selectNo = 0 then goto seimeihandan_setting:
4510 '３．設定  ここから
4520 Settei_Koumoku:
4530 cls 3:font 32:talk "設定項目です。番号を選んでエンターキーを押してください。"
4540 gload "config/Picture/Settei_Screen.png"
4550 print chr$(13) + chr$(13)
4560 'color rgb(0,0,255)
4570 'print "姓名判断 設定" + chr$(13) + chr$(13) + chr$(13)
4580 color rgb(255,0,255)
4590 print "1.名前リスト 表示"  + chr$(13)
4600 print "2.名前リスト 編集"  + chr$(13)
4610 print "3.前の画面に行く" + chr$(13)
4620 print "4.プログラムの終了" + chr$(13)
4630 color rgb(0,0,0)
4640 print "番号を選んでください" + chr$(13)
4650 Input "番号:",No
4660 if No=3 then
4670  goto Main_Screen:
4680 else
4690 if No=4 then
4700 talk "終了します":cls 3:end
4710 else
4720  goto Settei_Koumoku:
4730 endif
4740 endif
4750 '3.設定  ここまで
4760 '3 番号で吉凶を見る 入力
4770 Moji_Kikkyo_Top:
4780 font 32:color rgb(0,0,0),,rgb(176,196,222)
4790 'グラフィック描画領域　ここから
4800 cls 3
4810 line (0,0)-(650,60),rgb(0,0,255),bf
4820 pen 5:line(0,0)-(645,57),rgb(127,255,212),b
4830 line (0,60)-(650,255),rgb(127,255,212),bf
4840 PEN 5:line(0,57)-(647,252),rgb(0,0,255),b
4850 line (0,255)-(650,350),rgb(0,255,0),bf
4860 pen 5:line(0,252)-(647,347),rgb(0,0,255),b
4870 'グラフィック描画領域 ここまで
4880 color rgb(255,255,255)
4890 print"画数での吉凶判定"+chr$(13)
4900 color rgb(255,0,255)
4910 print"画数を入れてください"+chr$(13)
4920 print"(Max:81文字)"+chr$(13)
4930 color rgb(0,0,0)
4940 Input"文字の画数:",Number
4950 if Number > 81 then goto Moji_Kikkyo_Top:
4960 if Number <=81 then end
4970 '3.番号で吉凶を見る 結果表示
4980 'グラフィック描画領域　ここから
4990 Entry_moji_check:
5000 cls 3
5010 '1行目
5020 line (0,0)-(840,58),rgb(0,0,255),bf
5030 pen 5:line(0,0)-(837,55),rgb(127,255,212),b
5040 '2行目
5050 line (0,58)-(840,100),rgb(127,255,212),bf
5060 PEN 5:line(0,55)-(837,97),rgb(0,0,0),b
5070 '3行目
5080 line (0,100)-(840,280),rgb(0,0,255),bf
5090 pen 5:LINE(0,103)-(837,277),rgb(127,255,212),b
5100 '4行目
5110 line (0,280)-(840,340),rgb(0,255,0),bf
5120 pen 5:line(0,277)-(837,337),rgb(0,0,0),b
5130 'グラフィック描画領域　ここまで
5140 totalmoji=Moji_1+Moji2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24
5150 color rgb(255,255,255):print "登録文字画数結果表示"
5160 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
5170 'endif
5180 color rgb(255,255,255)
5190 print"q+エンターキー:トップ画面"+chr$(13)
5200 print"エンターキー:もう一度やる"+chr$(13)
5210 color rgb(0,0,0)
5220 print"コマンド:"
5230 key$=Input$(1)
5240 if key$=chr$(13)  then buffer_count=0:goto Entry_moji_Top:
5250 if key$="q" then buffer_count=0:goto Main_Screen:
5260 if not(key$="q") then goto Moji_count_check:
5270 Entry_moji_Top:
5280 cls 3:font 48
5290 'cls 3:line (0,0)-(1050,65),rgb(0,0,255),bf
5300 'pen 5:line(0,0)-(1047,62),rgb(127,255,212),b
5310 'line (0,62)-(1050,155),rgb(0,255,255),bf
5320 'pen 5:line(0,59)-(1047,152),rgb(0,0,255),b
5330 'line (0,155)-(1050,260),rgb(0,255,0),bf
5340 'pen 5:line(0,152)-(1047,257),rgb(0,0,255),b
5350 gload "config/Picture/Input_Entry_Moji2.png"
5360 'グラフィック領域　ここまで
5370 talk"調べたい文字をひと文字入れてください。"
5380 '文字:白
5390 'olor rgb(255,255,255):print"登録文字の確認"+chr$(13)
5400 '文字:アクア
5410 'color rgb(255,0,0):print"文字を入力してエンターキーを押してください"+chr$(13)
5420 print chr$(13)+chr$(13)+chr$(13)+chr$(13)
5430 color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
5440 if name$="" then ui_msg"文字が空白です。入れ直してください。":goto Entry_moji_Top:
5450 if (len(name$)>1) then ui_msg("１文字で入れてください"):goto Entry_moji_Top:
5460 '1画の文字
5470 for i=0 to ((Moji_1)-1)
5480 if (name$=buf_char_hiragana1$(i)) then
5490 buffer_count=1:goto Moji_count_check:
5500 endif
5510 next i
5520 '2画の文字
5530 for i=0 to ((Moji_2)-1)
5540 if (name$=buf_char_hiragana2$(i)) then
5550 buffer_count=2:goto Moji_count_check:
5560 endif
5570 next i
5580 '3画の文字
5590 for i=0 to ((Moji_3)-1)
5600 if (name$=buf_char_hiragana3$(i)) then
5610 buffer_count=3:goto Moji_count_check:
5620 endif
5630 next i
5640 '4画の文字
5650 for i=0 to ((Moji_4)-1)
5660 if (name$=buf_char_hiragana4$(i)) then
5670 buffer_count=4:goto Moji_count_check:
5680 endif
5690 next i
5700 '5画の文字
5710 for i=0 to ((Moji_5)-1)
5720 if (name$=buf_char_hiragana5$(i)) then
5730 buffer_count=5:goto Moji_count_check:
5740 endif
5750 next i
5760 '6画の文字
5770 for i=0 to ((Moji_6)-1)
5780 if (name$=buf_char_hiragana6$(i)) then
5790 buffer_count=6:goto Moji_count_check:
5800 endif
5810 next i
5820 '7画の文字
5830 for i=0 to ((Moji_7)-1)
5840 if (name$=buf_char_hiragana7$(i)) then
5850 buffer_count=7:goto Moji_count_check:
5860 endif
5870 next i
5880 '8画の文字 120 文字
5890 for i=0 to ((Moji_8)-1)
5900 if (name$=buf_char_hiragana8$(i)) then
5910 buffer_count=8:goto Moji_count_check:
5920 endif
5930 next i
5940 '9画の文字  103文字
5950 for i=0 to ((Moji_9)-1)
5960 if (name$=buf_char_hiragana9$(i)) then
5970 buffer_count=9:goto Moji_count_check:
5980 endif
5990 next i
6000 '10画の文字 98文字
6010 for i=0 to ((Moji_10)-1)
6020 if (name$=buf_char_hiragana10$(i)) then
6030 buffer_count=10:goto Moji_count_check:
6040 endif
6050 next i
6060 '11画の文字 98文字
6070 for i=0 to ((Moji_11)-1)
6080 if (name$=buf_char_hiragana11$(i)) then
6090 buffer_count=11:goto Moji_count_check:
6100 endif
6110 next i
6120 '12画の文字
6130 for i=0 to ((Moji_12)-1)
6140 if (name$=buf_char_hiragana12$(i)) then
6150 buffer_count=12:goto Moji_count_check:
6160 endif
6170 next i
6180 '13画の文字
6190 for i=0 to ((Moji_13)-1)
6200 if (name$=buf_char_hiragana13$(i)) then
6210 buffer_count=13:goto Moji_count_check:
6220 endif
6230 next i
6240 '14画の文字
6250 for i=0 to ((Moji_14)-1)
6260 if (name$=buf_char_hiragana14$(i)) then
6270 buffer_count=14:goto Moji_count_check:
6280 endif
6290 next i
6300 '15画の文字
6310 for i=0 to ((Moji_15)-1)
6320 if (name$=buf_char_hiragana15$(i)) then
6330 buffer_count=15:goto Moji_count_check:
6340 endif
6350 next i
6360 '16画の文字
6370 for i=0 to ((Moji_16)-1)
6380 if (name$=buf_char_hiragana16$(i)) then
6390 buffer_count=16:goto Moji_count_check:
6400 endif
6410 next i
6420 '17画の文字
6430 for i=0 to ((Moji_17)-1)
6440 if (name$=buf_char_hiragana17$(i)) then
6450 buffer_count=17:goto Moji_count_check:
6460 endif
6470 next i
6480 '18画の文字 25
6490 for i=0 to ((Moji_18)-1)
6500 if (name$=buf_char_hiragana18$(i)) then
6510 buffer_count=18:goto Moji_count_check:
6520 endif
6530 next i
6540 '19画の文字 17
6550 for i=0 to ((Moji_19)-1)
6560 if (name$=buf_char_hiragana19$(i)) then
6570 buffer_count=19:goto Moji_count_check:
6580 endif
6590 next i
6600 '20画の文字 13
6610 for i=0 to ((Moji_20)-1)
6620 if (name$=buf_char_hiragana20$(i)) then
6630 buffer_count=20:goto Moji_count_check:
6640 endif
6650 next i
6660 '21画の文字 6
6670 for i=0 to ((Moji_21)-1)
6680 if (name$=buf_char_hiragana21$(i)) then
6690 buffer_count=21:goto Moji_count_check:
6700 endif
6710 next i
6720 '22画の文字 4
6730 for i=0 to ((Moji_22)-1)
6740 if (name$=buf_char_hiragana22$(i)) then
6750 buffer_count=22:goto Moji_count_check:
6760 endif
6770 next i
6780 '23画の文字 3
6790 for i=0 to ((Moji_23)-1)
6800 if (name$=buf_char_hiragana23$(i)) then
6810 buffer_count=23:goto Moji_count_check:
6820 endif
6830 next i
6840 '24画の文字
6850 for i=0 to ((Moji_24)-1)
6860 if (name$=buf_char_hiragana24$(i)) then
6870 buffer_count=24:goto Moji_count_check:
6880 endif
6890 next i
6900 'Menu3 結果表示 画数の登録確認
6910 Moji_count_check:
6920 if (buffer_count = 0) then
6930 '登録文字がない場合の処理
6940 'グラフィック領域　ここから
6950 'Moji_count_check:
6960 cls 3:font 48
6970 '1行
6980 'ine (0,0)-(840,60),rgb(0,0,255),bf
6990 'pen 5:line (0,0)-(837,57),rgb(127,255,212),b
7000 '2行目
7010 'line (0,60)-(840,165),rgb(127,255,212),bf
7020 'pen 5:line (0,57)-(837,162),rgb(0,0,255),b
7030 '3行目
7040 'line (0,165)-(840,370),rgb(0,0,255),bf
7050 'pen 5:line (0,162)-(837,367),rgb(0,255,0),b
7060 '4行目
7070 'line (0,370)-(840,450),rgb(0,255,0),bf
7080 'pen 5:line(0,367)-(837,447),rgb(0,0,0),b
7090 'グラフィック領域　ここまで
7100 color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
7110 color rgb(255,0,0):print name$;":この文字は、登録されていません"+chr$(13)
7120 talk "この文字は、登録されていません"
7130 color rgb(255,255,255):print"q:トップ画面"+chr$(13)
7140 COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
7150 color rgb(0,0,0):print"コマンド:"
7160 key$ = Input$(1)
7170 if key$ = "q" or key$ = "Q" then goto Main_Screen:
7180 if key$ = chr$(13) then goto Entry_moji_Top:
7190 else
7200 'グラフィック描画領域　ここから
7210 'Entry_moji_check:
7220 cls 3
7230 '1行目
7240 'line (0,0)-(840,58),rgb(0,0,255),bf
7250 'pen 5:line(0,0)-(837,55),rgb(127,255,212),b
7260 '2行目
7270 'line (0,58)-(840,100),rgb(127,255,212),bf
7280 'PEN 5:line(0,55)-(837,97),rgb(0,0,0),b
7290 '3行目
7300 'line (0,100)-(840,280),rgb(0,0,255),bf
7310 'pen 5:LINE(0,103)-(837,277),rgb(127,255,212),b
7320 '4行目
7330 'line (0,280)-(840,340),rgb(0,255,0),bf
7340 'pen 5:line(0,277)-(837,337),rgb(0,0,0),b
7350 'グラフィック描画領域　ここまで
7360 'color rgb(255,255,255):print "登録文字画数結果表示"
7370 gload "config/Picture/Result_EntryMoji2.png"
7380 print chr$(13)
7390 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています"+chr$(13)
7400 endif
7410 color rgb(0,0,0)
7420 print"qキー:トップ画面"+chr$(13)
7430 print"エンターキー:もう一度やる"+chr$(13)
7440 'color rgb(0,0,0)
7450 'print"コマンド:"
7460 key$=Input$(1)
7470 if key$=chr$(13)  then buffer_count=0:goto Entry_moji_Top:
7480 if key$="q" then buffer_count=0:goto Main_Screen:
7490 if not(key$="q") then goto Moji_count_check:
7500 '
7510 'dif
7520 'グラフィック描画領域　ここから
7530 '登録文字数の確認
7540 Entry_moji_check_count:
7550 totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
7560 'グラフィック描画領域　ここから
7570 cls 3:font 48
7580 '1行目
7590 'ine (0,0)-(800,60),rgb(0,0,255),bf
7600 'en 5:line (0,0)-(797,57),rgb(127,255,212),b
7610 '2行目
7620 'line (0,60)-(800,150),rgb(157,255,212),bf
7630 'pen 5:line(0,57)-(797,147),rgb(0,0,255),b
7640 '3行目
7650 'line (0,150)-(800,250),rgb(0,255,0),bf
7660 'pen 5:line(0,147)-(797,247),rgb(0,0,255),b
7670 'グラフィック描画領域 ここまで
7680 'color rgb(255,255,255)
7690 'PRINT"登録文字数の確認"+chr$(13)
7700 gload "config/Picture/Moji_check.png"
7710 print chr$(13)
7720 color rgb(255,0,255)
7730 PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
7740 TALK"登録文字数は"+str$(totalmoji)+"もじです"
7750 color rgb(0,0,0)
7760 'print"エンターキーを押してください"+chr$(13)
7770 'key$=Input$(1)
7780 print"エンターキーを押してください"+chr$(13)
7790 key$=Input$(1)
7800 if key$ = chr$(13) then goto Main_Screen:
7810 'グラフィック領域　ここから
7820 '性別入力
7830 Reiden_Top_Input_Sextype:
7840 cls 3:font 48
7850 'Line1
7860 'line (0,0)-(850,60),rgb(0,0,255),bf
7870 'line (0,0)-(847,57),rgb(0,255,0),b
7880 'Line 2
7890 'line (0,63)-(853,537),rgb(127,255,212),bf
7900 'line (0,60)-(850,540),rgb(0,0,0),b
7910 'Line 3
7920 'line (0,540)-(850,630),rgb(0,255,0),bf
7930 'line (0,543)-(853,633),rgb(0,0,255),b
7940 gload "config/Picture/Select_sextype.png"
7950 'グラフィック領域　ここまで
7960 '音声表示
7970 talk "霊遺伝生命学　性別の選択です。占う方の性別を入れてください"
7980 '性別変数:sex_type=0
7990 '文字色： 白
8000 'color rgb(255,255,255):print"霊遺伝姓名学 性別の選択" + chr$(13)
8010 '文字色：赤
8020 print chr$(13)
8030 color rgb(255,0,255)
8040 print"占う人の性別の番号を入れてください" + chr$(13)
8050 'print chr$(13)
8060 print"1.女 性" + chr$(13)
8070 print"2.男 性" + chr$(13)
8080 print"3.前の画面に戻る" + chr$(13)
8090 print"4.終 了" + chr$(13)
8100 'print chr$(13)
8110 color rgb(0,0,0)
8120 Input"番号:",No
8130 '2:男性の場合 名前を入力
8140 '男性の性別:sex_type=2
8150 if No=2 then sex_type=2:talk"":goto ReiIden_Input_male:
8160 '1:女性の場合 既婚の場合、旧姓で入力
8170 '女性の性別:sex_type=1
8180 if No=1 then sex_type=1:talk"":goto ReiIden_Input_female:
8190 '3:終了処理
8200 if No=4 then cls 3:end
8210 if No=3 then goto Main_Screen:
8220 if No >4 then goto Reiden_Top_Input_Sextype:
8230 '１．男性の場合の名前入力
8240 '描画領域　ここから
8250 ReiIden_Input_male:
8260 cls 3
8270 'Line 1 Title
8280 'line (0,0)-(850,60),rgb(0,0,255),bf
8290 'line (0,0)-(850,57),rgb(0,255,0),b
8300 'Line2 Input name
8310 'line (0,60)-(850,300),rgb(0,255,0),bf
8320 'line (0,60)-(850,303),rgb(0,0,255),b
8330 gload "config/Picture/Input_name1_male.png"
8340 '描画領域 ここまで
8350 '文字色：白
8360 talk "名前の入力です。名前の姓の部分を入力してください"
8370 color rgb(255,255,255)
8380 'print "霊遺伝姓名学 名前の姓入力（男性）" + chr$(13)
8390 print chr$(13)
8400 '文字色：黒
8410 color rgb(0,0,0)
8420 print "名前の姓の部分を入れてください" + chr$(13)
8430 Input"名前(姓の部分):",name1$
8440 '名の入力部分
8450 cls 3
8460 gload "config/Picture/Input_name2_male.png"
8470 talk"名前のめいの部分を入れてください"
8480 'color rgb(255,255,255)
8490 'print "霊遺伝姓名学 名前の名入力(男性)" + chr$(13)
8500 print chr$(13)
8510 color rgb(0,0,0)
8520 print "名前の名の部分を入れてください"+chr$(13)
8530 Input"名前(名の部分):",name2$:goto check:
8540 '2.女性の場合　既婚か未婚か確認する
8550 '2-2-1女性の姓の入力
8560 'グラフィック領域　ここから
8570 ReiIden_Input_female:
8580 cls 3:font 48
8590 talk"名前の入力です。名前のせいの部分を入れてください"
8600 'Line1 Title
8610 'line (0,0)-(850,60),rgb(0,0,255),bf
8620 'line (0,0)-(850,57),rgb(0,255,0),b
8630 'Line 2 入力欄
8640 'line (0,60)-(850,360),rgb(0,255,0),bf
8650 'line (0,60)-(850,357),rgb(0,0,255),b
8660 'Line 2 入力欄(名前入力)
8670 'グラフィック領域 ここまで
8680 gload "config/Picture/Input_name1_female.png"
8690 cls:print chr$(13)
8700 'color rgb(255,255,255)
8710 'print "霊遺伝姓名学 名前の姓入力(女性）"+chr$(13)
8720 color rgb(255,0,0)
8730 print"既婚者の方は、旧姓を入れてください"+chr$(13)
8740 color rgb(0,0,0)
8750 print "名前の姓の部分を入れてください"+chr$(13)
8760 Input "名前(姓の部分):",name3$
8770 talk ""
8780 '2-2-2女性の名の入力
8790 cls 3
8800 gload "config/Picture/Input_name2_female.png"
8810 talk"名前のめいの部分を入れてください。"
8820 color rgb(255,255,255)
8830 'print "霊遺伝姓名学 名前の名の部分(女性)"+chr$(13)
8840 print chr$(13)
8850 color rgb(0,0,0)
8860 print "名前の名の部分を入れてください"+chr$(13)
8870 Input "名前(名の部分):",name4$
8880 talk ""
8890 '計算領域　ここから
8900 check:
8910 '苗字の画数:buffer_name1_count
8920 'name1$,name2$:男性
8930 if sex_type = 1 then
8940 'sex_type=1 :女性のとき
8950 buf_male_female_name1$=name3$
8960 buf_male_female_name2$=name4$
8970 endif
8980 if sex_type = 2 then
8990 'sex_type=2 :男性のとき
9000 buf_male_female_name1$=name1$
9010 buf_male_female_name2$=name2$
9020 endif
9030 buffer_name1_count=len(buf_male_female_name1$)
9040 buffer_name2_count=len(buf_male_female_name2$)
9050 select case buffer_name1_count
9060 'AとBを求める
9070 case 1:
9080 '1.苗字の画数が1つのとき
9090 'A:霊数 1
9100 A=1
9110 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
9120 B = char_count(buf_name1$)
9130 case 2:
9140 '2.苗字の画数が2つのとき
9150 '2-1:苗字の1文字目:buf_name1$
9160 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
9170 '2-2:苗字の2文字目:buf_name2$
9180 buf_name2$ = Mid$(buf_male_female_name1$,2,1)
9190 A=char_count(buf_name1$)
9200 B=char_count(buf_name2$)
9210 'B=char_count(buf_name2$)
9220 case 3:
9230 '3.苗字の画数が3つの時
9240 '3-1:苗字の1文字目:buf_name1$
9250 buf_name1$=Mid$(buf_male_female_name1$,1,1)
9260 '3-2:苗字が3つのときの2つ目の文字をもとめる
9270 '3-2:苗字の2つ目:buf_name2$
9280 buf_name2$=Mid$(buf_male_female_name1$,2,1)
9290 '3-3:苗字が3つのときの3文字目
9300 '3-3:苗字の3文字目buf_name3$(name1$,3,1)
9310 buf_name3$ = Mid$(buf_male_female_name1$,3,1)
9320 if buf_name2$="々" then
9330 A = char_count(buf_name1$) * 2
9340 B = char_count(buf_name3$)
9350 else
9360 A = char_count(buf_name1$) + char_count(buf_name2$)
9370 B = char_count(buf_name3$)
9380 endif
9390 '姓が4文字
9400 case 4:
9410 buf_name1$=Mid$(buf_male_female_name1$,1,1)
9420 buf_name2$=Mid$(buf_male_female_name1$,2,1)
9430 buf_name3$=Mid$(buf_male_female_name1$,3,1)
9440 buf_name4$=Mid$(buf_male_female_name1$,4,1)
9450 A=char_count(buf_name1$)+char_count(buf_name2$)+char_count(buf_name3$)
9460 B=char_count(buf_name4$)
9470 case else:
9480 end select
9490 '2.C,Dを求める
9500 select case buffer_name2_count
9510 case 1:
9520 '名が1文字の時
9530 'CとDを求める
9540 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
9550 C = char_count(buff_name1$)
9560 'D=1:霊数
9570 D = 1
9580 case 2:
9590 '名が2文字の時
9600 'CとDを求める
9610 '名の1文字目:buff_name1$
9620 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
9630 '名の2文字目:buff_name2$
9640 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
9650 C = char_count(buff_name1$)
9660 D = char_count(buff_name2$)
9670 case 3:
9680 '名が3文字の時
9690 'CとDを求める
9700 '名の1文字目:buff_name1$
9710 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
9720 '名の2文字目:buff_name2$
9730 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
9740 if buff_name2$ = "々" then
9750 buff_name2$ = buff_name1$
9760 endif
9770 '名の3文字目:buff_name3$
9780 buff_name3$ = Mid$(buf_male_female_name2$,3,1)
9790 C = char_count(buff_name1$)
9800 D = char_count(buff_name2$) + char_count(buff_name3$)
9810 end select
9820 '1.先祖運を求める
9830 buffer_Senzo = A + B
9840 '2.性格運を求める
9850 buffer_Seikaku = B + C
9860 '3.愛情運を求める
9870 buffer_Aijyou = C + D
9880 '4.行動運を求める
9890 buffer_Kouzou = A + D
9900 'if buffer_Kouzou=10 then
9910 'endif
9920 '1.生数を求める
9930 func buf_Seisu(buffer)
9940 if buffer < 10 then
9950 seisu=buffer
9960 endif
9970 if buffer = 10 or buffer = 0 or buffer=20 or buffer=30 then
9980 seisu = 0
9990 endif
10000 if buffer > 10 then
10010 if buffer=20 then
10020 seisu = 0
10030 else
10040 n = buffer - (fix(buffer / 10) * 10)
10050 seisu = n
10060 endif
10070 endif
10080 endfunc seisu
10090 '和数を求める
10100 func buf_Wasu(buffer)
10110 buf_wasu = 0:wasu = 0
10120 if buffer < 10 then
10130 '
10140 wasu = buffer:goto wasu:
10150 else
10160 if buffer = 10 then
10170 wasu = 1:goto wasu:
10180 else
10190 if buffer > 10  then
10200 if buffer=19 or buffer=28 or buffer=37 then
10210 wasu=1:goto wasu:
10220 else
10230 if buffer = 29 then
10240 wasu=2:goto wasu:
10250 'endif
10260 else
10270 a = fix(buffer / 10)
10280 b = buffer - a * 10
10290 c = a + b
10300 if c = 19 or c=28 then
10310 wasu=1
10320 '
10330 else
10340 wasu=c
10350 endif
10360 endif
10370 endif
10380 endif
10390 endif
10400 if c < 10 then
10410 wasu = c
10420 'endif
10430 endif
10440 else
10450 if buffer=19 or buffer=28 then
10460 wasu = 1
10470 endif
10480 endif
10490 wasu:
10500 buf_wasu=wasu
10510 endfunc buf_wasu
10520 func buf_kyoudai$(buf_sex_type,buf_Sa$)
10530 select case buf_sex_type
10540 '1.女性の場合
10550 case 1:
10560 if (buf_Sa$ = "連続") then
10570 buffer_kyoudai$="長女相"
10580 endif
10590 if (buf_Sa$ = "1差") then
10600 buffer_kyoudai$="次女相"
10610 endif
10620 if (buf_Sa$ = "2差") then
10630 buffer_kyoudai$="三女相"
10640 endif
10650 if (buf_Sa$ = "3差") then
10660 buffer_kyoudai$="四女相"
10670 endif
10680 if (buf_Sa$ = "4差") then
10690 buffer_kyoudai$="五女相"
10700 endif
10710 '男性の場合
10720 case 2:
10730 if (buf_Sa$ = "連続") then
10740 buffer_kyoudai$="長男相"
10750 endif
10760 if (buf_Sa$ = "1差") then
10770 buffer_kyoudai$="次男相"
10780 endif
10790 if (buf_Sa$ = "2差") then
10800 buffer_kyoudai$="三男相"
10810 endif
10820 if (buf_Sa$ = "3差") then
10830 buffer_kyoudai$="四男相"
10840 endif
10850 if (buf_Sa$ = "4差") then
10860 buffer_kyoudai$="五男相"
10870 endif
10880 case else:
10890 end select
10900 kyoudai$=buffer_kyoudai$
10910 endfunc kyoudai$
10920 '1.タテ型
10930 '1.同じ数字が2組ある場合
10940 func Tate_gata$()
10950 if Senzo_wasu = Seikaku_wasu  then
10960 if Aijyou_wasu - Seikaku_wasu > 1 then
10970 Spirit_type$="タテ型"
10980 Sa_count = Aijyou_wasu - Seikaku_wasu - 1
10990 Sa$ = str$(Sa_count) + "差"
11000 else
11010 Spirit_type$="タテ型"
11020 Sa$="連続"
11030 endif
11040 endif
11050 endfunc
11060 '2. ナナメ型
11070 '同じ数字が2組ある場合
11080 func Naname_gata$()
11090 if  Senzo_wasu = Koudou_wasu And  Seikaku_wasu = Aijyou_wasu then
11100 Spirit_type$="斜め型"
11110 endif
11120 if Seikaku_wasu - Senzo_wasu > 1 then
11130 Sa_count = Seikaku_wasu  -  Senzo_wasu  -  1
11140 Sa$=str$(Sa_count)+" 差"
11150 else
11160 Sa$="連続"
11170 endif
11180 endfunc
11190 '3.表十字型
11200 '同じ数字が2組ある場合
11210 func Omote_jyuji_gata1$()
11220 if Senzo_wasu = Aijyou_wasu  And  Kouzou_wasu = Seikaku_wasu then
11230 Spirit_type$ = "表十字型"
11240 endif
11250 if Senzo _wasu - Seikaku_wasu > 1 then
11260 Sa_count = Senzo_wasu - Seikaku_wasu - 1
11270 else
11280 if Senzo_wasu  -  Seikaku_wasu = 1  then
11290 Sa$="連続"
11300 endif
11310 endif
11320 endfunc
11330 Spirit_type$="No data"
11340 '1.先祖運　和数
11350 Senzo_wasu = buf_Wasu(buffer_Senzo)
11360 '2.先祖運 生数
11370 Senzo_seisu = buf_Seisu(buffer_Senzo)
11380 '3.性格運 和数
11390 Seikaku_wasu = buf_Wasu(buffer_Seikaku)
11400 '4.性格運 生数
11410 Seikaku_seisu = buf_Seisu(buffer_Seikaku)
11420 '5.愛情運 和数
11430 Aijyou_wasu = buf_Wasu(buffer_Aijyou)
11440 '6.愛情運 生数
11450 Aijyou_seisu = buf_Seisu(buffer_Aijyou)
11460 '7.行動運 和数
11470 Koudou_wasu = buf_Wasu(buffer_Kouzou)
11480 '8.行動運 生数
11490 Koudou_seisu = buf_Seisu(buffer_Kouzou)
11500 '計算領域 ここまで
11510 '描画領域　ここから
11520 Result_ReiIden1:
11530 cls 3
11540 'Title
11550 'line (0,0)-(850,60),rgb(0,0,255),bf
11560 'pen 3:line (0,0)-(850,57),rgb(255,255,255),b
11570 'name
11580 'line (0,60)-(850,165),rgb(0,255,0),bf
11590 'pen 5:line (0,63)-(850,162),rgb(255,0,255),b
11600 '生数、和数
11610 'line (0,165)-(850,550),rgb(125,255,212),bf
11620 'pen 3:line(0,168)-(850,547),rgb(0,0,255),b
11630 'プッシュメッセージ
11640 'line (0,550)-(850,750),rgb(0,255,0),bf
11650 'pen 5:line (0,553)-(850,753),rgb(0,0,0),b
11660 '描画領域　ここまで
11670 'color rgb(255,255,255)
11680 'print "霊遺伝姓名学　診断結果１/2"+chr$(13)
11690 gload "config/Picture/Result_Screen1.png"
11700 print chr$(13)
11710 color rgb(0,0,0)
11720 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
11730 color rgb(255,0,255)
11740 print "1.先祖運";" ";"和数:";Senzo_wasu;"生数:";Senzo_seisu;chr$(13)
11750 print "2.性格運";" ";"和数:";Seikaku_wasu;"生数:";Seikaku_seisu;" ";chr$(13)
11760 print "3.愛情運";" ";"和数:";Aijyou_wasu;"生数:";Aijyou_seisu;chr$(13)
11770 print "4.行動運";" ";"和数:";Koudou_wasu;"生数:";Koudou_seisu;chr$(13)
11780 talk "診断結果１です、あなたのわすうとせいすうです。"
11790 color rgb(0,0,0)
11800 print"エンターキー:次へ行く"+chr$(13)
11810 print"スペースキー:トップ画面"+chr$(13)
11820 key$ = Input$(1)
11830 if key$ = chr$(13) then
11840 talk"":goto Jyuni_KisoUnn:
11850 else
11860 if key$=" " then
11870 talk"":goto Main_Screen:
11880 else
11890 talk"":goto Result_ReiIden1:
11900 endif
11910 endif
11920 '姓名判断データー文字比較
11930 '画数を求める関数
11940 func char_count(buf_count$)
11950 count=0:buffer=0
11960 '1画の文字 23文字
11970 for j=0 to ((Moji_1)-1)
11980 if buf_count$=buf_char_hiragana1$(j) then
11990 count =1:
12000 endif
12010 next j
12020 '2画の文字
12030 for j=0 to ((Moji_2)-1)
12040 if buf_count$=buf_char_hiragana2$(j)  then
12050 count = 2:
12060 endif
12070 next j
12080 for j=0 to ((Moji_3)-1)
12090 if buf_count$=buf_char_hiragana3$(j) then
12100 count =3:
12110 endif
12120 next j
12130 for j=0 to ((Moji_4)-1)
12140 if buf_count$=buf_char_hiragana4$(j) then
12150 count = 4:
12160 endif
12170 next j
12180 for j=0 to ((Moji_5)-1)
12190 if buf_count$=buf_char_hiragana5$(j) then
12200 count = 5:
12210 endif
12220 next j
12230 for j=0 to ((Moji_6)-1)
12240 if buf_count$=buf_char_hiragana6$(j) then
12250 count= 6
12260 endif
12270 next j
12280 for  j=0 to ((Moji_7)-1)
12290 if buf_count$=buf_char_hiragana7$(j) then
12300 count=  7
12310 endif
12320 next j
12330 for j=0 to ((Moji_8)-1)
12340 if buf_count$=buf_char_hiragana8$(j) then
12350 count= 8
12360 endif
12370 next j
12380 for j=0 to ((Moji_9)-1)
12390 if buf_count$=buf_char_hiragana9$(j) then
12400 count=9
12410 endif
12420 next j
12430 for j=0 to ((Moji_10)-1)
12440 if buf_count$=buf_char_hiragana10$(j) then
12450 count=10
12460 endif
12470 next j
12480 for j=0 to ((Moji_11)-1)
12490 if buf_count$=buf_char_hiragana11$(j) then
12500 count=11
12510 endif
12520 next j
12530 for j=0 to  ((Moji_12)-1)
12540 if buf_count$=buf_char_hiragana12$(j) then
12550 count=12
12560 endif
12570 next j
12580 for j=0 to ((Moji_13)-1)
12590 if buf_count$=buf_char_hiragana13$(j) then
12600 count=13
12610 endif
12620 next j
12630 for j=0 to ((Moji_14)-1)
12640 if buf_count$=buf_char_hiragana14$(j) then
12650 count=14
12660 endif
12670 next j
12680 for j=0 to ((Moji_15)-1)
12690 if buf_count$=buf_char_hiragana15$(j) then
12700 count=15
12710 endif
12720 next j
12730 for j=0 to ((Moji_16)-1)
12740 if buf_count$=buf_char_hiragana16$(j) then
12750 count=16
12760 endif
12770 next j
12780 for j=0 to ((Moji_17)-1)
12790 if buf_count$=buf_char_hiragana17$(j) then
12800 count=17
12810 endif
12820 next j
12830 for j=0 to ((Moji_18)-1)
12840 if buf_count$=buf_char_hiragana18$(j) then
12850 count=18
12860 endif
12870 next j
12880 for j=0 to ((Moji_19)-1)
12890 if buf_count$=buf_char_hiragana19$(j) then
12900 count=19
12910 endif
12920 next j
12930 for j=0 to ((Moji_20)-1)
12940 if buf_count$=buf_char_hiragana20$(j) then
12950 count=20
12960 endif
12970 next i
12980 for j=0 to ((Moji_21)-1)
12990 if buf_count$=buf_char_hiragana21$(j) then
13000 count=21
13010 endif
13020 next j
13030 for j=0 to ((Moji_22)-1)
13040 if buf_count$=buf_char_hiragana22$(j) then
13050 count=22
13060 endif
13070 next j
13080 for j=0 to ((Moji_23)-1)
13090 if buf_count$=buf_char_hiragana23$(j) then
13100 count=23
13110 endif
13120 next j
13130 for j=0 to ((Moji_24)-1)
13140 if buf_count$=buf_char_hiragana24$(j) then
13150 count=24
13160 endif
13170 buffer = count
13180 next j
13190 endfunc buffer
13200 '3.ヘルプ
13210 help:
13220 cls 3:font 48:color rgb(0,0,0),,rgb(176,196,222)
13230 '描画領域 ここから
13240 'line (0,0)-(550,60),rgb(0,0,255),bf
13250 'pen 5:line(0,0)-(547,57),rgb(127,255,212),b
13260 'line (0,60)-(550,470),rgb(127,255,212),bf
13270 'pen 5:line(0,57)-(547,467),rgb(0,0,255),b
13280 'line (0,470)-(550,550),rgb(0,255,0),bf
13290 'pen 5:line(0,467)-(547,547),rgb(0,0,255),b
13300 '描画領域　ここまで
13310 talk "へるぷがめんです。番号を選んでエンターキーを押してください。"
13320 'color rgb(255,255,255):print "姓名判断　ヘルプ"+chr$(13)
13330 gload "config/Picture/Help2.png"
13340 print chr$(13)
13350 color rgb(255,0,255):print"1.バージョン情報"+chr$(13)
13360 color rgb(255,0,255):print"2.参考文献"+chr$(13)
13370 color rgb(255,0,255):print"3.前の画面に戻る"+chr$(13)
13380 color rgb(255,0,255):PRINT"4.プログラムの終了"+chr$(13)
13390 color rgb(0,0,0):Input"番号:",selectNo
13400 if selectNo=1 then goto Version_Info:
13410 if selectNo=2 then goto Reference_Book:
13420 'プログラムの終了
13430 if selectNo=4 then talk"終了いたします":cls 3:end
13440 if selectNo=3 then goto Main_Screen:
13450 '十二基礎運を求める
13460 Jyuni_KisoUnn:
13470 buffer_Kiso(0)=Senzo_wasu
13480 buffer_Kiso(1)=Seikaku_wasu
13490 buffer_Kiso(2)=Aijyou_wasu
13500 buffer_Kiso(3)=Koudou_wasu
13510 'シャッフル前の処理 ここから
13520 ' 5.オール同数型:○ ok
13530 if (buffer_Kiso(0) = buffer_Kiso(1) and  buffer_Kiso(2) = buffer_Kiso(3) and  buffer_Kiso(1)=buffer_Kiso(2)) then
13540 Kisoun$ = "オール同数型":goto shuffle:
13550 else
13560 '　1.タテ型:○ ok
13570 if (((buffer_Kiso(1) - buffer_Kiso(0)) = 0) and (buffer_Kiso(3) - buffer_Kiso(2)) = 0) and (buffer_Kiso(3) <> buffer_Kiso(1)) then
13580 Kisoun$="タテ型":goto shuffle:
13590 else
13600 '2.ヨコ型:○ ok
13610 if (buffer_Kiso(1)=buffer_Kiso(3) and abs(buffer_Kiso(0) - buffer_Kiso(2)) > 1) then
13620 Kisoun$="ヨコ型":goto shuffle:
13630 else
13640 '3.斜め型:○ ok
13650 if ((buffer_Kiso(0)=buffer_Kiso(3)) and (buffer_Kiso(1) = buffer_Kiso(2)) and (buffer_Kiso(0) <> buffer_Kiso(1))) then
13660 Kisoun$="斜め型":goto shuffle:
13670 else
13680 '4.上下型:○ ok
13690 if (buffer_Kiso(0) = buffer_Kiso(2) and buffer_Kiso(1) - buffer_Kiso(0)>1 and buffer_Kiso(1) - buffer_Kiso(2)>1 and buffer_Kiso(1)-buffer_Kiso(3) > 1) then
13700 Kisoun$="上下型":goto shuffle:
13710 else
13720 '5.オール同数型
13730 'if (buffer_Kiso(0) = buffer_Kiso(1) = buffer_Kiso(2) = buffer_Kiso(3)) then
13740 'Kisoun$="オール同数型":goto shuffle:
13750 'else
13760 '6.表十字型
13770 '6.表十字型 同じ数字が2組ある
13780 if ((buffer_Kiso(0) = buffer_Kiso(2)) and (abs(buffer_Kiso(3) - buffer_Kiso(1))=1))  then
13790 Kisoun$="表十字型":goto shuffle:
13800 else
13810 '6-2.表十字型 (ヨコ系)
13820 if ((buffer_Kiso(1) - buffer_Kiso(3) = 0) and (buffer_Kiso(2) - buffer_Kiso(0) = 1)) then
13830 Kisoun$="表十字型(ヨコ系)":goto shuffle:
13840 else
13850 '6-3.表十字型 (上下系):○ ok
13860 if ((buffer_Kiso(2)-buffer_Kiso(0)=0) and (buffer_Kiso(1)-buffer_Kiso(3)=1)) then
13870 Kisoun$="表十字型(上下系)":goto shuffle:
13880 else
13890 '7-1.順序型(タテ・上下系):○ ok
13900 if ((abs(buffer_Kiso(1)-buffer_Kiso(2))=1) and (abs(buffer_Kiso(3) - buffer_Kiso(0)) = 1) and (abs(buffer_Kiso(2)-buffer_Kiso(1))=1)) then
13910 Kisoun$="順序型(タテ ・上下系)":goto shuffle:
13920 else
13930 '7-2.順序型(タテ・ヨコ系):○ ok
13940 if ((abs(buffer_Kiso(3) - buffer_Kiso(2)) = 1) and abs(buffer_Kiso(1) - buffer_Kiso(3)=1) and ((buffer_Kiso(0)=1 and buffer_Kiso(1)=9) or abs(buffer_Kiso(0) - buffer_Kiso(1)) = 1)) then
13950 Kisoun$="順序型(タテ・ヨコ系)":goto shuffle:
13960 else
13970 '7-3.順序型(斜め・上下系):○ ok
13980 if ((buffer_Kiso(3)-buffer_Kiso(0)=1) and (buffer_Kiso(0)-buffer_Kiso(2)=1) and (buffer_Kiso(2)-buffer_Kiso(1)=1)) then
13990 Kisoun$="順序型(斜め・上下系)":goto shuffle
14000 else
14010 '7-4.順序型(斜め・ヨコ系):○ ok
14020 if ((abs(buffer_Kiso(0) - buffer_Kiso(3)) = 2) and (abs(buffer_Kiso(3) - buffer_Kiso(1)) = 2) and (abs(buffer_Kiso(1) - buffer_Kiso(2)) = 7)) then
14030 Kisoun$="順序型(斜め・ヨコ系)":goto shuffle
14040 else
14050 '8-1.隔離型(タテ・上下系):○ ok
14060 if ((abs(buffer_Kiso(1)-buffer_Kiso(0)) = 2) and (abs(buffer_Kiso(2)-buffer_Kiso(3)) = 2) and (buffer_Kiso(3)-buffer_Kiso(1) > 2)) then
14070 Kisoun$="隔離型(タテ・上下系)":goto shuffle:
14080 '8-2.隔離型(タテ・ヨコ系)
14090 else
14100 if ((buffer_Kiso(1) - buffer_Kiso(0) = 2) and (abs(buffer_Kiso(3) - buffer_Kiso(1)) = 2) and (abs(buffer_Kiso(3) - buffer_Kiso(2)) = 2)) then
14110 Kisoun$="隔離型(タテ・ヨコ系)":goto shuffle:
14120 else
14130 '8-3.隔離型(斜め・上下系)○:ok
14140 if (((abs(buffer_Kiso(3)-buffer_Kiso(0)=2) and ((abs(buffer_Kiso(2)-buffer_Kiso(1))=2) and (abs(buffer_Kiso(2) - buffer_Kiso(0)) = 7))))) then
14150 Kisoun$="隔離型(斜め・上下系)":goto shuffle:
14160 else
14170 '8-4.隔離型(斜め・ヨコ系)
14180 if ((buffer_Kiso(0)-buffer_Kiso(3)=2) and (buffer_Kiso(3)-buffer_Kiso(1)=2) and (buffer_Kiso(2)-buffer_Kiso(1)=2)) then
14190 Kisoun$="隔離型(斜め・ヨコ系)":goto shuffle:
14200 else
14210 '8-5.隔離型(タテ系):○ ok
14220 if ((buffer_Kiso(2) - buffer_Kiso(0) = 3) and (buffer_Kiso(0)-buffer_Kiso(1) = 2) and (buffer_Kiso(1)-buffer_Kiso(3) = 2)) then
14230 Kisoun$="隔離型(タテ系)":goto shuffle:
14240 else
14250 '8-6.隔離型(斜め系)
14260 if (abs(buffer_Kiso(3)-buffer_Kiso(0)-1)=1 and (buffer_Kiso(2) - buffer_Kiso(1)-1)=1 and (abs(buffer_Kiso(1)-buffer_Kiso(3)-1)=2)) then
14270 Kisoun$="隔離型(斜め系)":goto shuffle:
14280 '8-7.隔離型(上下・ヨコ系)
14290 else
14300 if ((buffer_Kiso(3)-buffer_Kiso(0)=2) and (buffer_Kiso(1)-buffer_Kiso(3)=2) and (buffer_Kiso(2)-buffer_Kiso(1)=3)) then
14310 Kisoun$="隔離型(上下・ヨコ系)":goto shuffle:
14320 else
14330 '9-1.中一差型 (タテ系)
14340 if ((buffer_Kiso(0) - buffer_Kiso(1) = 1) and (buffer_Kiso(3) - buffer_Kiso(2) = 1) and (buffer_Kiso(1) - buffer_Kiso(3) = 2)) then
14350 Kisoun$="中一差(タテ系)":goto shuffle:
14360 else
14370 '9-2.中一差(斜め系)
14380 if ((buffer_Kiso(3)-buffer_Kiso(0)=1) and (buffer_Kiso(2)-buffer_Kiso(1)=1) and (buffer_Kiso(0)-buffer_Kiso(2)=2)) then
14390 Kisoun$="中一差(斜め系)":goto shuffle:
14400 else
14410 '10-1.中二差(タテ系)
14420 if ((buffer_Kiso(0)-buffer_Kiso(1)=1) and (buffer_Kiso(3)-buffer_Kiso(2)=1) and buffer_Kiso(1)-buffer_Kiso(3)=3)  then
14430 Kisoun$="中二差(タテ系)":goto shuffle:
14440 else
14450 '10-2.中二差(斜め系)
14460 if ((buffer_Kiso(0)-buffer_Kiso(3)=1) and (buffer_Kiso(1)-buffer_Kiso(2)=1))  then
14470  Kisoun$="中二差(斜め系)":goto shuffle:
14480 else
14490 '11-1.中広型(タテ系)
14500 if ((buffer_Kiso(0)-buffer_Kiso(1)=1) and (buffer_Kiso(2)-buffer_Kiso(3)=1) and (buffer_Kiso(3)-buffer_Kiso(1)=4)) then
14510 Kisoun$="中広型(タテ系)":goto shuffle:
14520 else
14530 '12-1.中順序型(ヨコ系)
14540 if ((buffer_Kiso(1) - buffer_Kiso(3) = 1) and (buffer_Kiso(0) - buffer_Kiso(1) = 2) and (buffer_Kiso(3) - buffer_Kiso(2) = 2))  then
14550 Kisoun$="中順序型(ヨコ系)":goto shuffle:
14560 else
14570 '12-2.中順序型(上下系)
14580 if ((buffer_Kiso(2)-buffer_Kiso(0)=1) and (buffer_Kiso(1) - buffer_Kiso(3))=2) then
14590 Kisoun$="中順序型(上下系)":goto shuffle:
14600 endif
14610 endif
14620 endif
14630 endif
14640 endif
14650 endif
14660 endif
14670 endif
14680 endif
14690 endif
14700 endif
14710 endif
14720 endif
14730 endif
14740 endif
14750 endif
14760 endif
14770 endif
14780 endif
14790 endif
14800 endif
14810 endif
14820 endif
14830 endif
14840 endif
14850 endif
14860 'endif
14870 'endif
14880 'シャッフル前の処理 ここまで
14890 shuffle:
14900 timer=0
14910 for i=0 to 3
14920 for j=3 to i+1 step -1
14930 if buffer_Kiso(j-1)>buffer_Kiso(j) then
14940 swap buffer_Kiso(j),buffer_Kiso(j-1)
14950 endif
14960 next j
14970 next i
14980 cls 3:talk"あなたのじゅうにきそうんです"
14990 'rgb(0,0,255):blue
15000 'line (0,0)-(1200,60),rgb(0,0,255),bf
15010 'pen 3:line(0,3)-(1203,63),rgb(0,0,255),b
15020 'line (0,60)-(1200,165),rgb(0,255,0),bf
15030 'pen 3:line (0,63)-(1203,168),rgb(0,0,255),b
15040 'line (0,165)-(1200,165+(550/3)),rgb(125,255,212),bf
15050 'pen 3:line (0,168)-(1203,165+(550/3)),rgb(0,0,255),b
15060 'line (0,165+(550/3))-(1200,165+(550/3)+90),rgb(0,255,0),bf
15070 'en 3:line (0,165+(550/3))-(1203,165+(550/3)+90+3),rgb(0,0,0),b
15080 gload "config/Picture/Result_Screen2.png"
15090 'color rgb(255,255,255)
15100 'print"十二基礎運 診断結果 2/2"+chr$(13)
15110 print chr$(13)
15120 'for j=0 to 3
15130 'print buffer_Kiso(j);
15140 'next j
15150 'print timer;"msec"
15160 'print chr$(13)
15170 buf_kyodai$=get_Sa$()
15180 color rgb(0,0,0)
15190 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
15200 color rgb(255,0,255)
15210 print"和数:";Kisoun$;chr$(13)
15220 print"兄弟相:";buf_kyodai$;chr$(13)
15230 color rgb(0,0,0)
15240 print"エンターキー:戻る" + chr$(13)
15250 key$ = input$(1)
15260 if key$ = chr$(13) then
15270 goto Result_ReiIden1:
15280 else
15290 goto shuffle:
15300 endif
15310 'バージョン情報
15320 Version_Info:
15330 cls 3:font 24
15340 line(0,0) - (1300,40),rgb(0,0,255),bf
15350 line (0,40)-(1300,220),rgb(127,255,212),bf
15360 line (0,220)-(1300,280),rgb(0,255,0),bf
15370 talk "バージョン情報です"
15380 color rgb(255,255,255)
15390 print "バージョン情報" + chr$(13)
15400 color rgb(255,0,255)
15410 print "アプリ名:霊遺伝姓名学 スタンダード" + chr$(13)
15420 print "Author:licksjp" + chr$(13)
15430 print Version$ + chr$(13)
15440 print"(c)copy rights licksjp All rights reserved since 2019" + chr$(13)
15450 color rgb(0,0,0)
15460 print"エンターキーを押してください" + chr$(13)
15470 a$ = input$(1)
15480 if a$=chr$(13) then goto Main_Screen:
15490 Reference_Book:
15500 cls 3
15510 line(0,0)-(1200,60),rgb(0,0,255),bf
15520 pen 3:line(0,0)-(1201,61),rgb(0,0,255),b
15530 line(0,60)-(1200,580),rgb(127,255,212),bf
15540 pen 3:line(0,61)-(1201,581),rgb(0,0,255),b
15550 line(0,580)-(1200,640),rgb(0,255,0),bf
15560 pen 3:line(0,583)-(1203,640),rgb(0,0,255),b
15570 color rgb(255,255,255)
15580 print "参考文献" + chr$(13)
15590 color rgb(255,0,255)
15600 print "書名:姓名の暗号" + chr$(13)
15610 print "著者:樹門 幸宰" + chr$(13)
15620 print "出版社:幻冬舎" + chr$(13)
15630 print "定価:1400+税"+chr$(13)
15640 print "ISBN:4-344-0077-8" + chr$(13)
15650 color rgb(0,0,0)
15660 print "スペースキーを押してください"+CHR$(13)
15670 key$ = input$(1)
15680 if key$=" " then goto Reference_Book2:
15690 '
15700 Reference_Book2:
15710 cls 3
15720 pen 3:line(0,3) - (1203,63),rgb(0,0,255),b
15730 line(0,0) - (1200,60),rgb(0,0,255),bf
15740 pen 3:line(0,57) - (1197,577),rgb(0,0,255),b
15750 line(0,60) - (1200,570),rgb(127,255,212),bf
15760 pen 3:line(0,63) - (1197,753),rgb(0,0,255),b
15770 line(0,573) - (1193,750),rgb(0,255,0),bf
15780 color rgb(255,255,255)
15790 print "参考文献2" + chr$(13)
15800 color rgb(255,0,255)
15810 print "書名:姓名の暗号 解読法" + chr$(13)
15820 print "著者:樹門 幸宰" + chr$(13)
15830 print "出版社:幻冬舎" + chr$(13)
15840 print "定価:600円 + 税" + chr$(13)
15850 print "ISBN:978-4-344-41190-6" + chr$(13)
15860 color rgb(0,0,0)
15870 print"スペースキー:参考文献1へ行く" + chr$(13)
15880 print"エンターキー:トップ画面" + chr$(13)
15890 key$=input$(1)
15900 if key$=" " then goto Reference_Book:
15910 if key$=chr$(13) then goto Main_Screen:
15920 '差を求める
15930 func get_Sa$()
15940 for i=0 to 3
15950 for j=3 to i+1 step -1
15960 if buffer_Kiso(j-1)>buffer_Kiso(j) then
15970 swap buffer_Kiso(j),buffer_Kiso(j-1)
15980 endif
15990 next j
16000 next i
16010 sa1=0:sa2=0:sa3=0:sa4=0:sa_max=0:sa_max1=0:sa_max2=0:
16020 sa1=abs(buffer_Kiso(2)-buffer_Kiso(1))  - 1
16030 sa2=abs(buffer_Kiso(2)-buffer_Kiso(3)) - 1
16040 sa3=abs(buffer_Kiso(1)-buffer_Kiso(0)) - 1
16050 sa4=abs(buffer_Kiso(3)-buffer_Kiso(0)) - 1
16060 sa_max1=max(sa1,sa2)
16070 sa_max2=max(sa2,sa3)
16080 sa_max3=max(sa3,sa1)
16090 if (sa1=sa2 and sa3=sa4) then
16100 sa_max = -1
16110 else
16120 if (buffer_Kiso(3)=9 and buffer_Kiso(0)=1) and (buffer_Kiso(3)-buffer_Kiso(2)-1=0) and (buffer_Kiso(2)-buffer_Kiso(1)-1=0) then
16130 sa_max=0
16140 else
16150 'Patern1 sa_max1が一番大きいとき
16160 if (sa_max1 >= sa_max2 and sa_max1 >= sa_max3) then
16170 sa_max=sa_max1
16180 else
16190 'Patern2 sa_maxが一番大きいとき
16200 if (sa_max2 >= sa_max1 and sa_max2 >= sa_max3) then
16210 sa_max=sa_max2
16220 else
16230 'Patern3 sa_max3が一番大きいとき
16240 if (sa_max3 >= sa_max1 and sa_max3>=sa_max2) then
16250 sa_max=sa_max3
16260 endif
16270 endif
16280 endif
16290 endif
16300 endif
16310 select case sa_max
16320 case -1:
16330        buffer$ = "オール同数型"
16340        select case sex_type
16350        case 1:
16360              buffer2$="四女相"
16370        case 2:
16380              buffer2$="四男相"
16390        end select
16400 case 0:
16410        buffer$ ="連続"
16420        select case sex_type
16430        case 1:
16440              buffer2$="長女相"
16450        case 2:
16460              buffer2$="長男相"
16470        end select
16480 case 1:
16490        buffer$ ="1差"
16500        select case sex_type
16510        case 1:
16520             buffer2$="次女相"
16530        case 2:
16540             buffer2$="次男相"
16550        end select
16560 case 2:
16570        buffer$ ="2差"
16580        select case sex_type
16590        case 1:
16600             buffer2$="3女相"
16610        case 2:
16620             buffer2$="3男相"
16630        end select
16640 case 3:
16650        buffer$ ="3差"
16660        select case sex_type
16670        case 1:
16680              buffer2$="4女相"
16690        case 2:
16700              buffer2$="4男相"
16710        end select
16720 case 4:
16730        buffer$ ="4差"
16740        select case sex_type
16750         case 1:
16760              buffer2$="5女相"
16770         case 2:
16780              buffer2$="5男相"
16790        end select
16800 case else:
16810 end select
16820 buffer_Sa$ = buffer$ +","+ buffer2$
16830 endfunc buffer_Sa$
