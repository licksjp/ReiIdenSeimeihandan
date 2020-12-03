100 '初期設定項目
110 'メモリー定義
120 '2020.04.02開発再開
130 'バージョン履歴
140 'Version1.77:Date 2020.04.0801
150 'Version1.77:Date:2020.04.08.05
160 'Version1.78:Date:2020.04.09.01
170 'Version1.79:Date:2020.04.10.01
180 'Version1.80:Date:2020.04.11.01
190 'Version1.81:Date:2020.04.12.01
200 'Version1.82:Date:2020.04.13.01
210 'Version1.83:Date:2020.04.14.01
220 'Version1.84:Date:2020.04.15.01
230 'Version1.85:Date:2020.04.16.01
240 'Version1.86:Date:2020.04.17.01
250 'Version1.87:Date:2020.04.21.01
260 'Version1.88:Date:2020.04.25.01
270 'Version1.89:Date:2020.04.26.01
280 'Version1.90:Date:2020.04.27.01(2 in 1開発終了)
290 'Version1.91:(新しい流派を追加3 in １ 開発開始):Date2020.05.01
300 'Version1.92:Date:2020.05.02:霊遺伝姓名学追加
310 'Version1.93:Date:2020.05.03
320 'Version1.94:Date:2020.05.05
330 'Version1.95:Date:2020.05.07
340 'Version1.96:Date:2020.05.09
350 'Version1.97:Date:2020.05.12
360 'Version1.98:Date:2020.05.13
370 'Version1.99:Date:2020.05.17
380 'Version2.00:Date:2020.05.19
390 'Version2.01:Date:2020.05.20
400 'Version2.02:Date:2020.05.21
410 'Version2.03:Date:2020.05.22
420 'Version2.04:Date:2020.05.23
430 'Version2.05:Date:2020.05.24
440 'Version2.06:Date:2020.05.26
450 'Version2.07:Date:2020.05.27
460 'Version2.08:Date:2020.05.28
470 'Version2.09:Date:2020.05.30
480 'Version2.11:Date:2020.06.02
490 'Version2.12:Date:2020.06.03
500 'Version2.13:Date:2020.06.07
510 'Version2.14:Date:2020.06.08
520 'Version2.15:Date:2020.06.09
530 'Version2.16:Date:2020.06.10
540 'Version2.17:Date:2020.06.12
550 'Version2.18:Date:2020.06.15
560 'Version2.19:Date:2020.06.16
570 'Version2.20:Date:2020.06.17
580 'Version2.27:Date:2020.08.29
590 'Version2.28:Date:2020.08.30
600 'Version2.29:Date:2020.08.31
610 'Version2.30:Date:2020.09.02
620 'Version2.31:Date:2020.09.26
630 'Version2.33:Date:2020.10.02
640 'Version2.34:Date:2020.10.08
650 'Version2.35:Date:2020.10.14
660 'Version2.36:Date:2020.10.17
670 '設定ファイル　漢字文字データ
680 'Version:Mojidata20200411.dat Date:20200411
690 'Version:Mojidata20200415.dat Date:20200415
700 'Version:Mojidata20200506.dat Date:20200506
710 'Version:Mojidata20200513.dat Date:20200513
720 'Version:Mojidata20200516.dat Date:20200516
730 'Version:Mojidata_ReiIden20200829.dat:Date:20200829
740 'Version:Mojidata_ReiIden20200911.dat:Date:20200911
750 '
760 '新機能
770 'Date:2020.05.27
780 'Parsonal_data.datに個人データーを保存機能追加
790 'メモリー確保 文字領域,数値データー
800 clear 4*4000,4*1000000
810 '改名チェック変数
820 buffer_K=0:dim buffer_Kaimei$(5,5,5,5):kaimei_count=0:dim buf_name1$(10)
830 dim  buf_namearray$(10),name_array$(10),buf_namearray2$(10),name_array2$(10),lines$(100),lines2$(10),buflines$(40*10):n=0:dim buf_lines$(27):hit_count=0:dim bufname$(40*10),buffname$(40*10*2)
840 Max=40:acount=0
850 '性別の選択用変数
860 dim sex_type$(2)
870 '相性占い　設定項目 ここから
880 count=0:line_count=0
890 dim buffer_Aisyou_type$(10,10)
900 dim buffer_Kaimei_data_name$(10)
910 '改名チェックの選択肢の変数
920 dim select$(3)
930 select$(0)="改名リストに追加する"
940 select$(1)="改名リストに追加しない"
950 select$(2)="トップ画面に行く"
960 '総数を出す変数 改名チェック変数
970 'dim buffer_total$
980 '1.理解し合える最良のカップル
990 dim buf_good_couple1(20)
1000 dim buf_good_couple2(20)
1010 '2.互いに自然体でつきあえるカップル
1020 dim buf_natural_couple1(20)
1030 dim buf_natural_couple2(20)
1040 '3.男性にとって居心地の良い相性
1050 dim buf_good_for_man1(20)
1060 dim buf_good_for_man2(20)
1070 '4.女性にとって居心地の良い相性
1080 dim buf_good_for_woman1(20)
1090 dim buf_good_for_woman2(20)
1100 '5.恋愛経験を重ねた後なら愛を育める
1110 dim short_of_experience1(20)
1120 dim short_of_experience2(20)
1130 '6.結婚への発展が困難なカップル
1140 dim buf_difficult_for_couple1(20)
1150 dim buf_difficult_for_couple2(20)
1160 '7.愛し方にズレが出てくる二人
1170 dim buf_difference_of_love1(20)
1180 dim buf_difference_of_love2(20)
1190 '相性占い　設定項目　ここまで
1200 '8.互いの価値観が噛み合わない相性 ここから
1210 dim buf_difference_of_KachiKan1(20)
1220 dim buf_difference_of_KachiKan2(20)
1230 '8.互いに価値観が噛み合わない相性 ここまで
1240 '相性診断　相性パターン結果　ここから
1250 dim Result_Aisyou_type$(8)
1260 '相性診断 相性パターン結果 ここまで
1270 '2019/04/07 姓名判断アプリ 作成開始
1280 '姓名判断　 名前の総数での吉凶を調べる
1290 buf_count=0:buffer_count=0:count=0:buffer=0
1300 '合計文字数
1310 totalmoji=0
1320 dim buf_Input_data$(10),buf_Input_data2$(10)
1330 dim bufer_name$(10),bufer_name2$(10)
1340 dim buf_Input_name$(10),buf_Input_name2$(10)
1350 dim buf_wasu(4)
1360 '定数文字1画〜27画
1370 'ファイルから各画数を読み込んで代入する。
1380 '1行目だけ読み込む
1390 open "config/Kanji_data/Mojidata_ReiIden20200911.dat" for input as #2
1400 for i=0 to 26
1410 input #2,buf_lines$(i)
1420 next i
1430 close #2
1440 Moji_1=val(buf_lines$(0)):Moji_2=val(buf_lines$(1)):Moji_3=val(buf_lines$(2)):Moji_4=val(buf_lines$(3)):Moji_5=val(buf_lines$(4)):Moji_6=val(buf_lines$(5)):Moji_7=val(buf_lines$(6)):Moji_8=val(buf_lines$(7)):Moji_9=val(buf_lines$(8)):Moji_10=val(buf_lines$(9)):Moji_11=val(buf_lines$(10)):Moji_12=val(buf_lines$(11)):Moji_13=val(buf_lines$(12)):Moji_14=val(buf_lines$(13)):Moji_15=val(buf_lines$(14)):Moji_16=val(buf_lines$(15)):Moji_17=val(buf_lines$(16)):Moji_18=val(buf_lines$(17)):Moji_19=val(buf_lines$(18)):Moji_20=val(buf_lines$(19)):Moji_21=val(buf_lines$(20)):Moji_22=val(buf_lines$(21)):Moji_23=val(buf_lines$(22)):Moji_24=val(buf_lines$(23)):Moji_25=val(buf_lines$(24)):Moji_26=val(buf_lines$(25)):Moji_27=val(buf_lines$(26))
1450 Moji_total=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
1460 '1画
1470 Moji_Min_1 = 28:Moji_Max_1 = Moji_1 + 27+1:
1480 '2画
1490 Moji_Min_2 = (Moji_1) + 27+2:Moji_Max_2 = Moji_1 + Moji_2+27+2
1500 '3画
1510 Moji_Min_3 =(Moji_1) + (Moji_2) + 27+3:Moji_Max_3 =Moji_1 + Moji_2 + Moji_3+27+3
1520 '4画
1530 Moji_Min_4 = (Moji_3) + Moji_2 + Moji_1 + 27+4:Moji_Max_4=Moji_1+Moji_2 + Moji_3 + Moji_4 + 27+4
1540 '5画
1550 Moji_Min_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4) + 27+5:Moji_Max_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5)+27+5
1560 '6画
1570 Moji_Min_6 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5)+27+6:Moji_Max_6=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6)+27+6
1580 '7画
1590 Moji_Min_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6) + 27+7:Moji_Max_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7) + 27+7
1600 '8画
1610 Moji_Min_8 = Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+27+8:Moji_Max_8=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8)+27+8
1620 '9画
1630 Moji_Min_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + 27+9:Moji_Max_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + 27+9
1640 '10画
1650 Moji_Min_10 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9)+27+10:Moji_Max_10=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10)+27+10
1660 '11画
1670 Moji_Min_11 = (Moji_1+Moji_2+Moji_3+Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10)+27+11:Moji_Max_11=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11)+27+11
1680 '12画
1690 Moji_Min_12 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11)+27+12:Moji_Max_12=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+27+12
1700 '13画
1710 Moji_Min_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12)+13+27:Moji_Max_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+27+13
1720 '14画
1730 Moji_Min_14 =(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+14+27:Moji_Max_14=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+14+27
1740 '15画
1750 Moji_Min_15 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+15+27:Moji_Max_15=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6+ Moji_7 + Moji_8 + Moji_9+ Moji_10 + Moji_11 + Moji_12+Moji_13+Moji_14+Moji_15)+15+27
1760 '16画
1770 Moji_Min_16 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15)+16+27:Moji_Max_16=Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+16+27
1780 '17画
1790 Moji_Min_17 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16) + 17+27:Moji_Max_17 = Moji_1 + Moji_2 + Moji_3 + Moji_4+Moji_5 + Moji_6 + Moji_7+Moji_8 + Moji_9 + Moji_10 + Moji_11 + Moji_12 + Moji_13 + Moji_14 + Moji_15+Moji_16+Moji_17+17+27
1800 '18画
1810 Moji_Min_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17)+18+27:Moji_Max_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+18+27
1820 '19画
1830 Moji_Min_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+19+27:Moji_Max_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+19+27
1840 '20画
1850 Moji_Min_20=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+20+27:Moji_Max_20=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+20+27
1860 '21画
1870 Moji_Min_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20)+21+27:Moji_Max_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+21+27
1880 '22画
1890 Moji_Min_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+22+27:Moji_Max_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22)+22+27
1900 '23画
1910 Moji_Min_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+23+27):Moji_Max_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+23+27
1920 '24画
1930 Moji_Min_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+24+27:Moji_Max_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+24+27
1940 '25画
1950 Moji_Min_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+25+27:Moji_Max_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+25+27
1960 '26画
1970 Moji_Min_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+26+27:Moji_Max_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+26+27
1980 '27画
1990 Moji_Min_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+27+27:Moji_Max_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27)+27+27
2000 dim Moji_data$(Moji_total+27+27)
2010 'dim bufmoji$(10),Input_data$(10)
2020 '１画の文字   サイズ:21+2(漢字)
2030 dim buf_char_hiragana1$(Moji_1)
2040 '2画の文字  サイズ 58+14=72(漢字)
2050 dim buf_char_hiragana2$(Moji_2)
2060 '3画の文字 サイズ:48+29=77(漢字)
2070 dim buf_char_hiragana3$(Moji_3)
2080 '4画の文字 サイズ:29+51=80(漢字)
2090 dim buf_char_hiragana4$(Moji_4)
2100 '５画の文字  サイズ:18+59=77(漢字)
2110 dim buf_char_hiragana5$(Moji_5)
2120 '6画の文字  サイズ:79(漢字)
2130 dim buf_char_hiragana6$(Moji_6)
2140 '7画の文字  サイズ:88(漢字)
2150 dim buf_char_hiragana7$(Moji_7)
2160 '8画の文字
2170 dim buf_char_hiragana8$(Moji_8)
2180 '9画の文字
2190 dim buf_char_hiragana9$(Moji_9)
2200 '10画の文字 98文字
2210 dim buf_char_hiragana10$(Moji_10)
2220 '11画の文字
2230 dim buf_char_hiragana11$(Moji_11)
2240 '12画の文字
2250 dim buf_char_hiragana12$(Moji_12)
2260 '13画の文字 81文字
2270 dim buf_char_hiragana13$(Moji_13)
2280 '14画の文字
2290 dim buf_char_hiragana14$(Moji_14)
2300 '15画の文字
2310 dim buf_char_hiragana15$(Moji_15)
2320 '16画の文字
2330 dim buf_char_hiragana16$(Moji_16)
2340 '17画の文字
2350 dim buf_char_hiragana17$(Moji_17)
2360 '18画の文字
2370 dim buf_char_hiragana18$(Moji_18)
2380 '19画の文字
2390 dim buf_char_hiragana19$(Moji_19)
2400 '20画の文字
2410 dim buf_char_hiragana20$(Moji_20)
2420 '21画の文字
2430 dim buf_char_hiragana21$(Moji_21)
2440 '22画の文字
2450 dim buf_char_hiragana22$(Moji_22)
2460 '23画の文字
2470 dim buf_char_hiragana23$(Moji_23)
2480 '24画の文字
2490 dim buf_char_hiragana24$(Moji_24)
2500 '25
2510 dim buf_char_hiragana25$(Moji_25)
2520 dim buf_char_hiragana26$(Moji_26)
2530 dim buf_char_hiragana27$(Moji_27)
2540 '結果表示1　吉凶データー 81パターン
2550 dim buf_Kikkyo$(81)
2560 '結果表示２
2570 '安斎流姓名判断 吉凶  1.地運
2580 dim buf_Kikkyo_Anzai_chiunn$(70)
2590 '安斎流姓名判断　　吉凶  2.人運
2600 dim buf_Kikkyo_Anzai_jinunn$(69)
2610 '安斎流姓名判断 吉凶 3.外運
2620 'dim buf_Kikkyo_Anzai_gaiunn$(70)
2630 '安斎流姓名判断 吉凶　　4.総運
2640 dim buf_Kikkyo_Anzai_total$(80)
2650 '霊遺伝姓名学　変数
2660 A=0
2670 B=0
2680 C=0
2690 D=0
2700 '1.先祖運
2710 buffer_senzo=0
2720 '2.性格運
2730 buffer_seikaku=0
2740 '3.愛情運
2750 buffer_Aijyou=0
2760 '4.行動運
2770 buffer_Kouzou=0
2780 '1-1.先祖運　和数
2790 Senzo_wasu=0
2800 '1-2.先祖運　生数
2810 Senzo_seisu=0
2820 '2-1.性格運 和数
2830 Seikaku_wasu=0
2840 '2-2.性格運 生数
2850 Seikaku_seisu=0
2860 '3-1.愛情運 和数
2870 Aijyou_wasu=0
2880 '3-2.愛情運 生数
2890 Aijyou_seisu=0
2900 '4-1 行動運 和数
2910 Koudo_wasu=0
2920 '4-2 行動運 生数
2930 Koudo_seisu=0
2940 'データー読み込み　ここから
2950 'データー読み込み　1.ひらがな
2960 '1画の文字   6文字 23文字
2970 open "config/Kanji_data/Mojidata_ReiIden20200911.dat" for input as #1
2980 '全ファイルを読み込む
2990 for i = 0 to 26+Moji_total+27
3000 input #1,Moji_data$(i)
3010 next i
3020 close #1
3030 '全ファイル読み込み　ここまで
3040 for i = 27+1 to (Moji_1)+27+1
3050 '1画の文字にデーターをコピーする
3060 buf_char_hiragana1$(i-Moji_Min_1) = Moji_data$(i)
3070 next i
3080 '2画の文字    98文字
3090 for i = Moji_Min_2  to (Moji_Max_2)
3100 buf_char_hiragana2$(i-Moji_Min_2)=Moji_data$(i)
3110 next i
3120 '3文字の文字    77文字
3130 for i = Moji_Min_3  to (Moji_Max_3)
3140 buf_char_hiragana3$(i-(Moji_Min_3)) = Moji_data$(i)
3150 next i
3160 '4文字の文字   80文字
3170 for i = (Moji_Min_4)  to (Moji_Max_4)
3180 buf_char_hiragana4$(i-Moji_Min_4)=Moji_data$(i)
3190 next i
3200 '5文字の文字 77文字
3210 for i = Moji_Min_5 to (Moji_Max_5)
3220 buf_char_hiragana5$(i - Moji_Min_5)=Moji_data$(i)
3230 next i
3240 '6文字の文字 79文字
3250 for i = Moji_Min_6  to Moji_Max_6
3260 buf_char_hiragana6$(i-Moji_Min_6) = Moji_data$(i)
3270 next i
3280 '7文字の文字 170文字
3290 for i = Moji_Min_7 to Moji_Max_7
3300 buf_char_hiragana7$(i-Moji_Min_7)=  Moji_data$(i)
3310 next i
3320 '8画の文字 120文字
3330 for i = Moji_Min_8 to Moji_Max_8
3340 buf_char_hiragana8$(i - Moji_Min_8)=Moji_data$(i)
3350 next i
3360 '9画の文字  103文字
3370 for i = Moji_Min_9 to Moji_Max_9
3380 buf_char_hiragana9$(i - Moji_Min_9)=Moji_data$(i)
3390 next i
3400 '10画の文字 285文字
3410 for i = Moji_Min_10 to (Moji_Max_10)
3420 buf_char_hiragana10$(i-Moji_Min_10)=Moji_data$(i)
3430 next i
3440 '11画の文字
3450 for i = Moji_Min_11 to Moji_Max_11
3460 buf_char_hiragana11$(i-Moji_Min_11) = Moji_data$(i)
3470 next i
3480 '12画の文字
3490 for i = Moji_Min_12 to Moji_Max_12
3500 buf_char_hiragana12$(i-Moji_Min_12)=Moji_data$(i)
3510 next i
3520 '13画の文字 81
3530 for i = Moji_Min_13 to Moji_Max_13
3540 buf_char_hiragana13$(i-Moji_Min_13) = Moji_data$(i)
3550 next i
3560 '14画の文字 66
3570 for i = Moji_Min_14 to Moji_Max_14
3580 buf_char_hiragana14$(i-Moji_Min_14)=Moji_data$(i)
3590 next i
3600 '15画の文字 59
3610 'for i = Moji_Min_15 to (Moji_Max_15) - 1
3620 for i=Moji_Min_15 to  Moji_Max_15
3630 buf_char_hiragana15$(i-Moji_Min_15)=Moji_data$(i)
3640 next i
3650 '16画の文字 44
3660 for i=Moji_Min_16 to Moji_Max_16
3670 buf_char_hiragana16$(i-Moji_Min_16)=Moji_data$(i)
3680 next i
3690 '17画の文字
3700 for i = Moji_Min_17 to Moji_Max_17
3710 buf_char_hiragana17$(i-Moji_Min_17)=Moji_data$(i)
3720 next i
3730 '18画の文字
3740 for i = Moji_Min_18 to Moji_Max_18
3750 buf_char_hiragana18$(i-Moji_Min_18)=Moji_data$(i)
3760 next i
3770 '19画の文字 17文字
3780 for i = Moji_Min_19 to Moji_Max_19
3790 buf_char_hiragana19$(i-Moji_Min_19)=Moji_data$(i)
3800 next i
3810 '20 画の文字 13文字
3820 for  i = Moji_Min_20 to Moji_Max_20
3830 buf_char_hiragana20$(i-Moji_Min_20)=Moji_data$(i)
3840 NEXT i
3850 '21画の文字 6
3860 for i = Moji_Min_21 to (Moji_Max_21)
3870 buf_char_hiragana21$(i-Moji_Min_21)=Moji_data$(i)
3880 next i
3890 '22 画の文字 4
3900 for i = Moji_Min_22 to Moji_Max_22
3910 buf_char_hiragana22$(i-Moji_Min_22)=Moji_data$(i)
3920 next i
3930 '23画の文字  3文字
3940 for i = Moji_Min_23 to Moji_Max_23
3950 buf_char_hiragana23$(i-Moji_Min_23)=Moji_data$(i)
3960 next i
3970 '24画の文字  3文字
3980 for i = Moji_Min_24 to Moji_Max_24
3990 buf_char_hiragana24$(i-Moji_Min_24)=Moji_data$(i)
4000 next i
4010 '25 画の文字 4
4020 for i = Moji_Min_25 to Moji_Max_25
4030 buf_char_hiragana25$(i-Moji_Min_25)=Moji_data$(i)
4040 next i
4050 '26画の文字  3文字
4060 for i = Moji_Min_26 to Moji_Max_26
4070 buf_char_hiragana26$(i-Moji_Min_26)=Moji_data$(i)
4080 next i
4090 '27画の文字  3文字
4100 for i = Moji_Min_27 to Moji_Max_27
4110 buf_char_hiragana27$(i-Moji_Min_27)=Moji_data$(i)
4120 next i
4130 '吉凶データー読み込み
4140 open "config/Kikkyo_data/Kikkyo_data.dat" for input as #1
4150 for i=0 to 80
4160 input #1,buf_Kikkyo$(i+1)
4170 next i
4180 close #1
4190 open "config/Kikkyo_data/Anzai_Kikkyo_chiunn.dat" for input as #2
4200 for m=0 to 69
4210 input #2,buf_Kikkyo_Anzai_chiunn$(m)
4220 next m
4230 close #2
4240 open "config/Kikkyo_data/Anzai_Kikkyo_jinunn.dat" for input as #3
4250 for i=1 to 70
4260 input #3,buf_Kikkyo_Anzai_jinunn$(i-1)
4270 next i
4280 close #3
4290 open "config/Kikkyo_data/Anzai_Kikkyo_Total.dat" for input as #4
4300 for i=0 to 79
4310 input #4,buf_Kikkyo_Anzai_total$(i)
4320 next i
4330 close #4
4340 restore 5200
4350 for i=0 to 19
4360 '  for j=0 to 11
4370 read buf_good_couple1(i)
4380 '  next j
4390 next i
4400 restore 5210
4410 for j=0 to 19
4420 read buf_good_couple2(j)
4430 next j
4440 '0.理解し合えるカップル ここまで
4450 '1.互いに自然体でつきあえる二人　ここから
4460 restore 5240
4470 for i=0 to 19
4480 read buf_natural_couple1(i)
4490 next i
4500 restore 5250
4510 for j=0 to 19
4520 read buf_natural_couple2(j)
4530 next j
4540 '1.互いに自然体でつきあえる二人　ここまで
4550 '2        ここから
4560 restore 5280
4570 for i=0 to 19
4580 read buf_good_for_man1(i)
4590 next i
4600 restore 5290
4610 for j=0 to 19
4620 read buf_good_for_man2(j)
4630 next j
4640 '2        ここまで
4650 '3        ここから
4660 restore 5320
4670 for i=0 to 19
4680 read buf_good_for_woman1(i)
4690 next i
4700 restore 5330
4710 for j=0 to 19
4720 read buf_good_for_woman2(j)
4730 next j
4740 '3        ここまで
4750 '4        ここから
4760 restore 5360
4770 for i=0 to 19
4780 read short_of_experience1(i)
4790 next i
4800 restore 5370
4810 for j=0 to 19
4820 read short_of_experience2(j)
4830 next j
4840 '4        ここまで
4850 '5.結婚への発展が困難なカップル  ここから
4860 restore 5400
4870 for i=0 to 19
4880 read buf_difficult_for_couple1(i)
4890 next i
4900 restore 5410
4910 for j=0 to 19
4920 read buf_difficult_for_couple2(j)
4930 next j
4940 '5.結婚への発展が困難なカップル  ここまで
4950 '6.愛し方にズレが出る二人 ここから
4960 restore 5440
4970 for i=0 to 19
4980 read buf_difference_of_love1(i)
4990 next i
5000 restore 5450
5010 for j=0 to 19
5020 read buf_difference_of_love2(j)
5030 next j
5040 '6.愛し方にズレが出る二人 ここまで
5050 '7.互いの価値観が噛み合わない相性 ここから
5060 restore 5480
5070 for i=0 to 19
5080 read buf_difference_of_KachiKan1(i)
5090 next i
5100 restore 5490
5110 for j=0 to 19
5120 read buf_difference_of_KachiKan2(j)
5130 next j
5140 '7.互いの価値観が噛み合わない相性 ここまで
5150 '相性占いタイプ ここから
5160 restore 5530
5170 for i=0 to 7
5180 read Result_Aisyou_type$(i)
5190 next i
5200 data 1,5,6,2,5,7,3,5,8,4,6,0,-1,-1,-1,-1,-1,-1,-1,-1
5210 data 8,2,2,6,8,4,9,0,1,7,1,5,-1,-1,-1,-1,-1,-1,-1,-1
5220 '0.理解し合えるカップル　ここまで
5230 '1.互いに自然体でつきあえるカップル ここから
5240 data 1,4,6,7,9,2,4,6,8,9,3,4,6,8,0,3,4,7,8,0
5250 data 6,1,6,2,6,5,4,7,7,0,2,9,8,8,3,3,0,1,0,7
5260 '1.互いに自然体でつきあえるカップル　ここまで
5270 '2.男性にとって居心地の良いカップル  ここから
5280 data 1,6,9,2,8,9,3,8,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
5290 data 1,5,4,0,5,8,4,9,9,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
5300 '2男性にとって居心地の良いカップル ここまで
5310 '3女性にとって居心地の良いカップル  ここから
5320 data 1,2,6,7,1,5,6,0,2,5,7,0,-1,-1,-1,-1,-1,-1,-1,-1
5330 data 3,2,4,0,9,3,9,2,1,6,8,8,-1,-1,-1,-1,-1,-1,-1,-1
5340 '3女性にとって居心地の良いカップル  ここまで
5350 '4恋愛経験を重ねた後なら愛を育める ここから
5360 data 1,3,6,8,1,3,7,2,4,8,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
5370 data 7,6,3,3,0,7,5,4,5,2,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
5380 '4恋愛経験を重ねた後なら愛を育める ここまで
5390 '5.結婚への発展が困難なカップル ここから
5400 data 1,4,7,2,4,9,3,7,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
5410 data 2,3,7,3,6,3,5,6,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
5420 '5.結婚への発展が困難なカップル ここまで
5430 '6.愛し方にズレが生じる二人  ここから
5440 data 1,5,9,2,5,9,3,7,0,3,8,-1,-1,-1,-1,-1,-1,-1,-1,-1
5450 data 5,4,5,7,7,7,8,9,6,0,6,-1,-1,-1,-1,-1,-1,-1,-1,-1
5460 '6.愛し方にずれが生じる二人  ここまで
5470 '7.互いに価値観が噛み合わない相性　ここから
5480 data 1,4,5,9,0,2,4,6,9,2,5,7,9,3,5,8,0,-1,-1,-1
5490 data 4,2,9,1,0,8,8,0,2,9,1,3,9,1,5,4,4,-1,-1,-1
5500 '7.互いに価値観が噛み合わない相性 ここまで
5510 '相性占い結果パターン ここから
5520 '0
5530 data "理解し合える最良のカップル"
5540 '1
5550 data "互いに自然体でつきあえるカップル"
5560 '2
5570 data "男性にとって居心地の良い相性"
5580 '3
5590 data "女性にとって居心地の良い相性"
5600 '4
5610 data "恋愛経験を重ねた後なら愛を育める"
5620 '5
5630 data "結婚への発展が困難なカップル"
5640 '6
5650 data "愛し方にずれが生じる二人"
5660 '7
5670 data "互いの価値観が噛み合わない相性"
5680 '相性占い結果パターン ここまで
5690 'メイン画面　ここから
5700 '描画領域　ここから
5710 Select_keybord:
5720 cls 3:font 48:
5730 line (0,0)-(1200,60),rgb(0,0,255),bf
5740 pen 5:line (0,0)-(1197,57),rgb(127,255,212),b
5750 line (0,60)-(1200,380),rgb(127,255,212),bf
5760 pen 5:line(0,57)-(1197,377),rgb(0,0,255),b
5770 line (0,380)-(1200,450),rgb(0,255,0),bf
5780 pen 5:line(0,377)-(1197,447),rgb(0,0,255),b
5790 '描画領域　ここまで
5800 '設定画面 バーチャルキーボードの表示選択
5810 talk"キーボードの選択です。バーチャルキーボードを表示させますか ？"
5820 color rgb(255,255,255)
5830 print "●バーチャル キーボードの表示の選択"+chr$(13)
5840 color rgb(255,0,255)
5850 print "1.バーチャルキーボードを表示する"+chr$(13)
5860 print "2.バーチャルキーボードを表示しない"+chr$(13)
5870 print "3.プログラムを終了する"+chr$(13)
5880 color rgb(0,0,0)
5890 Input"番号:",keyNo
5900 if keyNo = 1 then init"kb:2"
5910 if keyNo = 2 then init"kb:0"
5920 if keyNo = 3 then end
5930 if keyNo > 3 or keyNo = 0 then goto Select_keybord:
5940 'メイン画面 Top画面1
5950 Main_Screen:
5960 cls 3:font 48:color rgb(255,255,255),,rgb(176,196,222)
5970 talk "番号を選んでエンターキーを押してください"
5980 'Text ,Grapgic clear:cls 3
5990 'グラフィック領域　ここから
6000 line (0,0)-(570,60),rgb(0,0,255),bf
6010 pen 5:line (0,0)-(567,57),rgb(127,255,212),b
6020 line (0,60)-(570,560),rgb(127,255,212),bf
6030 pen 5:line (0,57)-(567,557),rgb(0,0,255),b
6040 line (0,560)-(570,740),rgb(0,255,0),bf
6050 'グラフィック領域 ここまで
6060 pen 5:line (0,557)-(567,737),rgb(0,0,255),b
6070 Font 48
6080 print"◎姓名判断　メイン画面"+chr$(13)
6090 '文字色:黒
6100 color rgb(255,0,255)
6110 print"1.姓名判断"+chr$(13)
6120 print"2.姓名判断の設定"+chr$(13)
6130 print"3.個人データーリスト"+chr$(13)
6140 print"4.ヘルプ"+chr$(13)
6150 print"5.プログラムの終了"+chr$(13)
6160 'x=touch(4)
6170 'print"7.プログラム終了"+chr$(13)
6180 '文字:黒
6190 color rgb(0,0,0)
6200 print"番号を選んでください"+chr$(13)
6210 Input "番号:",No
6220 if No = 1  then goto seimeihandan_top:
6230 if No = 2 then goto seimeihandan_setting:
6240 if No = 3 then goto Parsonal_data_top:
6250 if No = 4 then goto help:
6260 if No = 5  then talk"終了します":cls 3:end
6270 if  No > 5 or No = 0  then ui_msg"無効な番号です、もう一度入れ直してください。":goto Main_Screen:
6280 'if No = "" then goto 5740
6290 '1.姓名判断トップ画面
6300 seimeihandan_top:
6310 cls:screen 1,1
6320 'タイトル文字:白
6330 font 48:color rgb(255,255,255),,rgb(176,196,222)
6340 talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでエンターキーを押してください"
6350 'グラフィック 描画領域　ここから
6360 'Main_Screen:
6370 cls 3
6380 '1.Title:青
6390 'Line 1
6400 line (0,0)-(870,60),rgb(0,0,255),bf
6410 pen 5:line(0,0)-(867,57),rgb(127,255,212),b
6420 'Line 2
6430 line (0,60)-(870,450),rgb(127,255,212),bf
6440 PEN 5:line(0,57)-(867,447),rgb(0,0,255),b
6450 'Line 3
6460 line (0,450)-(870,600),rgb(0,255,0),bf
6470 pen 5:line (0,447)-(867,597),rgb(0,0,255),b
6480 'グラフィック 描画領域 ここまで
6490 color rgb(255,255,255)
6500 print"◎姓名判断の種類トップメニュー"+chr$(13)
6510 color rgb(255,0,255):print"1.霊遺伝姓名学(兄弟を求める)"+chr$(13)
6520 color rgb(255,0,255):print"2.安斎流姓名判断(男女の相性)"+chr$(13)
6530 COLOR rgb(255,0,255):print"3.九星姓名判断(一生の運勢)"+chr$(13)
6540 COLOR rgb(255,0,255):print"4.前の画面に戻る"+chr$(13)
6550 color rgb(0,0,0):Print"番号を選んでエンターを押してください"
6560 color rgb(0,0,0):Input"番号:",selectNo
6570 IF selectNo=1 then goto Reiden_Top_Input_Sextype:
6580 if selectNo=2 then goto Anzai_Top:
6590 if selectNo=3 then goto Kyusei_Top:
6600 if selectNo=4 then goto Main_Screen:
6610 if selectNo > 4 or selectNo = 0 then ui_msg"無効な番号です。入れ直してください。":goto seimeihandan_top:
6620 '１．姓名判断(九星姓名判断トップ)
6630 'グラフィック領域　ここから
6640 Kyusei_Top:
6650 cls 3
6660 line (0,0)-(720,60),rgb(0,0,250),bf
6670 pen 5:line (0,0)-(717,57),rgb(127,255,212),b
6680 line (0,60)-(720,460),rgb(127,255,212),bf
6690 pen 5:line(0,57)-(717,457),rgb(0,0,255),b
6700 line (0,460)-(720,680),rgb(0,255,0),bf
6710 pen 5:line(0,457)-(717,677),rgb(0,0,255),b
6720 'グラフィック領域　ここまで
6730 font 48:color rgb(255,255,255),,rgb(176,196,222)
6740 talk "姓名判断トップ画面です。番号を選んでエンターキーを押してください。"
6750 cls:color rgb(255,255,255):print"◎1.姓名判断(九星姓名判断)" +chr$(13)
6760 color rgb(255,0,255):print"1.人名の吉凶を見る"+chr$(13)
6770 color rgb(255,0,255):print"2.ニックネームチェック"+chr$(13)
6780 color rgb(255,0,255):print"3.名前の陰陽を見る"+chr$(13)
6790 color rgb(255,0,255):print"4.前の画面に戻る"+chr$(13)
6800 color rgb(0,0,0):print"番号を選んでください"+chr$(13)
6810 color rgb(0,0,0):Input "番号:",selectNo
6820 'selectNo=Input$(1)
6830 if selectNo = 1 then goto Parson_name_kikkyo
6840 if selectNo = 2 then goto nick_name_check:
6850 if selectNo = 3 then goto name_inyo_check:
6860 if selectNo = 4  then goto seimeihandan_top:
6870 if selectNo > 4 or selectNo=0 then ui_msg"番号が無効です。入れ直してください":goto Kyusei_Top:
6880 '2.姓名判断 安斎流姓名判断　トップ画面
6890 '2-1名前の姓の部分を入力
6900 'グラフィック領域　ここから
6910 Anzai_Top_Screen:
6920 cls 3:LINE (0,0)-(820,60),rgb(0,0,255),bf
6930 pen 5:line (0,0)-(816,57),rgb(127,255,212),b
6940 line (0,60)-(820,260),rgb(127,255,212),bf
6950 pen 5:line(0,57)-(817,257),rgb(0,0,255),b
6960 line (0,260)-(820,350),rgb(0,255,0),bf
6970 pen 5:line(0,257)-(817,347),rgb(0,0,255),b
6980 font 48
6990 'グラフィック領域 ここまで
7000 color rgb(255,255,255):print"安斎流　姓名判断　トップメニュー"+chr$(13)
7010 talk"安斎流姓名判断トップメニューです,名前を2回に分けて入力してください。まず最初に名前の姓の部分を入れてください"
7020 COLOR rgb(255,0,255)
7030 print"名前を2回に分けて入力してください"+chr$(13)
7040 print"名前の姓の部分を入れてください"+chr$(13)
7050 color rgb(0,0,0)
7060 input"名前の姓:",bufname$
7070 buff1=len(bufname$)
7080 '2-2名前の名の部分を入力
7090 'グラフィック描画領域　ここから
7100 cls 3
7110 line (0,0)-(820,60),rgb(0,0,255),bf
7120 pen 5:line(0,0)-(817,57),rgb(127,255,212),b
7130 line (0,60)-(820,200),rgb(127,255,212),bf
7140 pen 5:line(0,57)-(817,197),rgb(0,0,255),b
7150 line (0,200)-(820,260),rgb(0,255,0),bf
7160 pen 5:line(0,197)-(817,257),rgb(0,0,255),b
7170 'グラフィック描画領域 ここまで
7180 COLOR rgb(255,255,255)
7190 cls:print"安斎流姓名判断トップメニュー"+chr$(13)
7200 talk"つぎに、名前のめいの部分を入れてください"
7210 color rgb(255,0,255)
7220 print"名前の名の部分を入れてください"+chr$(13)
7230 color rgb(0,0,0)
7240 input"名前の名:",bufname2$
7250 buff2=len(bufname2$)
7260 bufff=buff1+buff2
7270 'goto 18550
7280 select case bufff
7290 '姓1文字,名1文字
7300 case 2:
7310 cls
7320 '天運:buf_tenunn
7330 buf_tenunn=char_count(bufname$)
7340 '地運:buf_chiunn
7350 buf_chiunn=char_count(bufname2$)
7360 '人運 = 天運 + 地運
7370 buf_jinunn=buf_tenunn + buf_chiunn
7380 '外運 = 天運 + 人運
7390 buf_gaiunn = buf_tenunn + buf_chiunn
7400 '総数=buf_gaiunn
7410 buf_total=buf_gaiunn
7420 goto Result_Anzai:
7430 '姓１，名:2
7440 case 3:
7450 cls:
7460 if buff1=1 and buff2=2 then
7470 '1.天運:buf_tenunn
7480 buf_tenunn=char_count(bufname$)
7490 '2文字目の文字
7500 bufer_name2$(0)=Mid$(bufname2$,1,1)
7510 '3文字目の文字
7520 bufer_name2$(1)=Mid$(bufname2$,2,1)
7530 '2.人運
7540 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
7550 '3.地運:buf_chiunn
7560 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
7570 '4外運:buf_gaiunn
7580 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
7590 '5.総数:buf_total
7600 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
7610 goto Result_Anzai:
7620 endif
7630 if buff1=2 and buff2=1 then
7640 bufer_name$(0)=Mid$(bufname$,1,1)
7650 bufer_name$(1)=Mid$(bufname$,2,1)
7660 bufer_name2$(0)=Mid$(bufname$,1,1)
7670 '1.天運
7680 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
7690 '2.人運
7700 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
7710 '3.地運
7720 buf_chiunn=char_count(bufer_name2$(0))
7730 '4.外運
7740 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
7750 '5.総数
7760 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
7770 goto Result_Anzai:
7780 endif
7790 case 4:
7800 if buff1=2 and buff2=2 then
7810 bufer_name$(0)=Mid$(bufname$,1,1)
7820 bufer_name$(1)=Mid$(bufname$,2,1)
7830 bufer_name2$(0)=Mid$(bufname2$,1,1)
7840 bufer_name2$(1)=Mid$(bufname2$,2,1)
7850 '1.天運
7860 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
7870 '2.人運
7880 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
7890 '3.地運
7900 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
7910 '4.外運
7920 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
7930 '5.総数
7940 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
7950 goto Result_Anzai:
7960 endif
7970 'パターン2 姓3文字 名1文字 total4文字
7980 if buff1=3 and buff2=1 then
7990 bufer_name$(0)=Mid$(bufname$,1,1)
8000 bufer_name$(1)=Mid$(bufname$,2,1)
8010 bufer_name$(2)=Mid$(bufname$,3,1)
8020 bufer_name2$(0)=Mid$(bufname2$,1,1)
8030 '1.天運
8040 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
8050 '2.人運
8060 buf_jinunn = char_count(bufer_name$(2))+char_count(bufer_name2$(0))
8070 '3.地運
8080 buf_chiunn=char_count(bufer_name2$(0))
8090 '4.外運
8100 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufname2$)
8110 '5.総運
8120 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))
8130 goto Result_Anzai:
8140 endif
8150 'パターン３ 姓1,名３  合計４文字
8160 if buff1=1 and buff2=3 then
8170 bufer_name$(0)=Mid$(bufname$,1,1)
8180 bufer_name2$(0)=Mid$(bufname2$,1,1)
8190 bufer_name2$(1)=Mid$(bufname2$,2,1)
8200 bufer_name2$(2)=Mid$(bufname2$,3,1)
8210 '1.天運
8220 buf_tenunn = char_count(bufer_name$(0))
8230 '2.人運
8240 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
8250 '3.地運
8260 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8270 '4.外運
8280 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8290 '5.総運
8300 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8310 goto Result_Anzai:
8320 endif
8330 case 5:
8340 '５文字の名前
8350 '1.  3文字姓 2字名
8360 if buff1=3 and buff2=2 then
8370 bufer_name$(0)=Mid$(bufname$,1,1)
8380 bufer_name$(1)=Mid$(bufname$,2,1)
8390 bufer_name$(2)=Mid$(bufname$,3,1)
8400 bufer_name2$(0)=Mid$(bufname2$,1,1)
8410 bufer_name2$(1)=Mid$(bufname2$,2,1)
8420 '1.天運
8430 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
8440 '2.人運
8450 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
8460 '3.地運
8470 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
8480 '4.外運
8490 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
8500 '5.総運
8510 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
8520 goto Result_Anzai:
8530 endif
8540 if buff1=2 and buff2=3 then
8550 bufer_name$(0)=Mid$(bufname$,1,1)
8560 bufer_name$(1)=Mid$(bufname$,2,1)
8570 bufer_name2$(0)=Mid$(bufname2$,1,1)
8580 bufer_name2$(1)=Mid$(bufname2$,2,1)
8590 bufer_name2$(2)=Mid$(bufname2$,3,1)
8600 '1.天運
8610 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
8620 '2.人運
8630 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
8640 '3.地運
8650 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8660 '4.外運
8670 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8680 '5.総運
8690 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8700 goto Result_Anzai:
8710 endif
8720 if buff1=4 and buff2=1 then
8730 bufer_name$(0)=Mid$(bufname$,1,1)
8740 bufer_name$(1)=mid$(bufname$,2,1)
8750 bufer_name$(2)=mid$(bufname$,3,1)
8760 bufer_name$(3)=mid$(bufname$,4,1)
8770 bufer_name2$(0)=mid$(bufname2$,1,1)
8780 '1.天運
8790 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
8800 '2.人運
8810 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
8820 '3.地運
8830 buf_chiunn=char_count(bufer_name2$(0))
8840 '4.外運
8850 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
8860 '5.総運
8870 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))
8880 goto Result_Anzai:
8890 endif
8900 case 6:
8910 '3字姓 3字名
8920 if buff1=3 and buff2=3 then
8930 bufer_name$(0)=Mid$(bufname$,1,1)
8940 bufer_name$(1)=Mid$(bufname$,2,1)
8950 bufer_name$(2)=Mid$(bufname$,3,1)
8960 bufer_name2$(0)=Mid$(bufname2$,1,1)
8970 bufer_name2$(1)=Mid$(bufname2$,2,1)
8980 bufer_name2$(2)=Mid$(bufname2$,3,1)
8990 '1.天運
9000 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
9010 '2.人運
9020 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
9030 '3.地運
9040 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
9050 '4.外運
9060 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
9070 '5.総運
9080 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
9090 goto Result_Anzai:
9100 endif
9110 '4字姓 2字名
9120 if buff1=4 and buff2=2 then
9130 bufer_name$(0)=Mid$(bufname$,1,1)
9140 bufer_name$(1)=Mid$(bufname$,2,1)
9150 bufer_name$(2)=Mid$(bufname$,3,1)
9160 bufer_name$(3)=Mid$(bufname$,4,1)
9170 bufer_name2$(0)=Mid$(bufname2$,1,1)
9180 bufer_name2$(1)=Mid$(bufname2$,2,1)
9190 '1.天運
9200 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
9210 '2.人運
9220 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
9230 '3.地運
9240 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
9250 '4.外運
9260 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
9270 '5.総運
9280 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
9290 goto Result_Anzai:
9300 endif
9310 '4字姓 3字名
9320 case 7:
9330 if buff1=4 and buff2=3 then
9340 bufer_name$(0)=Mid$(bufname$,1,1)
9350 bufer_name$(1)=Mid$(bufname$,2,1)
9360 bufer_name$(2)=Mid$(bufname$,3,1)
9370 bufer_name$(3)=Mid$(bufname$,4,1)
9380 bufer_name2$(0)=Mid$(bufname2$,1,1)
9390 bufer_name2$(1)=Mid$(bufname2$,2,1)
9400 bufer_name2$(2)=Mid$(bufname2$,3,1)
9410 '1.天運
9420 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
9430 '2.人運
9440 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
9450 ' 3.地運
9460 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))+char_count(bufer_name2$(3))
9470 '4.外運
9480 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
9490 '5.総運
9500 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
9510 goto Result_Anzai:
9520 endif
9530 case else:
9540 end select
9550 '2.設定
9560 seimeihandan_setting:
9570 font 46:color rgb(0,0,0),,rgb(176,196,222)
9580 talk"設定画面です。番号を選んでエンターキーを押してください"
9590 'グラフィック領域　ここから
9600 cls 3:
9610 line (0,0)-(750,60),rgb(0,0,255),bf
9620 pen 5:line (0,0)-(747,57),rgb(127,255,212),b
9630 line (0,60)-(750,560),rgb(127,255,212),bf
9640 pen 5:line (0,57)-(747,557),rgb(0,0,255),b
9650 line (0,560)-(750,750),rgb(0,255,0),bf
9660 pen 5:line(0,557)-(747,747),rgb(0,0,255),b
9670 'グラフィック領域 ここまで
9680 '1行目　文字色　 白
9690 color rgb(255,255,255):print"姓名判断　設定画面トップ画面"+chr$(13)
9700 color rgb(255,0,255):print"1.登録文字の確認"+chr$(13)
9710 color rgb(255,0,255):print"2.登録文字数の表示"+chr$(13)
9720 color rgb(255,0,255):print"3.画数で吉凶を見る"+chr$(13)
9730 color rgb(255,0,255):print"4.前の画面に戻る"+chr$(13)
9740 color rgb(255,0,255):PRINT"5.プログラムの終了"+chr$(13)
9750 COLOR rgb(0,0,0)
9760 print"番号を選んでください"+chr$(13)
9770 Input"番号:",selectNo
9780 if selectNo=1 then goto Entry_moji_Top:
9790 if selectNo=2 then goto Entry_moji_check:
9800 if selectNo=3 then goto Moji_Kikkyo_Top:
9810 if selectNo=4 then goto Main_Screen:
9820 if selectNo=5 then talk"終了します":cls 3:end
9830 if selectNo > 5 or selectNo = 0 then goto seimeihandan_setting:
9840 '3 番号で吉凶を見る 入力
9850 Moji_Kikkyo_Top:
9860 font 46:color rgb(0,0,0),,rgb(176,196,222)
9870 'グラフィック描画領域　ここから
9880 cls 3
9890 line (0,0)-(650,60),rgb(0,0,255),bf
9900 pen 5:line(0,0)-(645,57),rgb(127,255,212),b
9910 line (0,60)-(650,255),rgb(127,255,212),bf
9920 PEN 5:line(0,57)-(647,252),rgb(0,0,255),b
9930 line (0,255)-(650,350),rgb(0,255,0),bf
9940 pen 5:line(0,252)-(647,347),rgb(0,0,255),b
9950 'グラフィック描画領域 ここまで
9960 color rgb(255,255,255)
9970 print"画数での吉凶判定"+chr$(13)
9980 color rgb(255,0,255)
9990 print"画数を入れてください"+chr$(13)
10000 print"(Max:81文字)"+chr$(13)
10010 color rgb(0,0,0)
10020 Input"文字の画数:",Number
10030 if Number > 81 then goto Moji_Kikkyo_Top:
10040 if Number <=81 then goto Moji_Kikkyo:
10050 '3.番号で吉凶を見る 結果表示
10060 'グラフィック描画領域　ここから
10070 Moji_Kikkyo:
10080 cls 3
10090 line (0,0)-(700,60),rgb(0,0,255),bf
10100 PEN 5:line(0,0)-(697,57),rgb(127,255,212),b
10110 line (0,60)-(700,260),rgb(127,255,212),bf
10120 pen 5:line(0,57)-(697,257),rgb(0,0,255),b
10130 line (0,260)-(700,350),rgb(0,255,0),bf
10140 pen 5:line(0,257)-(697,347),rgb(0,0,255),b
10150 'グラフィック描画領域　ここまで
10160 color rgb(255,255,255)
10170 print "画数で吉凶を求める"+chr$(13)
10180 color rgb(255,0,255)
10190 talk str$(Number)+"画のきっきょうは、"+buf_Kikkyo$(Number+2)+"です"
10200 print"画数:";Number;chr$(13):print"吉凶:";buf_Kikkyo$(Number+2);chr$(13)
10210 'endif
10220 color rgb(0,0,0)
10230 print"エンターキーを押してください"
10240 key$=Input$(1)
10250 If key$=chr$(13) then goto seimeihandan_setting:
10260 '3.ヘルプ
10270 help:
10280 cls 3:font 48:color rgb(0,0,0),,rgb(176,196,222)
10290 '描画領域 ここから
10300 line (0,0)-(550,60),rgb(0,0,255),bf
10310 pen 5:line(0,0)-(547,57),rgb(127,255,212),b
10320 line (0,60)-(550,470),rgb(127,255,212),bf
10330 pen 5:line(0,57)-(547,467),rgb(0,0,255),b
10340 line (0,470)-(550,550),rgb(0,255,0),bf
10350 pen 5:line(0,467)-(547,547),rgb(0,0,255),b
10360 '描画領域　ここまで
10370 talk "へるぷがめんです。番号を選んでエンターキーを押してください。"
10380 color rgb(255,255,255):print "姓名判断　ヘルプ"+chr$(13)
10390 color rgb(255,0,255):print"1.バージョン情報"+chr$(13)
10400 color rgb(255,0,255):print"2.参考文献"+chr$(13)
10410 color rgb(255,0,255):print"3.プログラムの終了"+chr$(13)
10420 color rgb(255,0,255):PRINT"4.前の画面に戻る"+chr$(13)
10430 color rgb(0,0,0):Input"番号:",selectNo
10440 if selectNo=1 then goto Version_info:
10450 if selectNo=2 then goto Document_info:
10460 'プログラムの終了
10470 if selectNo=3 then talk"終了いたします":cls 3:end
10480 'if selectNo=4 then ex_web"http://www3.kcn.ne.jp/~sayyuki/manual/seimeihandan/docs/"
10490 '前の画面に戻る
10500 if selectNo=4 then goto Main_Screen:
10510 if selectNo > 4 or selectNo = 0 then goto help:
10520 'Menu1　画面
10530 talk"調べたい名前のみよじをいれてください"
10540 'グラフィック描画領域　ここから
10550 Parson_name_kikkyo:
10560 cls 3
10570 line (0,0)-(1050,60),rgb(0,0,255),bf
10580 pen 5:line(0,0)-(1047,57),rgb(127,255,212),b
10590 line (0,60)-(1050,180),rgb(127,255,212),bf
10600 pen 5:line(0,57)-(1047,177),rgb(0,0,255),b
10610 line (0,180)-(1050,250),rgb(0,255,0),bf
10620 pen 5:line(0,177)-(1047,247),rgb(0,0,255),b
10630 'グラフィック描画領域　ここまで
10640 color rgb(255,255,255):print"調べたい名前の苗字を入れてください"+chr$(13)
10650 color rgb(255,0,255):print"例:山田太郎の山田の部分"+chr$(13)
10660 color rgb(0,0,0):input"調べたい名前の苗字(上の文字):",name$
10670 cls
10680 talk "調べたい名前の名の部分":color rgb(255,255,255):print"調べたい名前の名の部分を入れてください"+chr$(13)
10690 color rgb(255,0,255):print"例:山田太郎の太郎の部分を入れてください"+chr$(13)
10700 color rgb(0,0,0):input"調べたい名前の名の部分(下の部分):",name2$
10710 goto complate_Kyusei:
10720 'メニュー6　バージョン表示
10730 'グラフィック　描画　領域　 ここから
10740 Version_info:
10750 cls 3
10760 line (0,0)-(1000,60),rgb(0,0,255),bf
10770 pen 5:line (0,0)-(997,57),rgb(127,255,212),b
10780 line (0,60)-(1000,665),rgb(127,255,212),bf
10790 pen 5:line(0,57)-(997,662),rgb(0,0,255),b
10800 line (0,665)-(1000,750),rgb(0,255,0),bf
10810 pen 5:line(0,662)-(997,747),rgb(0,0,255),b
10820 'グラフィック　描画 領域　 ここまで
10830 color rgb(255,255,255):print"バージョン情報"+chr$(13)
10840 color rgb(255,0,255):print"Title:姓名判断(改)"+chr$(13)
10850 color rgb(255,0,255):PRINT"Ver:237.20201017(改)"+chr$(13)
10860 color rgb(255,0,255):print"対応文字:漢字、ひらがな、カタカナ、数字"+chr$(13)
10870 color rgb(255,0,255):print"アルファベット（大文字、小文字)"+chr$(13)
10880 color rgb(255,0,255):print"対応漢字画数：1画から24画まで"+chr$(13)
10890 color rgb(255,0,2550):print"制作開始:since 2019.04.07"+chr$(13)
10900 'ここを書き換える
10910 talk "このプログラムは、姓名判断バージョン2.37です"
10920 color rgb(0,0,0):print"エンターキーを押してください"
10930 key$=Input$(1)
10940 if key$ = chr$(13)  then goto Main_Screen:
10950 complate_Kyusei:
10960 '文字数を求める変数
10970 buf_char_size=len(name$)
10980 buf_char_size2=len(name2$)
10990 '入力した文字を代入する変数
11000 '入力した文字を配列に代入する処理
11010 '姓名判断データー文字比較
11020 '画数を求める関数
11030 func char_count(buf_count$)
11040 count=0:buffer=0
11050 '1画の文字 23文字
11060 for j=0 to ((Moji_1)-1)
11070 if buf_count$=buf_char_hiragana1$(j) then
11080 count =1:
11090 endif
11100 next j
11110 '2画の文字
11120 for j=0 to ((Moji_2)-1)
11130 if buf_count$=buf_char_hiragana2$(j)  then
11140 count = 2:
11150 endif
11160 next j
11170 for j=0 to ((Moji_3)-1)
11180 if buf_count$=buf_char_hiragana3$(j) then
11190 count =3:
11200 endif
11210 next j
11220 for j=0 to ((Moji_4)-1)
11230 if buf_count$=buf_char_hiragana4$(j) then
11240 count = 4:
11250 endif
11260 next j
11270 for j=0 to ((Moji_5)-1)
11280 if buf_count$=buf_char_hiragana5$(j) then
11290 count = 5:
11300 endif
11310 next j
11320 for j=0 to ((Moji_6)-1)
11330 if buf_count$=buf_char_hiragana6$(j) then
11340 count= 6
11350 endif
11360 next j
11370 for  j=0 to ((Moji_7)-1)
11380 if buf_count$=buf_char_hiragana7$(j) then
11390 count=  7
11400 endif
11410 next j
11420 for j=0 to ((Moji_8)-1)
11430 if buf_count$=buf_char_hiragana8$(j) then
11440 count= 8
11450 endif
11460 next j
11470 for j=0 to ((Moji_9)-1)
11480 if buf_count$=buf_char_hiragana9$(j) then
11490 count=9
11500 endif
11510 next j
11520 for j=0 to ((Moji_10)-1)
11530 if buf_count$=buf_char_hiragana10$(j) then
11540 count=10
11550 endif
11560 next j
11570 for j=0 to ((Moji_11)-1)
11580 if buf_count$=buf_char_hiragana11$(j) then
11590 count=11
11600 endif
11610 next j
11620 for j=0 to  ((Moji_12)-1)
11630 if buf_count$=buf_char_hiragana12$(j) then
11640 count=12
11650 endif
11660 next j
11670 for j=0 to ((Moji_13)-1)
11680 if buf_count$=buf_char_hiragana13$(j) then
11690 count=13
11700 endif
11710 next j
11720 for j=0 to ((Moji_14)-1)
11730 if buf_count$=buf_char_hiragana14$(j) then
11740 count=14
11750 endif
11760 next j
11770 for j=0 to ((Moji_15)-1)
11780 if buf_count$=buf_char_hiragana15$(j) then
11790 count=15
11800 endif
11810 next j
11820 for j=0 to ((Moji_16)-1)
11830 if buf_count$=buf_char_hiragana16$(j) then
11840 count=16
11850 endif
11860 next j
11870 for j=0 to ((Moji_17)-1)
11880 if buf_count$=buf_char_hiragana17$(j) then
11890 count=17
11900 endif
11910 next j
11920 for j=0 to ((Moji_18)-1)
11930 if buf_count$=buf_char_hiragana18$(j) then
11940 count=18
11950 endif
11960 next j
11970 for j=0 to ((Moji_19)-1)
11980 if buf_count$=buf_char_hiragana19$(j) then
11990 count=19
12000 endif
12010 next j
12020 for j=0 to ((Moji_20)-1)
12030 if buf_count$=buf_char_hiragana20$(j) then
12040 count=20
12050 endif
12060 next i
12070 for j=0 to ((Moji_21)-1)
12080 if buf_count$=buf_char_hiragana21$(j) then
12090 count=21
12100 endif
12110 next j
12120 for j=0 to ((Moji_22)-1)
12130 if buf_count$=buf_char_hiragana22$(j) then
12140 count=22
12150 endif
12160 next j
12170 for j=0 to ((Moji_23)-1)
12180 if buf_count$=buf_char_hiragana23$(j) then
12190 count=23
12200 endif
12210 next j
12220 for j=0 to ((Moji_24)-1)
12230 if buf_count$=buf_char_hiragana24$(j) then
12240 count=24
12250 endif
12260 buffer = count
12270 next j
12280 endfunc buffer
12290 func show_sex_type$(sex$)
12300 buf_number=val(Mid$(sex$,4,1))
12310 if buf_number = 1 then
12320 buf_show_sex_type$="性別:女性"
12330 else
12340 if buf_number=2 then
12350 buf_show_sex_type$="性別:男性"
12360 endif
12370 endif
12380 endfunc buf_show_sex_type$
12390 '合計を求める関数
12400 func totalcounts(buffers$)
12410 buffers=0:
12420 for i=0 to len(buffers$)-1
12430 buffers=buffers+char_count(buffers$)
12440 next i
12450 endfunc buffers
12460 buf_count2=0:buf_count3=0
12470 'dim buf_Input_data$(len(name$))
12480 '1.苗字の文字数
12490 for n=0 to (buf_char_size-1)
12500 buf_Input_data$(n)=mid$(name$,n+1,1)
12510 next n
12520 for i=0 to (buf_char_size-1)
12530 buf_count2 = buf_count2 + char_count(buf_Input_data$(i))
12540 next i
12550 '2.名の文字数
12560 for n2=0 to (buf_char_size2-1)
12570 buf_Input_data2$(n2)=mid$(name2$,n2+1,1)
12580 next n2
12590 for i2=0 to (buf_char_size2-1)
12600 buf_count3 = buf_coun3 + char_count(buf_Input_data2$(i2))
12610 next i2
12620 '総数を出す
12630 select case (buf_char_size + buf_char_size2)
12640 case 6:
12650 if ((buf_char_size=4) and (buf_char_size2=2)) then
12660 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
12670 endif
12680 if ((buf_char_size=3) and (buf_char_size2=3)) then
12690 if buf_Input_data$(1)="々" then
12700 buf_total=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
12710 else
12720 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
12730 endif
12740 endif
12750 case 5:
12760 if ((buf_char_size=4) and (buf_char_size2=1)) then
12770 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
12780 endif
12790 if ((buf_char_size=2) and (buf_char_size2=3)) then
12800 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
12810 endif
12820 if ((buf_char_size=3) and (buf_char_size2=2)) then
12830 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
12840 endif
12850 case 4:
12860 if ((buf_char_size=1) and (buf_char_size2=3)) then
12870 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
12880 endif
12890 if ((buf_char_size=2) and (buf_char_size2=2)) then
12900 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
12910 endif
12920 if ((buf_char_size=3) and (buf_char_size2=1)) then
12930 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
12940 endif
12950 case 3:
12960 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
12970 buf_total = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
12980 endif
12990 if ((buf_char_size=2) and (buf_char_size2=1)) then
13000 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
13010 endif
13020 case 2:
13030 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
13040 case else:
13050 end select
13060 '文字の総数をだす
13070 total_name$ = name$ + name2$
13080 '1.姓星を求める
13090 select case buf_char_size
13100 '苗字1文字のとき
13110 case 1:
13120 buf_seisei = char_count(buf_Input_data$(0)) + 1
13130 '苗字2文字の時
13140 case 2:
13150 buf_seisei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(0))
13160 '苗字3文字のとき
13170 case 3:
13180 if (buf_Input_data$(1)="々")  then
13190 buf_seisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))
13200 else
13210 buf_seisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2))
13220 endif
13230 '苗字4文字のとき
13240 case 4:
13250 buf_seisei = char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))
13260 case else:
13270 end select
13280 '2.主星をだす
13290 '2.主星
13300 select case (buf_char_size + buf_char_size2)
13310 '姓名5文字のとき
13320 case 6:
13330 if ((buf_char_size=4) and (buf_char_size2=2)) then
13340 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
13350 endif
13360 if ((buf_char_size=3) and (buf_char_size2=3)) then
13370 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
13380 endif
13390 case 5:
13400 if ((buf_char_size=4) and (buf_char_size2=1)) then
13410 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
13420 endif
13430 if ((buf_char_size=2) and (buf_char_size2=3)) then
13440 buf_syusei=char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
13450 endif
13460 if ((buf_char_size=3) and (buf_char_size2=2)) then
13470 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
13480 endif
13490 '姓名4文字のとき
13500 case 4:
13510 if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
13520 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
13530 endif
13540 if ((buf_char_size=1) and (buf_char_size2=3)) then
13550 buf_syusei = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))
13560 endif
13570 if ((buf_char_size=3) and (buf_char_size2=1)) then
13580 buf_syusei = char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
13590 endif
13600 '姓名3文字のとき
13610 case 3:
13620 if ((buf_char_size = 1) and (buf_charsize2 = 2)) then
13630 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
13640 else
13650 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
13660 endif
13670 case 2:
13680 buf_syusei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
13690 case else:
13700 end select
13710 '3.名星を求める
13720 select case (buf_char_size + buf_char_size2)
13730 case 6:
13740 if ((buf_char_size=3) and (buf_char_size2=3)) then
13750 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
13760 endif
13770 if ((buf_char_size=4) and (buf_char_size2=2)) then
13780 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
13790 endif
13800 case 5:
13810 if ((buf_char_size = 4) and (buf_char_size2 = 1)) then
13820 buf_meisei = char_count(buf_Input_data2$(0)) + 1
13830 endif
13840 if ((buf_char_size=3) and (buf_char_size2=2)) then
13850 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
13860 endif
13870 if ((buf_char_size=2) and (buf_char_size2=3))  then
13880 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
13890 endif
13900 case 4:
13910 if ((buf_char_size=2) and (buf_char_size2=2)) then
13920 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
13930 endif
13940 if ((buf_char_size=1) and (buf_char_size2=3)) then
13950 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))+ char_count(buf_Input_data2$(2))
13960 endif
13970 if ((buf_char_size=3) and (buf_char_size2=1)) then
13980 buf_meisei = char_count(buf_Input_data2$(0)) + 1
13990 endif
14000 case 3:
14010 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
14020 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
14030 endif
14040 if ((buf_char_size=2) and (buf_char_size2=1)) then
14050 buf_meisei=char_count(buf_Input_data2$(0))+1
14060 endif
14070 case 2:
14080 buf_meisei = char_count(buf_Input_data2$(0)) + 1
14090 case else:
14100 end select
14110 '4.外星を求める
14120 select case (buf_char_size + buf_char_size2)
14130 case 6:
14140 if buf_Input_data$(1)="々"  then
14150 buf_gaisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
14160 else
14170 if ((buf_char_size=4) and (buf_char_size2=2)) then
14180 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
14190 else
14200 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
14210 endif
14220 endif
14230 case 5:
14240 if ((buf_char_size=4) and (buf_char_size2=1)) then
14250 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
14260 endif
14270 if ((buf_char_size=3) and (buf_char_size2=2)) then
14280 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
14290 endif
14300 if ((buf_char_size=2) and (buf_char_size2=3)) then
14310 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
14320 endif
14330 case 4:
14340 if ((buf_char_size=2) and (buf_char_size2=2)) then
14350 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(1))
14360 endif
14370 if ((buf_char_size=1) and (buf_char_size2=3)) then
14380 buf_gaisei = 1 + char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
14390 endif
14400 if ((buf_char_size=3) and (buf_char_size2=1)) then
14410 buf_gaisei = char_count(buf_Input_data2$(0)) + 1
14420 endif
14430 case 3:
14440 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
14450 buf_gaisei=1+char_count(buf_Input_data2$(1))
14460 endif
14470 if ((buf_char_size = 2) and (buf_char_size2 = 1)) then
14480 buf_gaisei = char_count(buf_Input_data$(0)) + 1
14490 endif
14500 case 2:
14510 buf_gaisei = 2
14520 case else:
14530 end select
14540 '診断結果表示
14550 '1.姓星を出す
14560 'グラフィック描画領域　ここから
14570 Result_Kyusei_Kikkyo:
14580 cls 3:
14590 '縦の画面
14600 '1行目
14610 line (0,0)-(1500,60),rgb(0,0,255),bf
14620 pen 5:line(0,0)-(1497,57),rgb(127,255,212),b
14630 '2行目
14640 line (0,60)-(1500,665),rgb(127,255,212),bf
14650 pen 5:line(0,57)-(1497,662),rgb(0,0,255),b
14660 '3行目
14670 line (0,665)-(1500,720),rgb(0,255,0),bf
14680 pen 5:line(0,662)-(1497,717),rgb(0,0,255),b
14690 '横の画面　吉凶のランク表
14700 'グラフィック描画領域　ここまで
14710 talk"診断結果です"
14720 color rgb(255,255,255):print "九星姓名判断　吉凶の結果表示"+chr$(13)
14730 color Rgb(255,0,255)
14740 print total_name$;"の姓星(生まれや育ち):";buf_seisei;"吉凶:";buf_Kikkyo$(buf_seisei-1)+chr$(13)
14750 '2.主星を出す
14760 print total_name$;"の主星(仕事運、金運):";buf_syusei;"吉凶:";buf_Kikkyo$(buf_syusei-1)+chr$(13)
14770 '3.名星を求める
14780 print total_name$;"の名星(健康運、家庭運):";buf_meisei;"吉凶:";buf_Kikkyo$(buf_meisei+2)+chr$(13)
14790 '4.外星を求める
14800 print total_name$;"の外星(恋愛、結婚、対人関係):";buf_gaisei;"吉凶:";buf_Kikkyo$(buf_gaisei+1)+chr$(13)
14810 '5.総数を出す
14820 print total_name$;"の総数(一生の運勢、特に晩年):";buf_total;"です"+chr$(13)
14830 print total_name$;"の文字の総合的な吉凶:";buf_Kikkyo$(buf_total)+chr$(13)
14840 color rgb(0,0,0)
14850 print"エンターキーを押してください"
14860 key$=Input$(1)
14870 if key$ = chr$(13) then bufferCount=0:buf_count2 = 0:count = 0:buffer = 0:buf_seisei = 0:buf_syusei = 0:buf_meisei = 0:buf_gaisei = 0:goto Main_Screen:
14880 '2.主星を出す
14890 'メニュー3 登録文字の確認 ここから
14900 'グラフィック領域　ここから
14910 'タイトル青 文字:白
14920 Entry_moji_Top:
14930 cls 3:line (0,0)-(1050,65),rgb(0,0,255),bf
14940 pen 5:line(0,0)-(1047,62),rgb(127,255,212),b
14950 line (0,62)-(1050,155),rgb(0,255,255),bf
14960 pen 5:line(0,59)-(1047,152),rgb(0,0,255),b
14970 line (0,155)-(1050,260),rgb(0,255,0),bf
14980 pen 5:line(0,152)-(1047,257),rgb(0,0,255),b
14990 'グラフィック領域　ここまで
15000 talk"調べたい文字をひと文字入れてください。"
15010 '文字:白
15020 color rgb(255,255,255):print"登録文字の確認"+chr$(13)
15030 '文字:アクア
15040 color rgb(255,0,0):print"文字を入力してエンターキーを押してください"+chr$(13)
15050 color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
15060 if name$="" then ui_msg"文字が空白です。入れ直してください。":goto Entry_moji_Top:
15070 if (len(name$)>1) then ui_msg("１文字で入れてください"):goto Entry_moji_Top:
15080 '1画の文字
15090 for i=0 to ((Moji_1)-1)
15100 if (name$=buf_char_hiragana1$(i)) then
15110 buffer_count=1:goto Moji_count_check:
15120 endif
15130 next i
15140 '2画の文字
15150 for i=0 to ((Moji_2)-1)
15160 if (name$=buf_char_hiragana2$(i)) then
15170 buffer_count=2:goto Moji_count_check:
15180 endif
15190 next i
15200 '3画の文字
15210 for i=0 to ((Moji_3)-1)
15220 if (name$=buf_char_hiragana3$(i)) then
15230 buffer_count=3:goto Moji_count_check:
15240 endif
15250 next i
15260 '4画の文字
15270 for i=0 to ((Moji_4)-1)
15280 if (name$=buf_char_hiragana4$(i)) then
15290 buffer_count=4:goto Moji_count_check:
15300 endif
15310 next i
15320 '5画の文字
15330 for i=0 to ((Moji_5)-1)
15340 if (name$=buf_char_hiragana5$(i)) then
15350 buffer_count=5:goto Moji_count_check:
15360 endif
15370 next i
15380 '6画の文字
15390 for i=0 to ((Moji_6)-1)
15400 if (name$=buf_char_hiragana6$(i)) then
15410 buffer_count=6:goto Moji_count_check:
15420 endif
15430 next i
15440 '7画の文字
15450 for i=0 to ((Moji_7)-1)
15460 if (name$=buf_char_hiragana7$(i)) then
15470 buffer_count=7:goto Moji_count_check:
15480 endif
15490 next i
15500 '8画の文字 120 文字
15510 for i=0 to ((Moji_8)-1)
15520 if (name$=buf_char_hiragana8$(i)) then
15530 buffer_count=8:goto Moji_count_check:
15540 endif
15550 next i
15560 '9画の文字  103文字
15570 for i=0 to ((Moji_9)-1)
15580 if (name$=buf_char_hiragana9$(i)) then
15590 buffer_count=9:goto Moji_count_check:
15600 endif
15610 next i
15620 '10画の文字 98文字
15630 for i=0 to ((Moji_10)-1)
15640 if (name$=buf_char_hiragana10$(i)) then
15650 buffer_count=10:goto Moji_count_check:
15660 endif
15670 next i
15680 '11画の文字 98文字
15690 for i=0 to ((Moji_11)-1)
15700 if (name$=buf_char_hiragana11$(i)) then
15710 buffer_count=11:goto Moji_count_check:
15720 endif
15730 next i
15740 '12画の文字
15750 for i=0 to ((Moji_12)-1)
15760 if (name$=buf_char_hiragana12$(i)) then
15770 buffer_count=12:goto Moji_count_check:
15780 endif
15790 next i
15800 '13画の文字
15810 for i=0 to ((Moji_13)-1)
15820 if (name$=buf_char_hiragana13$(i)) then
15830 buffer_count=13:goto Moji_count_check:
15840 endif
15850 next i
15860 '14画の文字
15870 for i=0 to ((Moji_14)-1)
15880 if (name$=buf_char_hiragana14$(i)) then
15890 buffer_count=14:goto Moji_count_check:
15900 endif
15910 next i
15920 '15画の文字
15930 for i=0 to ((Moji_15)-1)
15940 if (name$=buf_char_hiragana15$(i)) then
15950 buffer_count=15:goto Moji_count_check:
15960 endif
15970 next i
15980 '16画の文字
15990 for i=0 to ((Moji_16)-1)
16000 if (name$=buf_char_hiragana16$(i)) then
16010 buffer_count=16:goto Moji_count_check:
16020 endif
16030 next i
16040 '17画の文字
16050 for i=0 to ((Moji_17)-1)
16060 if (name$=buf_char_hiragana17$(i)) then
16070 buffer_count=17:goto Moji_count_check:
16080 endif
16090 next i
16100 '18画の文字 25
16110 for i=0 to ((Moji_18)-1)
16120 if (name$=buf_char_hiragana18$(i)) then
16130 buffer_count=18:goto Moji_count_check:
16140 endif
16150 next i
16160 '19画の文字 17
16170 for i=0 to ((Moji_19)-1)
16180 if (name$=buf_char_hiragana19$(i)) then
16190 buffer_count=19:goto Moji_count_check:
16200 endif
16210 next i
16220 '20画の文字 13
16230 for i=0 to ((Moji_20)-1)
16240 if (name$=buf_char_hiragana20$(i)) then
16250 buffer_count=20:goto Moji_count_check:
16260 endif
16270 next i
16280 '21画の文字 6
16290 for i=0 to ((Moji_21)-1)
16300 if (name$=buf_char_hiragana21$(i)) then
16310 buffer_count=21:goto Moji_count_check:
16320 endif
16330 next i
16340 '22画の文字 4
16350 for i=0 to ((Moji_22)-1)
16360 if (name$=buf_char_hiragana22$(i)) then
16370 buffer_count=22:goto Moji_count_check:
16380 endif
16390 next i
16400 '23画の文字 3
16410 for i=0 to ((Moji_23)-1)
16420 if (name$=buf_char_hiragana23$(i)) then
16430 buffer_count=23:goto Moji_count_check:
16440 endif
16450 next i
16460 '24画の文字
16470 for i=0 to ((Moji_24)-1)
16480 if (name$=buf_char_hiragana24$(i)) then
16490 buffer_count=24:goto Moji_count_check:
16500 endif
16510 next i
16520 'Menu3 結果表示 画数の登録確認
16530 Moji_count_check:
16540 if (buffer_count=0) then
16550 '登録文字がない場合の処理
16560 'グラフィック領域　ここから
16570 'Moji_count_check:
16580 cls 3
16590 '1行
16600 line (0,0)-(840,60),rgb(0,0,255),bf
16610 pen 5:line (0,0)-(837,57),rgb(127,255,212),b
16620 '2行目
16630 line (0,60)-(840,165),rgb(127,255,212),bf
16640 pen 5:line (0,57)-(837,162),rgb(0,0,255),b
16650 '3行目
16660 line (0,165)-(840,370),rgb(0,0,255),bf
16670 pen 5:line (0,162)-(837,367),rgb(0,255,0),b
16680 '4行目
16690 line (0,370)-(840,450),rgb(0,255,0),bf
16700 pen 5:line(0,367)-(837,447),rgb(0,0,0),b
16710 'グラフィック領域　ここまで
16720 color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
16730 color rgb(255,0,0):print name$;":この文字は、登録されていません"+chr$(13)
16740 talk "この文字は、登録されていません"
16750 color rgb(255,255,255):print"q:トップ画面"+chr$(13)
16760 COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
16770 color rgb(0,0,0):print"コマンド:"
16780 key$=Input$(1)
16790 if key$="q" or key$="Q" then goto Main_Screen:
16800 if key$=chr$(13) then goto Entry_moji_Top:
16810 'goto 14520
16820 else
16830 'グラフィック描画領域　ここから
16840 'Entry_moji_check:
16850 cls 3
16860 '1行目
16870 line (0,0)-(840,58),rgb(0,0,255),bf
16880 pen 5:line(0,0)-(837,55),rgb(127,255,212),b
16890 '2行目
16900 line (0,58)-(840,100),rgb(127,255,212),bf
16910 PEN 5:line(0,55)-(837,97),rgb(0,0,0),b
16920 '3行目
16930 line (0,100)-(840,280),rgb(0,0,255),bf
16940 pen 5:LINE(0,103)-(837,277),rgb(127,255,212),b
16950 '4行目
16960 line (0,280)-(840,340),rgb(0,255,0),bf
16970 pen 5:line(0,277)-(837,337),rgb(0,0,0),b
16980 'グラフィック描画領域　ここまで
16990 color rgb(255,255,255):print "登録文字画数結果表示"
17000 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
17010 endif
17020 color rgb(255,255,255)
17030 print"q+エンターキー:トップ画面"+chr$(13)
17040 print"エンターキー:もう一度やる"+chr$(13)
17050 color rgb(0,0,0)
17060 print"コマンド:"
17070 key$=Input$(1)
17080 if key$=chr$(13)  then buffer_count=0:goto Entry_moji_Top:
17090 if key$="q" then buffer_count=0:goto Main_Screen:
17100 if not(key$="q") then goto Moji_count_check:
17110 'Menu2 名前の陰陽を見る
17120 'グラフィック描画領域 ここから
17130 name_inyo_check:
17140 cls 3:line (0,0)-(800,60),rgb(0,0,255),bf
17150 PEN 5:line(0,0)-(797,57),rgb(127,255,212),b
17160 LINE (0,60)-(800,250),rgb(127,255,212),bf
17170 pen 5:line (0,57)-(797,247),rgb(0,0,255),b
17180 line (0,250)-(800,350),rgb(0,255,0),bf
17190 pen 5:line(0,247)-(797,347),rgb(0,0,255),b
17200 'グラフィック描画領域　ここまで
17210 cls
17220 color rgb(255,255,255)
17230 print"名前の陰陽を見る"+chr$(13)
17240 COLOR rgb(255,0,255)
17250 PRINT"(●:陽,○:陰)"+chr$(13)
17260 print"調べたい名前苗字を入れてください"+chr$(13)
17270 color rgb(0,0,0)
17280 Input"調べたい名前の苗字:",name$
17290 if name$="" then goto name_inyo_check:
17300 'Menu2 陰陽の吉凶を見る 名入力
17310 cls:color rgb(255,255,255)
17320 print"名前の陰陽を見る"+chr$(13)
17330 color rgb(255,0,255)
17340 print"(●:陽,○:陰)"+chr$(13)
17350 print"調べたい名前の名を入れてください"+chr$(13)
17360 color rgb(0,0,0)
17370 Input"調べたい名前の名:",name2$
17380 if name2$="" then goto name_inyo_check:
17390 for i=0 to len(name$)-1
17400 name_array$(i)=Mid$(name$,i+1,1)
17410 if char_count(name_array$(i)) mod 2 = 1  then
17420 name_array$(i)="○":buffer$=buffer$+name_array$(i)
17430 else
17440 name_array$(i)="●":buffer$=buffer$+name_array$(i)
17450 endif
17460 next i
17470 for i=0 to len(name2$)-1
17480 name_array2$(i)=Mid$(name2$,i+1,1)
17490 if char_count(name_array2$(i)) mod 2 = 1 then
17500 name_array2$(i)="○":buffer2$=buffer2$+name_array2$(i)
17510 else
17520 name_array2$(i)="●":buffer2$=buffer2$+name_array2$(i)
17530 endif
17540 next i
17550 bufname$=buffer$+buffer2$
17560 '陰陽のタイプ ここから
17570 select case (len(bufname$))
17580 '2文字
17590 case 2:
17600 if ((bufname$="○●") or (bufname$="●○")) then buffer_name$="吉相:姓名2字の陰陽吉相"
17610 '
17620 '  endif
17630 if ((bufname$="○○") or (bufname$="●●")) then buffer_name$ = "一律陰陽:大凶相"
17640 '  endif
17650 '3文字
17660 case 3:
17670 if (((bufname$)="●○○") or ((bufname$)="○○●") or ((bufname$)="●●○") or ((bufname$)="○●●")) then buffer_name$="吉相:姓名3字陰陽吉相"
17680 if (((bufname$)="●○●") or ((bufname$)="○●○")) then buffer_name$="凶相:ハサミ陰陽"
17690 if (((bufname$)="●●●") or ((bufname$)="○○○")) then buffer_name$="大凶相:一律陰陽"
17700 '4文字
17710 case 4:
17720 if bufname$="●○●○" or bufname$="○●○●" or bufname$ ="●●○●" or bufname$ ="○○●○" or bufname$="●○●●" or bufname$="○●○○" then buffer_name$="吉相:陰陽吉相"
17730 if bufname$="●○○●" or bufname$="○●●○" then buffer_name$="凶相:ハサミ陰陽"
17740 if bufname$="○○○●" or bufname$="●●●○"  then buffer_name$="凶相:片寄り陰陽"
17750 if bufname$="●●○○" or bufname$="○○●●"  then buffer_name$="大凶相:分離陰陽"
17760 if bufname$ ="●●●●" or bufname$ = "○○○○"  then buffer_name$="大凶相:一律陰陽"
17770 '5文字
17780 case 5:
17790 if bufname$="○●○○●" or bufname$="●○●●○" or bufname$="○●○●●" or bufname$="●○●○○" or bufname$="●○○●○" or bufname$="●○●●●" or bufname$="○●○○○" or bufname$="○○●○●" or  bufname$="●●○○●" or bufname$="●○○●●" or bufname$="○○●●○" or bufname$="○●●○○"  or bufname$="○●○○○" or bufname$="●●●○●" or bufname$="○●○●●" Then buffer_name$="吉相:陰陽吉相"
17800 if bufname$="○○●○○" or bufname$="●●○●●" then buffer_name$="大凶相:中縛り陰陽"
17810 if bufname$="●●●○○" or bufname$="○○○●●" then buffer_name$="大凶相:分離陰陽"
17820 if bufname$="○●●●○" or bufname$="●○○○●" or bufname$="●○●○●" or bufname$="○●○●○" then buffr_name$="凶相:ハサミ陰陽"
17830 case 6:
17840 if bufname$="○○○○○○" or bufname$="●●●●●●" then buffer_name$="大凶相:一律陰陽"
17850 if bufname$="●●●○○○" or bufname$="○○○●●●" then buffer_name$="大凶相:分離陰陽"
17860 if bufname$="○○●●○○" or bufname$="●●○○●●" then buffer_name$="大凶相:中縛り陰陽"
17870 if bufname$="○●○○○●" or bufname$="○●○●○○" or bufname$="●○●●●○" or bufname$="●○●○●●" or bufname$="●○○●○○" or bufname$="○●●○●●" then buffer_name$="吉相:陰陽吉相"
17880 case else:
17890 buffer_name$="例外に入りました"
17900 end select
17910 '陰陽のタイプ　ここまで
17920 'グラフィック描画領域　ここから
17930 cls 2
17940 line (0,0)-(850,60),rgb(0,0,250),bf
17950 pen 5:line(0,0)-(847,57),rgb(127,255,212),b
17960 line (0,60)-(850,285),rgb(127,255,212),bf
17970 pen 5:line(0,57)-(847,282),rgb(0,0,255),b
17980 line (0,280)-(850,380),rgb(0,255,0),bf
17990 pen 5:line(0,277)-(847,377),rgb(0,0,255),b
18000 'グラフィック描画領域 ここまで
18010 color rgb(255,255,255)
18020 cls:print"名前:";name$ + name2$ + chr$(13)
18030 color rgb(255,0,255)
18040 print"陰陽配列(陽:●,陰:○)";buffer$ + buffer2$ + chr$(13)
18050 print buffer_name$;chr$(13)
18060 color rgb(0,0,0)
18070 print"エンターキーを押してください"
18080 key$=Input$(1)
18090 if key$ = chr$(13) then buffer$="":buffer2$="": goto Main_Screen:
18100 'Menu3
18110 '登録文字数の確認
18120 Entry_moji_check:
18130 totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_21+Moji_22+Moji_23+Moji_24:
18140 'グラフィック描画領域　ここから
18150 cls 3
18160 '1行目
18170 line (0,0)-(800,60),rgb(0,0,255),bf
18180 pen 5:line (0,0)-(797,57),rgb(127,255,212),b
18190 '2行目
18200 line (0,60)-(800,150),rgb(157,255,212),bf
18210 pen 5:line(0,57)-(797,147),rgb(0,0,255),b
18220 '3行目
18230 line (0,150)-(800,250),rgb(0,255,0),bf
18240 pen 5:line(0,147)-(797,247),rgb(0,0,255),b
18250 'グラフィック描画領域 ここまで
18260 color rgb(255,255,255)
18270 PRINT"登録文字数の確認"+chr$(13)
18280 color rgb(255,0,255)
18290 PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
18300 TALK"登録文字数は"+str$(totalmoji)+"もじです"
18310 color rgb(0,0,0)
18320 'print"エンターキーを押してください"+chr$(13)
18330 'key$=Input$(1)
18340 print"エンターキーを押してください"
18350 key$=Input$(1)
18360 if key$ = chr$(13) then goto Main_Screen:
18370 'Menu2 文字の総数で名前の吉凶を見る（総数で判定)
18380 nick_name_check:
18390 talk"名前の総数で吉凶を判定します。ニックネームの名前を入れてください"
18400 'グラフィック描画領域　ここから
18410 cls 3
18420 line (0,0)-(1100,60),rgb(0,0,250),bf
18430 pen 5:line(0,0)-(1097,57),rgb(127,255,212),b
18440 line (0,60)-(1100,160),rgb(127,255,212),bf
18450 pen 5:line(0,57)-(1097,157),rgb(0,0,255),b
18460 line (0,160)-(1100,270),rgb(0,255,0),bf
18470 pen 5:line(0,157)-(1097,267),rgb(0,0,255),b
18480 'グラフィック描画領域　ここまで
18490 buf=0:cls
18500 color rgb(255,255,255)
18510 Print"名前(ニックネーム)の総数で吉凶を判断します"+chr$(13)
18520 color rgb(255,0,255)
18530 PRINT"名前(ニックネーム)を入れてください"+chr$(13)
18540 color rgb(0,0,0)
18550 Input"名前:",name$
18560 if name$="" then goto nick_name_check:
18570 for n=0 to (len(name$)-1)
18580 buf_Input_data$(n)=mid$(name$,n+1,1)
18590 buf=buf+char_count(buf_Input_data$(n))
18600 next n
18610 if buf=0 then ui_msg"登録文字がございません。":talk"登録文字がございません":goto nick_name_check:
18620 '結果表示　グラフィック　ここから
18630 cls 3
18640 line (0,0)-(1100,60),rgb(0,0,255),bf
18650 pen 5:line(0,0)-(1097,57),rgb(127,255,212),b
18660 line (0,60)-(1100,160),rgb(127,255,212),bf
18670 pen 5:line(0,57)-(1097,157),rgb(0,0,255),b
18680 line (0,160)-(1100,540),rgb(0,255,0),bf
18690 pen 5:line(0,157)-(1097,537),rgb(0,0,255),b
18700 '結果表示 グラフィック領域 ここまで
18710 color rgb(255,255,255):print name$;"の総数:";buf;chr$(13)
18720 color rgb(255,0,255):print name$;"の吉凶:";buf_Kikkyo$(buf+2);chr$(13)
18730 color rgb(0,0,0)
18740 print "番号を選んでください"+chr$(13)
18750 PRINT "エンターキー:もう一度やる"+chr$(13)
18760 print "q:トップに戻る"+chr$(13)
18770 print "コマンド:"
18780 key$=Input$(1)
18790 if key$="q" then goto Main_Screen:
18800 if key$=chr$(13) then goto nick_name_check:
18810 'if No > 2 then goto 18230
18820 '名前2文字
18830 'グラフィック描画領域　ここから
18840 Result_Anzai:
18850 CLS 3
18860 line (0,0)-(1400,60),rgb(0,0,255),bf
18870 pen 5:line(0,0)-(1397,57),rgb(127,255,212),b
18880 line (0,60)-(1400,540),rgb(127,255,212),bf
18890 pen 5:line(0,57)-(1397,537),rgb(0,0,255),b
18900 line (0,540)-(1400,860),rgb(0,255,0),bf
18910 pen 5:line(0,537)-(1397,857),rgb(0,0,255),b
18920 'グラフィック描画領域 ここまで
18930 color rgb(255,255,255):print"名前:";bufname$;bufname2$;chr$(13)
18940 color rgb(255,0,255)
18950 print"天運";buf_tenunn;chr$(13)
18960 print"地運";buf_chiunn;",地運の吉凶(初年運:0〜20歳):";buf_Kikkyo_Anzai_chiunn$(buf_chiunn-1);chr$(13)
18970 print"人運";buf_jinunn;",人運の吉凶(中年運:20〜50歳):";buf_Kikkyo_Anzai_jinunn$(buf_jinunn-2);chr$(13)
18980 print"外運";buf_gaiunn;chr$(13)
18990 print"総数";buf_total;",総運の吉凶(晩年運:50歳以上):";buf_Kikkyo_Anzai_total$(buf_total-2);chr$(13)
19000 COLOR rgb(0,0,0)
19010 PRINT"q+エンターキー:トップ画面"+chr$(13)
19020 print"エンターキー:もう一度、吉凶をみる"+chr$(13)
19030 print "コマンド:"
19040 key$=Input$(1)
19050 if key$=chr$(13) then goto Anzai_Top_Screen:
19060 if key$="q" or key$="Q" then goto Main_Screen:
19070 '参考文献 表示 ここから
19080 'グラフィック描画領域　 ここから
19090 Document_info:
19100 cls 3
19110 line (0,0)-(1100,60),rgb(0,0,255),bf
19120 pen 5:line(0,0)-(1097,57),rgb(127,255,212),b
19130 line (0,60)-(1100,650),rgb(127,255,212),bf
19140 pen 5:line(0,57)-(1097,647),rgb(0,0,255),b
19150 line (0,650)-(1100,730),rgb(0,255,0),bf
19160 pen 5:line(0,647)-(1097,727),rgb(0,0,255),b
19170 'グラフィック描画領域  ここまで
19180 '参考文献１
19190 cls
19200 color rgb(255,255,255)
19210 print"◎参考文献"+chr$(13)
19220 color rgb(255,0,255)
19230 print "参考文献 １/4"+chr$(13)
19240 print "Title:九星姓名判断"+chr$(13)
19250 print "Author:高嶋　 美伶"+chr$(13)
19260 print "出版社:日本文芸者"+chr$(13)
19270 print "ISBN:4-537-20073-1"+chr$(13)
19280 print "定価:1,200+税"+chr$(13)
19290 color rgb(0,0,0)
19300 print "エンターキーを押してください"
19310 key$=Input$(1)
19320 if key$=chr$(13)  then goto Document_info2:
19330 '参考文献２
19340 Document_info2:
19350 cls
19360 color rgb(255,255,255)
19370 print "◎参考文献"+chr$(13)
19380 color rgb(255,0,255)
19390 print "参考文献 ２/4"+chr$(13)
19400 print "Title:究極の姓名判断"+chr$(13)
19410 print "Author:安斎　勝洋"+chr$(13)
19420 print "出版社:説話社"+chr$(13)
19430 print "ISBN:978-4-916217-61-5"+chr$(13)
19440 print "定価:1,800円+税"+chr$(13)
19450 color rgb(0,0,0)
19460 print"エンターキーを押してください"
19470 key$=Input$(1)
19480 if key$=chr$(13) then goto Document_info3:
19490 '参考文献３
19500 Document_info3:
19510 cls
19520 color rgb(255,255,255)
19530 print"◎参考文献"+chr$(13)
19540 color rgb(255,0,255)
19550 print "参考文献 3/4"+chr$(13)
19560 print "Title:新明解現在漢和辞典"+chr$(13)
19570 print "Author:影山輝國(編集主幹)他"+chr$(13)
19580 print "出版社:三省堂"+chr$(13)
19590 print "ISBN:978-4-385-13755-1"+chr$(13)
19600 print "定価:2,800円 + 税"+chr$(13)
19610 color rgb(0,0,0)
19620 print "エンターキーを押してください"
19630 key$=Input$(1)
19640 if key$=chr$(13) then goto Document_info4:
19650 '参考文献４　
19660 '描画領域　ここから
19670 Document_info4:
19680 cls 3
19690 line (0,0)-(1100,60),rgb(0,0,255),bf
19700 line (0,0)-(1100,57),rgb(0,255,0),b
19710 line (0,60)-(1100,650),rgb(127,255,212),bf
19720 LINE (0,60)-(1100,647),rgb(0,0,255),b
19730 LINE (0,650)-(1100,830),rgb(0,255,0),bf
19740 line (0,650)-(1100,833),rgb(0,0,255),b
19750 '描画領域　ここまで
19760 'cls
19770 color rgb(255,255,255)
19780 print "◎参考文献"+chr$(13)
19790 COLOR rgb(255,0,255)
19800 print "参考文献 4/4" + chr$(13)
19810 print "Title:姓名の暗号" + chr$(13)
19820 print "Author:樹門　幸宰(じゅもん こうざい)"+chr$(13)
19830 print "出版社:幻冬舎"+chr$(13)
19840 print "定価:1400円 + 税"+chr$(13)
19850 print "ISBN:4-344-00777-8"+chr$(13)
19860 color rgb(0,0,0)
19870 print "参考文献トップに行く:エンターキー"+chr$(13)
19880 print "スペース：トップメニューに行く"+chr$(13)
19890 key$=Input$(1)
19900 'トップ画面に戻る
19910 if key$ = " " then goto help:
19920 if key$ = chr$(13) then goto Document_info:
19930 '安斎流姓名判断　メニュー
19940 'グラフィック領域　ここから
19950 Anzai_Top:
19960 cls 3
19970 line (0,0)-(1000,60),rgb(0,0,255),bf
19980 pen 5:line(0,0)-(997,57),rgb(127,255,212),b
19990 line (0,60)-(1000,475),rgb(127,255,212),bf
20000 pen 5:line(0,57)-(997,472),rgb(0,0,255),b
20010 line (0,475)-(1000,650),rgb(0,255,0),bf
20020 pen 5:line(0,472)-(997,647),rgb(0,0,255),b
20030 'グラフィック描画領域　ここまで
20040 color rgb(255,255,255)
20050 print "安斎流姓名判断　トップメニュー" + chr$(13)
20060 color rgb(255,0,255)
20070 print "1.安斎流姓名判断 相性占い" + chr$(13)
20080 print "2.安斎流姓名判断 名前の吉凶判定" + chr$(13)
20090 print "3.安斎流姓名判断 改名チェック" + chr$(13)
20100 print "4.前の画面に戻る"+chr$(13)
20110 color rgb(0,0,0)
20120 print"番号を選んでください"+chr$(13)
20130 Input "番号:",key
20140 if key=2 then goto Anzai_Top_Screen:
20150 if key=3 then goto Anzai_Kaimei_Check:
20160 if key=1 then goto Anzai_Aishou_Top1:
20170 if key=4 then goto seimeihandan_top:
20180 if key > 4 or key = 0 then goto Anzai_Top:
20190 '2.安斎流姓名判断　男女の相性占い　ここから
20200 'グラフィック描画領域 ここから
20210 Anzai_Aishou_Top1:
20220 cls 3
20230 '1行目
20240 line (0,0)-(800,60),rgb(0,0,255),bf
20250 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
20260 '2行目
20270 line (0,60)-(800,160),rgb(127,255,212),bf
20280 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
20290 '3行目
20300 line (0,160)-(800,300),rgb(0,255,0),bf
20310 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
20320 'グラフィック描画領域　男女の相性占い ここまで
20330 'if s1=1 then goto 20040
20340 'if s1=2 then goto 20200
20350 '1.名前の姓を入力  男性
20360 'Anzai_Aishou_Top1:
20370 color rgb(255,255,255)
20380 print "安斎流姓名判断　相性占い(男性)"+chr$(13)
20390 color rgb(255,0,255)
20400 print "男性の名前(姓)を入れてください"+chr$(13)
20410 color rgb(0,0,0)
20420 Input "男性の名前(姓):",name$
20430 '2.名前の名を入力  男性
20440 cls 3
20450 line (0,0)-(800,60),rgb(0,0,255),bf
20460 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
20470 '2行目
20480 line (0,60)-(800,160),rgb(127,255,212),bf
20490 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
20500 '3行目
20510 line (0,160)-(800,300),rgb(0,255,0),bf
20520 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
20530 color rgb(255,255,255)
20540 print "安斎流姓名判断 相性占い(男性)"+chr$(13)
20550 color rgb(255,0,255)
20560 print "男性の名前（名）をいれてください"+chr$(13)
20570 color rgb(0,0,0)
20580 Input "男性の名前(名):",name2$
20590 'if s2=2 then goto 20400
20600 '3.名前(姓)入力 女性
20610 Anzai_Aishou_Top2:
20620 cls 3
20630 line (0,0)-(800,60),rgb(0,0,255),bf
20640 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
20650 '2行目
20660 line (0,60)-(800,160),rgb(127,255,212),bf
20670 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
20680 '3行目
20690 line (0,160)-(800,300),rgb(0,255,0),bf
20700 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
20710 color rgb(255,255,255)
20720 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
20730 color rgb(255,0,255)
20740 print "女性の名前(姓)を入れてください"+chr$(13)
20750 color rgb(0,0,0)
20760 Input"女性の名前:",name3$
20770 '4.名前（名)入力 女性
20780 cls 3
20790 line (0,0)-(800,60),rgb(0,0,255),bf
20800 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
20810 '2行目
20820 line (0,60)-(800,160),rgb(127,255,212),bf
20830 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
20840 '3行目
20850 line (0,160)-(800,300),rgb(0,255,0),bf
20860 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
20870 color rgb(255,255,255)
20880 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
20890 color rgb(255,0,255)
20900 print "女性の名前（名）を入れてください"+chr$(13)
20910 color rgb(0,0,0)
20920 Input "女性の名前(名):",name4$
20930 '男性　の地運 を求める
20940 '姓名の合計数
20950 '1.男性 名前の文字数を求める
20960 '地運を求める
20970 buf_male_name1 = len(name$)
20980 buf_male_name2 = len(name2$)
20990 buf_male_count = buf_male_name1 + buf_male_name2
21000 '2.女性 名前の文字数を求める
21010 buf_female_name1 = len(name3$)
21020 buf_female_name2 = len(name4$)
21030 buf_female_count = buf_female_name1 + buf_female_name2
21040 'goto Anzai_Aishou_Check:
21050 '1.男性の地運を求める
21060 select case buf_male_count
21070 case 2:
21080 '男性の地運を求める
21090 buf_chiunn=char_count(name2$)
21100 case 3:
21110 '姓が一文字 名が2文字
21120 if buf_male_name1=1 and buf_male_name2=2 then
21130 buf_Input_name$(0)=mid$(name2$,1,1)
21140 buf_Input_name$(1)=mid$(name2$,2,1)
21150 '地運を計算
21160 buf_chiunn=char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
21170 endif
21180 if buf_male_name1=2 and buf_male_name2=1 then
21190 buf_Input_name$(0)=Mid$(name2$,1,1)
21200 buf_chiunn=char_count(buf_Input_name$(0))
21210 endif
21220 case 4:
21230 '1.姓１，名３
21240 if bufmale_name1=1 and buf_male_name2=3 then
21250 buf_Input_name$(0)=Mid$(name2$,1,1)
21260 buf_Input_name$(1)=Mid$(name2$,2,1)
21270 buf_Input_name$(2)=Mid$(name2$,3,1)
21280 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
21290 endif
21300 '2.姓２,名２
21310 if buf_male_name1=2 and buf_male_name2=2 then
21320 buf_Input_name$(0)=Mid$(name2$,1,1)
21330 buf_Input_name$(1)=Mid$(name2$,2,1)
21340 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
21350 endif
21360 '3.姓３、名１
21370 if buf_male_name1=3 and buf_male_name2=1 then
21380 buf_Input_name$(0)=Mid$(name2$,1,1)
21390 '地運を求める
21400 buf_chiunn=char_count(buf_Input_name$(0))
21410 endif
21420 case 5:
21430 '1.姓２，名３
21440 if buf_male_name1 = 2 and buf_male_name2 = 3 then
21450 buf_Input_name$(0)=Mid$(name2$,1,1)
21460 buf_Input_name$(1)=Mid$(name2$,2,1)
21470 buf_Input_name$(2)=Mid$(name2$,3,1)
21480 '地運を求める
21490 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
21500 endif
21510 '2.姓３，名２
21520 if buf_male_name1=3 and buf_male_name2=2 then
21530 buf_Input_name$(0)=Mid$(name2$,1,1)
21540 buf_Input_name$(1)=Mid$(name2$,2,1)
21550 '地運を求める
21560 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
21570 endif
21580 '3.姓４、名１
21590 buf_Input_name$(0)=Mid$(name2$,1,1)
21600 '地運を求める
21610 buf_chiunn = char_count(buf_Input_name$(0))
21620 case 6:
21630 '1.姓３，名３
21640 if buf_male_name1=3 and buf_male_name2=3 then
21650 buf_Input_name$(0)=Mid$(name2$,1,1)
21660 buf_Input_name$(1)=Mid$(name2$,2,1)
21670 buf_Input_name$(2)=Mid$(name2$,3,1)
21680 '地運を求める
21690 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
21700 endif
21710 '２.姓４，名２
21720 if buf_male_name1=4 and buf_male_name2=2 then
21730 buf_Input_name$(0)=Mid$(name2$,1,1)
21740 buf_Input_name$(1)=Mid$(name2$,2,1)
21750 '地運を求める
21760 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
21770 endif
21780 case else:
21790 end select
21800 'if s1=1 then goto 25960
21810 'if s2=2 then goto 23720
21820 '2.女性　外運を求める
21830 select case buf_female_count
21840 '姓と名の合計数
21850 case 2:
21860 buf_Input_name2$(0)=Mid$(name3$,1,1)
21870 buf_Input_name2$(1)=Mid$(name4$,1,1)
21880 buf_gaiunn=char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1))
21890 case 3:
21900 if buf_female_name1=2 and buf_female_name2=1 then
21910 buf_Input_name2$(0)=Mid$(name3$,1,1)
21920 buf_Input_name2$(1)=Mid$(name3$,2,1)
21930 buf_Input_name2$(2)=Mid$(name4$,1,1)
21940 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
21950 endif
21960 if buf_female_name1=1 and buf_female_name2=2 then
21970 buf_Input_name2$(0)=Mid$(name3$,1,1)
21980 buf_Input_name2$(1)=Mid$(name4$,1,1)
21990 buf_Input_name2$(2)=Mid$(name4$,2,1)
22000 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
22010 endif
22020 case 4:
22030 '姓１、名３
22040 if buf_female_name1=1 and buf_female_name2=3 then
22050 buf_Input_name2$(0)=Mid$(name3$,1,1)
22060 buf_Input_name2$(1)=Mid$(name4$,1,1)
22070 buf_Input_name2$(2)=Mid$(name4$,2,1)
22080 buf_Input_name2$(3)=Mid$(name4$,3,1)
22090 '外運を求める
22100 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))+char_count(buf_Input_name2$(3))
22110 endif
22120 '姓２,名２
22130 if buf_female_name1=2 and buf_female_name2=2 then
22140 buf_Input_name2$(0)=Mid$(name3$,1,1)
22150 buf_Input_name2$(1)=Mid$(name3$,2,1)
22160 buf_Input_name2$(2)=Mid$(name4$,1,1)
22170 buf_Input_name2$(3)=Mid$(name4$,2,1)
22180 '外運を求める
22190 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(3))
22200 endif
22210 '姓３，名１
22220 if buf_female_name1=3 and buf_female_name2=1 then
22230 buf_Input_name2$(0)=Mid$(name3$,1,1)
22240 buf_Input_name2$(1)=Mid$(name3$,2,1)
22250 buf_Input_name2$(2)=Mid$(name3$,3,1)
22260 buf_Input_name2$(3)=Mid$(name4$,1,1)
22270 '外運を求める
22280 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(3))
22290 endif
22300 case 5:
22310 '姓 3,名2
22320 if buf_female_name1 = 3 and buf_female_name2 = 2 then
22330 buf_Input_name2$(0)=Mid$(name3$,1,1)
22340 buf_Input_name2$(1)=Mid$(name3$,2,1)
22350 buf_Input_name2$(2)=Mid$(name3$,3,1)
22360 buf_Input_name2$(3)=Mid$(name4$,1,1)
22370 buf_Input_name2$(4)=Mid$(name4$,2,1)
22380 '外運を求める
22390 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))
22400 endif
22410 '姓４、名１
22420 if buf_female_name1=4 and buf_female_name2=1 then
22430 buf_Input_name2$(0)=Mid$(name3$,1,1)
22440 buf_Input_name2$(1)=Mid$(name3$,2,1)
22450 buf_Input_name2$(2)=Mid$(name3$,3,1)
22460 buf_Input_name2$(3)=Mid$(name3$,4,1)
22470 buf_Input_name2$(4)=Mid$(name4$,1,1)
22480 '外運を求める
22490 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(4))
22500 endif
22510 '姓２、名３
22520 if buf_female_name1 = 2 and buf_female_name2 = 3 then
22530 buf_Input_name2$(0)=Mid$(name3$,1,1)
22540 buf_Input_name2$(1)=Mid$(name3$,2,1)
22550 buf_Input_name2$(2)=Mid$(name4$,1,1)
22560 buf_Input_name2$(3)=Mid$(name4$,2,1)
22570 buf_Input_name2$(4)=Mid$(name4$,3,1)
22580 '外運を求める
22590 buf_gaiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(3))+char_count(buf_Input_name$(4))
22600 endif
22610 case 6:
22620 '1.姓３，名３
22630 if buf_female_name1=3 and buf_female_name2=3 then
22640 buf_Input_name2$(0)=Mid$(name3$,1,1)
22650 buf_Input_name2$(1)=Mid$(name3$,2,1)
22660 buf_Input_name2$(2)=Mid$(name3$,3,1)
22670 buf_Input_name2$(3)=Mid$(name4$,1,1)
22680 buf_Input_name2$(4)=Mid$(name4$,2,1)
22690 buf_Input_name2$(5)=Mid$(name4$,3,1)
22700 '外運を求める
22710 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))+char_count(buf_Input_name$(5))
22720 endif
22730 '2.姓４，名２
22740 if buf_female_name1=4 and buf_female_name2=2 then
22750 buf_Input_name2$(0)=Mid$(name3$,1,1)
22760 buf_Input_name2$(1)=Mid$(name3$,2,1)
22770 buf_Input_name2$(2)=Mid$(name3$,3,1)
22780 buf_Input_name2$(3)=Mid$(name3$,4,1)
22790 buf_Input_name2$(4)=Mid$(name4$,1,1)
22800 buf_Input_name2$(5)=Mid$(name4$,2,1)
22810 '外運を求める
22820 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(5))
22830 endif
22840 case 7:
22850 '1姓４，名３
22860 '外運を求める
22870 end select
22880 'if s=1 then goto Anzai_Aishou_Check:
22890 'if s2=2 then goto Anzai_Aishou_Check:
22900 'goto 26200
22910 func buf_number(a)
22920 if a < 10 then
22930 buf_tansu = a
22940 endif
22950 if a > 9 and a < 20 then
22960 buf_tansu = a - 10
22970 endif
22980 if a > 19 and a < 30 then
22990 buf_tansu = a - 20
23000 endif
23010 buffer = buf_tansu
23020 endfunc buffer
23030 check$="No Data"
23040 func Aisyou_type$(man,woman)
23050 Result$="No data"
23060 'check$="No data"
23070 '1.理解し合える最良のカップル
23080 '1のFor文
23090 for i=0 to 19
23100 if buf_good_couple1(i) = man and buf_good_couple2(i) = woman then
23110 Result$ = "1.理解し合える最良のカップル"
23120 check$="○"
23130 ResultNo = 0
23140 endif
23150 if buf_natural_couple1(i) = man and  buf_natural_couple2(i) = woman then
23160 Result$="2.互いに自然体でつきあえるカップル"
23170 ResultNo=1
23180 check$="○"
23190 endif
23200 '3.男性にとって居心地の良いカップル
23210 if buf_good_for_man1(i)= man AND buf_good_for_man2(i)= woman then
23220 Result$="3.男性にとって居心地の良いカップル"
23230 ResultNo=2
23240 check$="△"
23250 endif
23260 '4.女性にとって居心地の良いカップル
23270 if buf_good_for_woman1(i) = man AND buf_good_for_woman2(i) = woman then
23280 Result$ = "4.女性にとって居心地の良いカップル"
23290 ResultNo=3
23300 check$="△"
23310 endif
23320 '5.恋愛経験を重ねた後なら愛を育める
23330 'for i=0 to 9
23340 'for j=0 to 9
23350 if short_of_experience1(i) = man AND short_of_experience2(i) = woman then
23360 Result$="5.恋愛経験を重ねた後なら愛を育める"
23370 ResultNo=4
23380 check$="×"
23390 endif
23400 'next j
23410 'next i
23420 '6
23430 if buf_difficult_for_couple1(i)=man AND  buf_difficult_for_couple2(i)=woman then
23440 Result$="6.結婚への発展が困難なカップル"
23450 check$="×"
23460 endif
23470 '7
23480 if buf_difference_of_love1(i)=man AND buf_difference_of_love2(i)=woman then
23490 Result$="7.愛し方にずれが出てくる二人"
23500 check$="×"
23510 endif
23520 '8
23530 if buf_difference_of_KachiKan1(i)=man AND buf_difference_of_KachiKan2(i)=woman  then
23540 Result$="8.互いに価値観が噛み合わない相性"
23550 check$="×"
23560 endif
23570 next i
23580 'bufAisyou$ = Result$
23590 endfunc  Result$
23600 Anzai_Aishou_Check:
23610 cls 3:
23620 buf_t_chiunn = buf_number(buf_chiunn)
23630 buf_t_gaiunn=buf_number(buf_gaiunn)
23640 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
23650 'グラフィック描画領域　ここから
23660 'Title欄
23670 line(0,0)-(1300,60),rgb(0,0,255),bf
23680 pen 5:line(0,0)-(1297,57),rgb(127,255,212),b
23690 '結果表示欄
23700 line(0,60)-(1300,660),rgb(127,255,212),bf
23710 pen 5:line(0,57)-(1297,662),rgb(0,0,255),b
23720 'ボタン選択欄
23730 LINE(0,660)-(1300,860),rgb(0,255,0),bf
23740 pen 5:line(0,662)-(1297,862),rgb(0,0,255),b
23750 'グラフィック描画領域　ここまで
23760 'buf_t_chiunn=buf_number(buf_chiunn):buf_t_gaiunn=buf_number(buf_gaiunn)
23770 color rgb(255,255,255)
23780 print "安斎流姓名判断　相性占い　結果表示"+chr$(13)
23790 color rgb(255,0,255)
23800 print "男性の名前:";name$+name2$;chr$(13)
23810 print "地運の単数";buf_t_chiunn;chr$(13)
23820 print "女性の名前:";name3$+name4$;chr$(13)
23830 print "外運の単数";buf_t_gaiunn;chr$(13)
23840 print"二人の相性:";bufferAisyou$;chr$(13)
23850 print"相性判定:";check$;chr$(13)
23860 color rgb(0,0,0)
23870 print "トップ画面:エンターキー"+chr$(13)
23880 print "保存:S or s"+chr$(13)
23890 key$=Input$(1)
23900 if key$=chr$(13) then goto Main_Screen:
23910 '
23920 '保存してメイン画面に行く
23930 if key$="S" or key$="s" then goto ReiIden_Seimeihandan_data_Save:
23940 '改名チェック
23950 'グラフィック描画領域 ここから
23960 Anzai_Kaimei_Check:
23970 cls 3
23980 line (0,0)-(1250,60),rgb(0,0,255),bf
23990 pen 5:line(0,0)-(1247,57),rgb(125,255,212),b
24000 line (0,60)-(1250,370),rgb(127,255,212),bf
24010 pen 5:line (0,57)-(1247,367),rgb(0,0,2550),b
24020 line (0,370)-(1250,450),rgb(0,255,0),bf
24030 pen 5:line(0,367)-(1247,447),rgb(0,0,255),b
24040 'グラフィック描画領域 ここまで
24050 talk"ニックネームまたは会社名から改名が必要かチェックします、10文字以内で名前を入れてください"
24060 color rgb(255,255,255)
24070 print "安斎流姓名判断 改名チェッカー"+chr$(13)
24080 color rgb(255,0,255)
24090 print "総数で、改名が、必要か否かを調べます"+chr$(13)
24100 print "名前(ニックネーム or 会社名等)を入れてください"+chr$(13)
24110 print "10文字までで入れてください"+chr$(13)
24120 color rgb(0,0,0)
24130 Input "名前:",name$
24140 '計算領域　ここから
24150 '名前から総運を計算
24160 '1.名前の文字数を出す
24170 n=len(name$)
24180 if n > 10 or n=0 then
24190 '文字数が10個までという表示
24200 'トーストで表示
24210 if n > 10 then
24220 ui_msg "文字は10個までです"
24230 else
24240 ui_msg "文字が空っぽです"
24250 endif
24260 goto Anzai_Aishou_Check:
24270 endif
24280 'それ以外
24290 '総数を出す処理を出す
24300 '画面消去　データー初期化
24310 cls 3:bufer_total=0
24320 'グラフィック描画領域 ここから
24330 line(0,0)-(950,60),rgb(0,0,255),bf
24340 pen 5:line(0,0)-(947,57),rgb(127,255,212),b
24350 line(0,60)-(950,300),rgb(127,255,212),bf
24360 pen 5:line(0,57)-(947,297),rgb(0,0,255),b
24370 line(0,300)-(950,440),rgb(0,255,0),bf
24380 pen 5:line(0,297)-(947,437),rgb(0,0,255),b
24390 'グラフィック描画領域 ここまで
24400 'cls 3
24410 color rgb(255,255,255)
24420 print"安斎流姓名判断　改名チェック　診断結果"+chr$(13)
24430 for i=0 to len(name$)-1
24440 buf_Input_name$(i)=Mid$(name$,i+1,1)
24450 bufer_total = char_count(buf_Input_name$(i)) + bufer_total
24460 next i
24470 buf_Kikkyo$=buf_Kikkyo_Anzai_total$(bufer_total-2)
24480 color rgb(255,0,255)
24490 print "名前:";name$
24500 print "この名前の総数:";bufer_total
24510 print "この名前の吉凶:";buf_Kikkyo$;"です"
24520 color rgb(255,0,255)
24530 buffer_total$ = Kaimei_check$(buf_Kikkyo_Anzai_total$(bufer_total - 2 ))
24540 print bufer_total$+chr$(13)
24550 'if buffer_K=0 or buffer_K=1  then
24560 'dim select$(2)
24570 'select$(0)="改名をする"
24580 'select$(1)="改名しない"
24590 'talk"改名しますか？"
24600 'color rgb(0,0,0)
24610 'Input"改名しますか？",key$
24620 'num=ui_select("select$","改名リストに追加しますか?")
24630 'num=0:改名リストに追加する
24640 'if num=0  then goto 28440
24650 'else
24660 'num=1:改名リストに追加しない
24670 'if num=1 then goto 24170
24680 'num=2:トップ画面に行く
24690 'if num=2 then goto 5740
24700 'endif
24710 'if buffer_K=0 then
24720 'print num,select$(num)
24730 color rgb(0,0,0)
24740 locate 0,7
24750 print"エンターキーを押してください",key$
24760 key$=Input$(1)
24770 if key$=chr$(13) then goto Main_Screen:
24780 'endif
24790 '改名チェック関数
24800 func Kaimei_check$(r$)
24810 if r$="大吉数" or r$="中吉数" or r$="小吉数" or r$="半吉数" or r$="六大吉数" or r$="吉数" then
24820 '改名の必要なし
24830 talk"この名前は改名の必要がございません。"
24840 print"この名前は、改名の必要はありません"+chr$(13)
24850 '改名の必要ナシの場合
24860 K=0
24870 buffer_K=K
24880 else
24890 '改名の必要あり
24900 Kaimei_check:
24910 talk"この名前は、改名の必要があります"
24920 print"この名前は、改名の必要があります"+chr$(13)
24930 color rgb(0,0,0)
24940 print"改名しますか？"
24950 K=1
24960 buffer_K=K
24970 '◎表示パターン
24980 'パターン１
24990 'color rgb(0,0,0)
25000 'Input"エンターキーを押してください",key$
25010 endif
25020 endfunc result$
25030 'ui_msg="1件追加しました,残り9件追加できます"
25040 'ファイルの存在確認 設定ファイル:mydata.dat
25050 cls
25060 '設定ファイルの確認
25070 if dir$("config/Parsonal_data/mydata.dat")="" then
25080 'print "File not found"+chr$(13)
25090 '1.ファイルがない時
25100 goto Kaimei_check:
25110 else
25120 'ファイルがある時
25130 goto 25690
25140 'goto 19820
25150 endif
25160 '1-1.ファイルがない時の処理
25170 '1-1.自分の姓名判断を入力
25180 'グラフィック描画領域 ここから
25190 cls 3
25200 '1行目
25210 line(0,0)-(1000,60),rgb(0,0,250),bf
25220 pen 5:line(0,0)-(997,57),rgb(127,255,212),b
25230 '2行目
25240 line(0,60)-(1000,80),rgb(127,255,212),bf
25250 pen 5:line(0,57)-(997,77),rgb(0,0,255),b
25260 '3行目
25270 line(0,80)-(1000,120),rgb(0,255,0),bf
25280 pen 5:line(0,77)-(997,117),rgb(0,0,255),b
25290 'グラフィック描画領域 ここまで
25300 '1.名前の姓の入力
25310 '1行目 Title
25320 color rgb(255,255,255)
25330 print"安斎流姓名判断　相性占い　自分のプロフィール入力"+chr$(13)
25340 '2行目 名前の姓を入力
25350 color rgb(255,0,255)
25360 print "自分の名前の姓を入れてください"+chr$(13)
25370 color rgb(0,0,0)
25380 'buf_name1$:自分の名前の姓
25390 Input"名前の姓:",buf_name1$
25400 '2.名前の名の入力
25410 '画面消去
25420 Anzai_myProfile2:
25430 cls
25440 '1行目 Title
25450 color rgb(255,255,255)
25460 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
25470 '2行目 名前の名の入力
25480 color rgb(255,0,255)
25490 print "自分の名前の名を入れてください"+chr$(13)
25500 color rgb(0,0,0)
25510 'buf_name2$:自分の名前の名
25520 input "名前の名:",buf_name2$
25530 '3.性別入力
25540 cls
25550 '1行目 Title
25560 color rgb(255,255,255)
25570 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
25580 '2行目 性別入力
25590 color rgb(255,0,255)
25600 print"自分の性別を入れてください(女性 or 男性)"+chr$(13)
25610 sex_type$(0)="女性"
25620 sex_type$(1)="男性"
25630 type=ui_select("sex_type$","性別を選んでください")
25640 '3行目
25650 '性別変数 sex_type$
25660 if type = 1 then
25670 print"自分の性別(女性 or 男性):";sex_type$(1)+chr$(13):sex_type$=sex_type$(1):goto 25070
25680 else
25690 print"自分の性別(女性 or 男性):";sex_type$(0)+chr$(13):sex_type$=sex_type$(0):goto Anzai_myProfile2:
25700 endif
25710 if sex_type$="男性" then
25720 name$=buf_name1$
25730 name2$=buf_name2$
25740 s=1
25750 goto Anzai_Aishou_Top1:
25760 endif
25770 If sex_type$="女性" then
25780 name3$=buf_name1$
25790 name4$=buf_name2$
25800 s=2
25810 goto Anzai_Aishou_Top2:
25820 endif
25830 '登録プロフィール確認画面
25840 Entry_Profile:
25850 cls 3
25860 'グラフィック描画領域　ここから
25870 '1行目
25880 line(0,0)-(1200,60),rgb(0,0,255),bf
25890 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
25900 '2行目
25910 line(0,60)-(1200,360),rgb(127,255,212),bf
25920 pen 5:line(0,57)-(1197,357),rgb(0,0,255),b
25930 '3行目
25940 line(0,100)-(1200,420),rgb(0,255,0),bf
25950 pen 5:line(0,97)-(1197,417),rgb(0,0,0),b
25960 if s2=2 then goto Entry_Profile:
25970 'グラフィック描画領域　ここまで
25980 '1行目 Title
25990 color rgb(255,255,255)
26000 print"安斎流姓名判断 自分のプロフィール　登録確認"+chr$(13)
26010 color rgb(255,0,255)
26020 print"名前:";buf_name1$+buf_name2$;chr$(13)
26030 PRINT"性別:";sex_type$;chr$(13)
26040 if sex_type$="女性" then
26050 print"外運:";buf_gaiunn;chr$(13)
26060 buffer$="外運:"+str$(buf_gaiunn)
26070 endif
26080 if sex_type$="男性" then
26090 print"地運:";buf_chiunn;chr$(13)
26100 buffer$="地運:"+str$(buf_chiunn)
26110 endif
26120 color rgb(0,0,0)
26130 input"(登録する:Yes/登録しない:No):",key$
26140 if key$="Yes" or key$="yes" then
26150 open "config/Parsonal_data/mydata.dat" for output as #1
26160 print #1,"名前:";buf_name1$+buf_name2$
26170 print #1,"性別:";sex_type$
26180 print #1,buffer$
26190 close #1
26200 ui_msg"データーを保存しました"
26210 goto Main_Screen:
26220 endif
26230 '２．設定ファイルが存在する場合
26240 'ファイル読み込み 自分のデーターを表示
26250 cls
26260 open "Config/Parsonal_data/mydata.dat" for input as #2
26270 line input #2,a$
26280 line input #2,b$
26290 line input #2,c$
26300 close #2
26310 buffername$=a$
26320 buffername2$=b$
26330 buffername3$=c$
26340 bufff$=Mid$(buffername$,1,3)
26350 buff2$=Mid$(buffername2$,1,3)
26360 buff3$=Mid$(buffername3$,1,3)
26370 n=len(a$)
26380 sextype$=Mid$(buffername2$,4,2)
26390 if sextype$="男性" then
26400 '男性:s2
26410 s2=1
26420 '女性のデーター入力
26430 goto Anzai_Top:
26440 endif
26450 if sextype$="女性" then
26460 s2=2
26470 '男性のデーター入力
26480 goto Anzai_Top:
26490 endif
26500 '女性のデーター結果表示
26510 '1.プロフィール性別男性の場合 ここから
26520 Result_Anzai_Aisyou:
26530 cls 3
26540 'グラフィック　領域
26550 line (0,0)-(1200,60),rgb(0,0,255),bf
26560 line (0,0)-(1197,57),rgb(127,255,212),b
26570 line (0,60)-(1200,360),rgb(127,255,212),bf
26580 line (0,57)-(1197,357),rgb(0,0,255),b
26590 line (0,360)-(1200,560),rgb(0,255,0),bf
26600 line (0,357)-(1197,557),rgb(255,255,255),b
26610 'グラフィック 領域
26620 color rgb(255,255,255)
26630 print "安斎流姓名判断　 相性占い　結果表示"+chr$(13)
26640 name_length = len(bufername$)
26650 myname$ = Mid$(buffername$,4,4)
26660 chiunn = val(Mid$(buffername3$,4,2))
26670 tansuu1 = buf_number(chiunn)
26680 bufname$ = name3$ + name4$
26690 bufferAisyou$ = Aisyou_type$(tansuu1,buf_t_gaiunn)
26700 color rgb(255,0,255)
26710 print "自分の名前(男性):";myname$;chr$(13)
26720 print "地運の端数:";tansuu1;chr$(13)
26730 print "相手の名前(女性):";bufname$;chr$(13)
26740 print "外運の端数:";buf_t_gaiunn;chr$(13)
26750 print "二人の相性:";bufferAisyou$;chr$(13)
26760 talk "二人の相性は";bufferAisyou$
26770 color rgb(0,0,0)
26780 print"エンターキー:トップ画面"+chr$(13)
26790 print "データーの保存:S or s"+chr$(13)
26800 key$=Input$(1)
26810 'トップ画面に行く
26820 if key$ = chr$(13) then goto Main_Screen:
26830 '1.プロフィール性別男性の場合　ここまで
26840 '2.プロフィール性別女性の場合　ここから
26850 cls 3
26860 '描画領域　ここから
26870 line (0,0)-(1200,60),rgb(0,0,255),bf
26880 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
26890 line (0,60)-(1200,460),rgb(127,255,212),bf
26900 pen 5:line(0,57)-(1197,457),rgb(0,0,255),b
26910 LINE (0,460)-(1200,520),rgb(0,255,0),bf
26920 pen 5:line(0,457)-(1197,517),rgb(0,0,255),b
26930 '描画領域 ここまで
26940 color rgb(255,255,255)
26950 print"安斎流姓名判断　相性占い　結果表示"+chr$(13)
26960 '計算領域　ここから
26970 myname$ = Mid$(buffername$,4,4)
26980 gaiunn = val(Mid$(buffername3$,4,2))
26990 buf_t_gaiunn = buf_number(buf_gaiunn)
27000 buf_t_chiunn = buf_number(buf_chiunn)
27010 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
27020 bufname$ = name$ + name2$
27030 '計算領域 ここまで
27040 color rgb(255,0,255)
27050 print "自分の名前(女性):";myname$;chr$(13)
27060 print "外運の端数";buf_t_gaiunn;chr$(13)
27070 print "相手の名前(男性):";bufname$;chr$(13)
27080 print "地運の端数:";buf_t_chiunn;chr$(13)
27090 print "二人の相性:";bufferAisyou$;chr$(13)
27100 color rgb(0,0,0)
27110 print "エンターキーを押してください"
27120 key$ = Input$(1)
27130 if key$=chr$(13) then goto Main_Screen:
27140 '2.プロフィール性別女性の場合　ここまで
27150 'endfunc result$
27160 '取扱説明書
27170 '相性占い　トップメニュー ここから
27180 'グラフィック ここから
27190 Anzai_Aishou_Top_Menu:
27200 cls 3:
27210 '1行目
27220 line(0,0)-(1500,60),rgb(0,0,255),bf
27230 pen 5:line(0,0)-(1497,57),rgb(127,255,212),b
27240 '2行目
27250 line(0,60)-(1500,380),rgb(127,255,212),bf
27260 pen 5:line(0,57)-(1497,377),rgb(0,0,255),b
27270 '3行目
27280 line(0,360)-(1500,540),rgb(0,255,0),bf
27290 pen 5:line(0,357)-(1497,537),rgb(0,0,255),b
27300 'グラフィック　ここまで
27310 color rgb(255,255,255)
27320 print"安斎流姓名判断 　相性占い トップメニュー"+chr$(13)
27330 color rgb(255,0,255)
27340 print"1.男女の相性"+chr$(13)
27350 print"2.前の画面に戻る"+chr$(13)
27360 print"3.トップ画面に戻る"+chr$(13)
27370 color rgb(0,0,0)
27380 print"番号を選んでください:"+chr$(13)
27390 Input"番号:",key
27400 if key=1 then goto Anzai_Aishou_Top1:
27410 if key=2 then goto Anzai_Top
27420 if key=3 then goto Main_Screen:
27430 if key>3 or key=0  then goto Anzai_Aishou_Top_Menu:
27440 'グラフィック領域　ここから
27450 Life_Tenki:
27460 cls 3:line(0,0)-(1150,60),rgb(0,0,255),bf
27470 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
27480 line(0,60)-(1150,180),rgb(127,255,212),bf
27490 pen 5:line(0,57)-(1147,177),rgb(0,0,255),b
27500 line(0,120)-(1150,200),rgb(0,255,0),bf
27510 pen 5:line(0,117)-(1147,197),rgb(0,0,255),b
27520 'グラフィック領域　ここまで
27530 '誕生日入力　生まれた年
27540 color rgb(255,255,255)
27550 print"誕生日入力　生まれた年"+chr$(13)
27560 COLOR rgb(255,0,255)
27570 print"生まれた年を入れてください"+chr$(13)
27580 color rgb(0,0,0)
27590 Input"生まれた年:",year
27600 '誕生日入力 生まれた月
27610 cls
27620 color rgb(255,255,255)
27630 print"誕生日入力 生まれた月"+chr$(13)
27640 color rgb(255,0,255)
27650 print"生まれた月を入力してください"+chr$(13)
27660 color rgb(0,0,0)
27670 Input"生まれた月:",month
27680 '誕生日入力 生まれた日を入力
27690 cls
27700 color rgb(255,255,255)
27710 print"誕生日入力 生まれた日入力"+chr$(13)
27720 color rgb(255,0,255)
27730 print"生まれた日を入力してください"+chr$(13)
27740 color rgb(0,0,0)
27750 Input"生まれた日:",day
27760 '人生の転機を見る
27770 'グラフィック領域　ここから
27780 cls 3
27790 line(0,0)-(1150,60),rgb(0,0,255),bf
27800 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
27810 line(0,60)-(1150,470),rgb(127,255,212),bf
27820 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
27830 line(0,470)-(1150,520),rgb(0,255,0),bf
27840 pen 5:line(0,467)-(1147,517),rgb(0,0,255),b
27850 'グラフィック描画領域  ここまで
27860 cls
27870 buffername$=bufname$ + bufname2$
27880 color rgb(255,255,255)
27890 print buffername$;"さんの人生の転機を見る1"+chr$(13)
27900 color rgb(255,0,255)
27910 buf_total2=buf_total-(fix(buf_total/10)*10)
27920 tenki1_year=year+buf_total2
27930 tenki2_year=year+buf_total2+5
27940 tenki3_year=year+buf_total2+5+5
27950 tenki4_year=year+buf_total2+5+5+5
27960 tenki1=buf_total2
27970 tenki2=buf_total2+5
27980 tenki3=buf_total2+5+5
27990 tenki4=buf_total2+5+5+5
28000 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
28010 print tenki1_year;"年";tenki1;"歳"+chr$(13)
28020 print tenki2_year;"年";tenki2;"歳"+chr$(13)
28030 print tenki3_year;"年";tenki3;"歳"+chr$(13)
28040 print tenki4_year;"年";tenki4;"歳"+chr$(13)
28050 color rgb(0,0,0)
28060 print"エンターキーを押してください"
28070 key$=Input$(1)
28080 if key$=chr$(13) then goto Life_Tenki:
28090 '2ページ目
28100 cls
28110 color rgb(255,255,255)
28120 print buffername$;"さんの人生の転機2"+chr$(13)
28130 color rgb(255,0,255)
28140 tenki5_year = tenki4_year + 5
28150 tenki6_year = tenki4_year + 5 + 5
28160 tenki7_year = tenki4_year + 5 + 5 + 5
28170 tenki8_year = tenki4_year + 5 + 5 + 5+5
28180 tenki5 = tenki4 + 5
28190 tenki6 = tenki4 + 5 + 5
28200 tenki7 = tenki4 + 5 + 5 + 5
28210 tenki8 = tenki4 + 5 + 5 + 5 + 5
28220 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
28230 print tenki5_year;"年";tenki5;"歳"+chr$(13)
28240 print tenki6_year;"年";tenki6;"歳"+chr$(13)
28250 print tenki7_year;"年";tenki7;"歳"+chr$(13)
28260 print tenki8_year;"年";tenki8;"歳"+chr$(13)
28270 color rgb(0,0,0)
28280 print"エンターキーを押してください",key$
28290 key$=Input$(1)
28300 if key$=chr$(13) then goto 27560
28310 '3ページ目
28320 cls
28330 color rgb(255,255,255)
28340 print buffername$;"さんの人生の転機3"+chr$(13)
28350 '計算部分
28360 tenki_year9=tenki8_year + 5
28370 tenki_year10=tenki8_year + 5 + 5
28380 tenki_year11=tenki8_year+5+5+5
28390 tenki_year12=tenki8_year+5+5+5+5
28400 tenki9=tenki8+5
28410 tenki10=tenki8+5+5
28420 tenki11=tenki8+5+5+5
28430 tenki12=tenki8+5+5+5+5
28440 color rgb(255,0,255)
28450 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
28460 print tenki_year9;"年";tenki9;"歳"+chr$(13)
28470 print tenki_year10;"年";tenki10;"歳"+chr$(13)
28480 print tenki_year11;"年";tenki11;"歳"+chr$(13)
28490 print tenki_year12;"年";tenki12;"歳"+chr$(13)
28500 color rgb(0,0,0)
28510 print"エンターキーを押してください"
28520 key$=Input$(1)
28530 if key$=chr$(13) then goto 27790
28540 'グラフィック描画領域 ここから
28550 cls 3
28560 line(0,0)-(1150,60),rgb(0,0,255),bf
28570 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
28580 line(0,60)-(1150,470),rgb(127,255,212),bf
28590 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
28600 line(0,470)-(1150,850),rgb(0,255,0),bf
28610 pen 5:line(0,467)-(1147,847),rgb(0,0,255),b
28620 'グラフィック描画領域 ここまで
28630 '4回目
28640 cls
28650 color rgb(255,255,255)
28660 print buffername$;"さんの人生の転機４"+chr$(13)
28670 color rgb(255,0,255)
28680 print"誕生日:";year;"年";month;"月";day;"日"+chr$(13)
28690 '計算部分
28700 tenki_year13 = tenki_year12 + 5
28710 tenki_year14 = tenki_year12 + 5 + 5
28720 tenki_year15 = tenki_year12 + 5 + 5 + 5
28730 tenki_year16 = tenki_year12 + 5 + 5 + 5 + 5
28740 tenki13 = tenki12 + 5
28750 tenki14 = tenki12 + 5 + 5
28760 tenki15 = tenki12 + 5 + 5 + 5
28770 tenki16 = tenki12 + 5 + 5 + 5 + 5
28780 color rgb(255,0,255)
28790 print tenki_year13;"年";tenki13;"歳"+chr$(13)
28800 print tenki_year14;"年";tenki14;"歳"+chr$(13)
28810 print tenki_year15;"年";tenki15;"歳"+chr$(13)
28820 print tenki_year16;"年";tenki16;"歳"+chr$(13)
28830 color rgb(0,0,0)
28840 print"コマンドを入れてください"+chr$(13)
28850 print"q+エンターキー:トップ画面"+chr$(13)
28860 Print"エンターキー:次へ行く"+chr$(13)
28870 print"コマンド:"
28880 key$=Input$(1)
28890 if key$=chr$(13) then goto 28160
28900 IF key$="q" then goto 5740
28910 '
28920 cls
28930 color rgb(255,255,255)
28940 print buffername$;"さんの人生の転機5"+chr$(13)
28950 color rgb(255,0,255)
28960 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
28970 tenki_year17=tenki_year16+5
28980 tenki_year18=tenki_year16+5+5
28990 tenki_year19=tenki_year16+5+5+5
29000 tenki_year20=tenki_year16+5+5+5+5
29010 tenki17=tenki16+5
29020 tenki18=tenki16+5+5
29030 tenki19=tenki16+5+5+5
29040 tenki20=tenki16+5+5+5+5
29050 print tenki_year17;"年";tenki17;"歳"+chr$(13)
29060 print tenki_year18;"年";tenki18;"歳"+chr$(13)
29070 print tenki_year19;"年";tenki19;"歳"+chr$(13)
29080 print tenki_year20;"年";tenki20;"歳"+chr$(13)
29090 color rgb(0,0,0)
29100 print"コマンドを入れてください"+chr$(13)
29110 print"トップに戻る:q+エンターキー"+chr$(13)
29120 print"最初から:エンターキー"+chr$(13)
29130 print"コマンド:"
29140 key$=Input$(1)
29150 if key$=chr$(13) then goto 27020
29160 if key$="q" then goto Main_Screen:
29170 '改名チェック 改名候補を入力
29180 'グラフィック　領域　ここから
29190 '左側 部分
29200 cls 3:
29210 line(0,0)-(1100,60),rgb(0,0,255),bf
29220 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
29230 line(0,60)-(1100,380),rgb(127,255,212),bf
29240 pen 5:line(0,57)-(1097,377),rgb(0,0,255),b
29250 line(0,380)-(790,470),rgb(0,255,0),bf
29260 pen 5:line(0,377)-(787,467),rgb(0,0,255),b
29270 '中央の縦の線 ここから
29280 'line(1100,0)-(1112,370),rgb(0,0,0),b
29290 '中央の縦の線 ここまで
29300 '右側 部分
29310 line(1103,0)-(1700,60),rgb(0,0,255),bf
29320 LINE(790,60)-(1700,470),rgb(127,255,212),bf
29330 'グラフィック 領域　ここまで
29340 '吉凶判定
29350 if buffer_K=0 then
29360 buffer_check$="○"
29370 else
29380 buffer_check$="☓"
29390 endif
29400 'Title 左側の文字
29410 'rgb(255,255,255):白
29420 color rgb(255,255,255)
29430 locate 1,0
29440 print"安斎流姓名判断 改名チェッカー"
29450 'Title 右側の文字
29460 locate size(2)-16,0
29470 print"改名候補リスト(3件まで)"
29480 '候補リストの名前部分 (右側)
29490 '1行目
29500 'locate 22,2
29510 locate size(2)-18,2
29520 color rgb(0,0,0)
29530 print "番号"
29540 'locate 26,2
29550 locate size(2)-14,2
29560 print"名前"
29570 'locate 32,2
29580 locate size(2)-8,2
29590 print"吉凶"
29600 'locate 36,2
29610 locate size(2)-4,2
29620 print"判定"
29630 '2行目
29640 select case kaimei_count
29650 case 0:
29660 'データー1件 の時
29670 kaimei_count = kaimei_count + 1
29680 buffer_Kaimei$(1,0,0,0)=str$(kaimei_count)
29690 buffer_Kaimei$(0,1,0,0)=name$
29700 buffer_Kaimei$(0,0,1,0)=buf_Kikkyo$
29710 buffer_Kaimei$(0,0,0,1)=buffer_check$
29720 'cls
29730 color rgb(255,0,255)
29740 'locate 23,3
29750 locate size(2)-17,3
29760 print buffer_Kaimei$(1,0,0,0)
29770 'locate 25,3
29780 locate size(2)-15,3
29790 print buffer_Kaimei$(0,1,0,0)
29800 'locate 32,3
29810 locate size(2)-8,3
29820 print buffer_Kaimei$(0,0,1,0)
29830 locate size(2)-3,3
29840 print buffer_Kaimei$(0,0,0,1)
29850 case 1:
29860 'データー2件の時
29870 color rgb(255,0,255)
29880 kaimei_count = kaimei_count + 1
29890 buffer_Kaimei$(2,0,0,0)=str$(kaimei_count)
29900 buffer_Kaimei$(0,2,0,0)=name$
29910 buffer_Kaimei$(0,0,2,0)=buf_Kikkyo$
29920 buffer_Kaimei$(0,0,0,2)=buffer_check$
29930 'cls
29940 '1行目
29950 'locate 23,3
29960 locate size(2)-17,3
29970 print buffer_Kaimei$(1,0,0,0)
29980 'locate 25,3
29990 locate size(2)-15,3
30000 print buffer_Kaimei$(0,1,0,0)
30010 'locate 32,3
30020 locate size(2)-8,3
30030 print buffer_Kaimei$(0,0,1,0)
30040 'locate 37,3
30050 locate size(2)-3,3
30060 print buffer_Kaimei$(0,0,0,1)
30070 '2行目
30080 'locate 23,4
30090 locate size(2)-17,4
30100 print buffer_Kaimei$(2,0,0,0)
30110 'locate 25,4
30120 locate size(2)-15,4
30130 print buffer_Kaimei$(0,2,0,0)
30140 'locate 32,4
30150 locate size(2)-8,4
30160 print buffer_Kaimei$(0,0,2,0)
30170 'locate 37,4
30180 locate size(2)-3,4
30190 print buffer_Kaimei$(0,0,0,2)
30200 case 2:
30210 'データー3件の時
30220 '1
30230 color rgb(255,0,255)
30240 kaimei_count=kaimei_count+1
30250 buffer_Kaimei$(3,0,0,0)=str$(kaimei_count)
30260 buffer_Kaimei$(0,3,0,0)=name$
30270 buffer_Kaimei$(0,0,3,0)=buf_Kikkyo$
30280 buffer_Kaimei$(0,0,0,3)=buffer_check$
30290 '2  1行目
30300 'locate 23,3
30310 locate size(2)-17,3
30320 print buffer_Kaimei$(1,0,0,0)
30330 'locate 25,3
30340 locate size(2)-15,3
30350 print buffer_Kaimei$(0,1,0,0)
30360 'locate 32,3
30370 locate size(2)-8,3
30380 print buffer_Kaimei$(0,0,1,0)
30390 'locate 37,3
30400 locate size(2)-3,3
30410 print buffer_Kaimei$(0,0,0,1)
30420 '3  2行目
30430 'locate 23,4
30440 locate size(2)-17,4
30450 print buffer_Kaimei$(2,0,0,0)
30460 'locate 25,4
30470 locate size(2)-15,4
30480 print buffer_Kaimei$(0,2,0,0)
30490 'locate 32,4
30500 locate size(2)-8,4
30510 print buffer_Kaimei$(0,0,2,0)
30520 'locate 37,4
30530 locate size(2)-3,4
30540 print buffer_Kaimei$(0,0,0,2)
30550 '4  3行目
30560 'locate 23,5
30570 locate size(2)-17,5
30580 print buffer_Kaimei$(3,0,0,0)
30590 'locate 25,5
30600 locate size(2)-15,5
30610 print  buffer_Kaimei$(0,3,0,0)
30620 'locate 32,5
30630 locate size(2)-8,5
30640 print buffer_Kaimei$(0,0,3,0)
30650 'locate 37,5
30660 locate size(2)-3,5
30670 print buffer_Kaimei$(0,0,0,3)
30680 case 3:
30690 'データー4件の時
30700 '1
30710 '2
30720 '3
30730 '4
30740 '5
30750 end select
30760 '説明部分　左側
30770 locate 0,2
30780 color rgb(255,0,255)
30790 print"思いついた候補の名前"
30800 locate 0,4
30810 print"(ニックネーム　or 会社名)を"
30820 locate 0,6
30830 print"10文字以内で入力してください"
30840 color rgb(0,0,0)
30850 locate 0,8
30860 if kaimei_count = 1 or kaimei_count = 2 then
30870 Input"名前:",kouho_name$
30880 name$=kouho_name$
30890 n=len(name$)
30900 if n > 10 then ui_msg"文字は10文字までです":name$ = "":kouho_name$ = "":goto 28440
30910 'else
30920 if n =< 10 then goto 23610
30930 endif
30940 if kaimei_count = 3 then
30950 Input"エンターキーを押してください",key$
30960 if key$ = "" then
30970 'データーを初期化して、トップ画面に行く
30980 '1.データーを初期化
30990 kaimei_count = 0
31000 for i=1 to 3
31010 buffer_Kaimei$(i,0,0,0) = ""
31020 buffer_Kaimei$(0,i,0,0) = ""
31030 buffer_Kaimei$(0,0,i,0) = ""
31040 buffer_Kaimei$(0,0,0,i) = ""
31050 next i
31060 '2.トップ画面に行く
31070 goto 5740
31080 endif
31090 endif
31100 '霊遺伝姓名学 ここから
31110 'グラフィック領域　ここから
31120 '性別入力
31130 Reiden_Top_Input_Sextype:
31140 cls 3
31150 'Line1
31160 line (0,0)-(850,60),rgb(0,0,255),bf
31170 line (0,0)-(847,57),rgb(0,255,0),b
31180 'Line 2
31190 line (0,63)-(853,537),rgb(127,255,212),bf
31200 line (0,60)-(850,540),rgb(0,0,0),b
31210 'Line 3
31220 line (0,540)-(850,630),rgb(0,255,0),bf
31230 line (0,543)-(853,633),rgb(0,0,255),b
31240 'グラフィック領域　ここまで
31250 '音声表示
31260 talk "霊遺伝生命学　性別の選択です。占う方の性別を入れてください"
31270 '性別変数:sex_type=0
31280 '文字色： 白
31290 color rgb(255,255,255):print"霊遺伝姓名学 性別の選択" + chr$(13)
31300 '文字色：赤
31310 color rgb(255,0,255)
31320 print"占う人の性別の番号を入れてください" + chr$(13)
31330 print"1.女 性" + chr$(13)
31340 print"2.男 性" + chr$(13)
31350 print"3.前の画面に戻る" + chr$(13)
31360 print"4.終 了" + chr$(13)
31370 color rgb(0,0,0)
31380 Input"番号:",No
31390 '2:男性の場合 名前を入力
31400 '男性の性別:sex_type=2
31410 if No=2 then sex_type=2:goto ReiIden_Input_male:
31420 '1:女性の場合 既婚の場合、旧姓で入力
31430 '女性の性別:sex_type=1
31440 if No=1 then sex_type=1:goto ReiIden_Input_female:
31450 '3:終了処理
31460 if No=4 then cls 3:end
31470 if No=3 then goto Main_Screen:
31480 if No >4 then goto Reiden_Top_Input_Sextype:
31490 '１．男性の場合の名前入力
31500 '描画領域　ここから
31510 ReiIden_Input_male:
31520 cls 3
31530 'Line 1 Title
31540 line (0,0)-(850,60),rgb(0,0,255),bf
31550 line (0,0)-(850,57),rgb(0,255,0),b
31560 'Line2 Input name
31570 line (0,60)-(850,300),rgb(0,255,0),bf
31580 line (0,60)-(850,303),rgb(0,0,255),b
31590 '描画領域 ここまで
31600 '文字色：白
31610 color rgb(255,255,255)
31620 print "霊遺伝姓名学 名前の姓入力（男性）" + chr$(13)
31630 '文字色：黒
31640 color rgb(0,0,0)
31650 print "名前の姓の部分を入れてください" + chr$(13)
31660 Input"名前(姓の部分):",name1$
31670 '名の入力部分
31680 cls
31690 color rgb(255,255,255)
31700 print "霊遺伝姓名学 名前の名入力(男性)" + chr$(13)
31710 color rgb(0,0,0)
31720 print "名前の名の部分を入れてください"+chr$(13)
31730 Input"名前(名の部分):",name2$:goto check:
31740 '2.女性の場合　既婚か未婚か確認する
31750 '2-2-1女性の姓の入力
31760 'グラフィック領域　ここから
31770 ReiIden_Input_female:
31780 cls 3
31790 'Line1 Title
31800 line (0,0)-(850,60),rgb(0,0,255),bf
31810 line (0,0)-(850,57),rgb(0,255,0),b
31820 'Line 2 入力欄
31830 line (0,60)-(850,360),rgb(0,255,0),bf
31840 line (0,60)-(850,357),rgb(0,0,255),b
31850 'Line 2 入力欄(名前入力)
31860 'グラフィック領域 ここまで
31870 cls
31880 color rgb(255,255,255)
31890 print "霊遺伝姓名学 名前の姓入力(女性）"+chr$(13)
31900 color rgb(255,0,0)
31910 print"既婚者の方は、旧姓を入れてください"+chr$(13)
31920 color rgb(0,0,0)
31930 print "名前の姓の部分を入れてください"+chr$(13)
31940 Input "名前(姓の部分):",name3$
31950 '2-2-2女性の名の入力
31960 cls
31970 color rgb(255,255,255)
31980 print "霊遺伝姓名学 名前の名の部分(女性)"+chr$(13)
31990 color rgb(0,0,0)
32000 print "名前の名の部分を入れてください"+chr$(13)
32010 Input "名前(名の部分):",name4$
32020 '計算領域　ここから
32030 check:
32040 '苗字の画数:buffer_name1_count
32050 'name1$,name2$:男性
32060 if sex_type = 1 then
32070 'sex_type=1 :女性のとき
32080 buf_male_female_name1$=name3$
32090 buf_male_female_name2$=name4$
32100 endif
32110 if sex_type = 2 then
32120 'sex_type=2 :男性のとき
32130 buf_male_female_name1$=name1$
32140 buf_male_female_name2$=name2$
32150 endif
32160 buffer_name1_count=len(buf_male_female_name1$)
32170 buffer_name2_count=len(buf_male_female_name2$)
32180 select case buffer_name1_count
32190 'AとBを求める
32200 case 1:
32210 '1.苗字の画数が1つのとき
32220 'A:霊数 1
32230 A=1
32240 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
32250 B = char_count(buf_name1$)
32260 case 2:
32270 '2.苗字の画数が2つのとき
32280 '2-1:苗字の1文字目:buf_name1$
32290 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
32300 '2-2:苗字の2文字目:buf_name2$
32310 buf_name2$ = Mid$(buf_male_female_name1$,2,1)
32320 A=char_count(buf_name1$)
32330 B=char_count(buf_name2$)
32340 'B=char_count(buf_name2$)
32350 case 3:
32360 '3.苗字の画数が3つの時
32370 '3-1:苗字の1文字目:buf_name1$
32380 buf_name1$=Mid$(buf_male_female_name1$,1,1)
32390 '3-2:苗字が3つのときの2つ目の文字をもとめる
32400 '3-2:苗字の2つ目:buf_name2$
32410 buf_name2$=Mid$(buf_male_female_name1$,2,1)
32420 '3-3:苗字が3つのときの3文字目
32430 '3-3:苗字の3文字目buf_name3$(name1$,3,1)
32440 buf_name3$ = Mid$(buf_male_female_name1$,3,1)
32450 if buf_name2$="々" then
32460 A = char_count(buf_name1$) * 2
32470 B = char_count(buf_name3$)
32480 else
32490 A = char_count(buf_name1$) + char_count(buf_name2$)
32500 B = char_count(buf_name3$)
32510 endif
32520 '姓が4文字
32530 case 4:
32540 buf_name1$=Mid$(buf_male_female_name1$,1,1)
32550 buf_name2$=Mid$(buf_male_female_name1$,2,1)
32560 buf_name3$=Mid$(buf_male_female_name1$,3,1)
32570 buf_name4$=Mid$(buf_male_female_name1$,4,1)
32580 A=char_count(buf_name1$)+char_count(buf_name2$)+char_count(buf_name3$)
32590 B=char_count(buf_name4$)
32600 case else:
32610 end select
32620 '2.C,Dを求める
32630 select case buffer_name2_count
32640 case 1:
32650 '名が1文字の時
32660 'CとDを求める
32670 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
32680 C = char_count(buff_name1$)
32690 'D=1:霊数
32700 D = 1
32710 case 2:
32720 '名が2文字の時
32730 'CとDを求める
32740 '名の1文字目:buff_name1$
32750 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
32760 '名の2文字目:buff_name2$
32770 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
32780 C = char_count(buff_name1$)
32790 D = char_count(buff_name2$)
32800 case 3:
32810 '名が3文字の時
32820 'CとDを求める
32830 '名の1文字目:buff_name1$
32840 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
32850 '名の2文字目:buff_name2$
32860 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
32870 if buff_name2$ = "々" then
32880 buff_name2$ = buff_name1$
32890 endif
32900 '名の3文字目:buff_name3$
32910 buff_name3$ = Mid$(buf_male_female_name2$,3,1)
32920 C = char_count(buff_name1$)
32930 D = char_count(buff_name2$) + char_count(buff_name3$)
32940 end select
32950 '1.先祖運を求める
32960 buffer_Senzo = A + B
32970 '2.性格運を求める
32980 buffer_Seikaku = B + C
32990 '3.愛情運を求める
33000 buffer_Aijyou = C + D
33010 '4.行動運を求める
33020 buffer_Kouzou = A + D
33030 'if buffer_Kouzou=10 then
33040 'endif
33050 '1.生数を求める
33060 func buf_Seisu(buffer)
33070 if buffer < 10 then
33080 seisu=buffer
33090 endif
33100 if buffer = 10 or buffer = 0 or buffer=20 or buffer=30 then
33110 seisu = 0
33120 endif
33130 if buffer > 10 then
33140 if buffer=20 then
33150 seisu = 0
33160 else
33170 n = buffer - (fix(buffer / 10) * 10)
33180 seisu = n
33190 endif
33200 endif
33210 endfunc seisu
33220 '和数を求める
33230 func buf_Wasu(buffer)
33240 buf_wasu = 0:wasu = 0
33250 if buffer < 10 then
33260 '
33270 wasu = buffer:goto wasu:
33280 else
33290 if buffer = 10 then
33300 wasu = 1:goto wasu:
33310 else
33320 if buffer > 10  then
33330 if buffer=19 or buffer=28 or buffer=37 then
33340 wasu=1:goto wasu:
33350 else
33360 if buffer = 29 then
33370 wasu=2:goto wasu:
33380 'endif
33390 else
33400 a = fix(buffer / 10)
33410 b = buffer - a * 10
33420 c = a + b
33430 if c = 19 or c=28 then
33440 wasu=1
33450 '
33460 else
33470 wasu=c
33480 endif
33490 endif
33500 endif
33510 endif
33520 endif
33530 if c < 10 then
33540 wasu = c
33550 'endif
33560 endif
33570 else
33580 if buffer=19 or buffer=28 then
33590 wasu = 1
33600 endif
33610 endif
33620 wasu:
33630 buf_wasu=wasu
33640 endfunc buf_wasu
33650 func buf_kyoudai$(buf_sex_type,buf_Sa$)
33660 select case buf_sex_type
33670 '1.女性の場合
33680 case 1:
33690 if (buf_Sa$ = "連続") then
33700 buffer_kyoudai$="長女"
33710 endif
33720 if (buf_Sa$ = "1差") then
33730 buffer_kyoudai$="次女"
33740 endif
33750 if (buf_Sa$ = "2差") then
33760 buffer_kyoudai$="三女"
33770 endif
33780 if (buf_Sa$ = "3差") then
33790 buffer_kyoudai$="四女"
33800 endif
33810 if (buf_Sa$ = "4差") then
33820 buffer_kyoudai$="五女"
33830 endif
33840 '男性の場合
33850 case 2:
33860 if (buf_Sa$ = "連続") then
33870 buffer_kyoudai$="長男"
33880 endif
33890 if (buf_Sa$ = "1差") then
33900 buffer_kyoudai$="次男"
33910 endif
33920 if (buf_Sa$ = "2差") then
33930 buffer_kyoudai$="三男"
33940 endif
33950 if (buf_Sa$ = "3差") then
33960 buffer_kyoudai$="四男"
33970 endif
33980 if (buf_Sa$ = "4差") then
33990 buffer_kyoudai$="五男"
34000 endif
34010 case else:
34020 end select
34030 kyoudai$=buffer_kyoudai$
34040 endfunc kyoudai$
34050 '1.タテ型
34060 '1.同じ数字が2組ある場合
34070 func Tate_gata$()
34080 if Senzo_wasu = Seikaku_wasu  then
34090 if Aijyou_wasu - Seikaku_wasu > 1 then
34100 Spirit_type$="タテ型"
34110 Sa_count = Aijyou_wasu - Seikaku_wasu - 1
34120 Sa$ = str$(Sa_count) + "差"
34130 else
34140 Spirit_type$="タテ型"
34150 Sa$="連続"
34160 endif
34170 endif
34180 endfunc
34190 '2. ナナメ型
34200 '同じ数字が2組ある場合
34210 func Naname_gata$()
34220 if  Senzo_wasu = Koudou_wasu And  Seikaku_wasu = Aijyou_wasu then
34230 Spirit_type$="斜め型"
34240 endif
34250 if Seikaku_wasu - Senzo_wasu > 1 then
34260 Sa_count = Seikaku_wasu  -  Senzo_wasu  -  1
34270 Sa$=str$(Sa_count)+" 差"
34280 else
34290 Sa$="連続"
34300 endif
34310 endfunc
34320 '3.表十字型
34330 '同じ数字が2組ある場合
34340 func Omote_jyuji_gata1$()
34350 if Senzo_wasu = Aijyou_wasu  And  Kouzou_wasu = Seikaku_wasu then
34360 Spirit_type$ = "表十字型"
34370 endif
34380 if Senzo _wasu - Seikaku_wasu > 1 then
34390 Sa_count = Senzo_wasu - Seikaku_wasu - 1
34400 else
34410 if Senzo_wasu  -  Seikaku_wasu = 1  then
34420 Sa$="連続"
34430 endif
34440 endif
34450 endfunc
34460 Spirit_type$="No data"
34470 '1.先祖運　和数
34480 Senzo_wasu = buf_Wasu(buffer_Senzo)
34490 '2.先祖運 生数
34500 Senzo_seisu = buf_Seisu(buffer_Senzo)
34510 '3.性格運 和数
34520 Seikaku_wasu = buf_Wasu(buffer_Seikaku)
34530 '4.性格運 生数
34540 Seikaku_seisu = buf_Seisu(buffer_Seikaku)
34550 '5.愛情運 和数
34560 Aijyou_wasu = buf_Wasu(buffer_Aijyou)
34570 '6.愛情運 生数
34580 Aijyou_seisu = buf_Seisu(buffer_Aijyou)
34590 '7.行動運 和数
34600 Koudou_wasu = buf_Wasu(buffer_Kouzou)
34610 '8.行動運 生数
34620 Koudou_seisu = buf_Seisu(buffer_Kouzou)
34630 '計算領域 ここまで
34640 '描画領域　ここから
34650 Result_ReiIden1:
34660 cls 3
34670 'Title
34680 line (0,0)-(850,60),rgb(0,0,255),bf
34690 pen 3:line (0,0)-(850,57),rgb(255,255,255),b
34700 'name
34710 line (0,60)-(850,165),rgb(0,255,0),bf
34720 pen 5:line (0,63)-(850,162),rgb(255,0,255),b
34730 '生数、和数
34740 line (0,165)-(850,550),rgb(125,255,212),bf
34750 pen 3:line(0,168)-(850,547),rgb(0,0,255),b
34760 'プッシュメッセージ
34770 line (0,550)-(850,650),rgb(0,255,0),bf
34780 pen 5:line (0,553)-(850,653),rgb(0,0,0),b
34790 '描画領域　ここまで
34800 color rgb(255,255,255)
34810 print "霊遺伝姓名学　診断結果１/2"+chr$(13)
34820 color rgb(0,0,0)
34830 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
34840 color rgb(255,0,255)
34850 print "1.先祖運";" ";"和数:";Senzo_wasu;"生数:";Senzo_seisu;chr$(13)
34860 print "2.性格運";" ";"和数:";Seikaku_wasu;"生数:";Seikaku_seisu;" ";chr$(13)
34870 print "3.愛情運";" ";"和数:";Aijyou_wasu;"生数:";Aijyou_seisu;chr$(13)
34880 print "4.行動運";" ";"和数:";Koudou_wasu;"生数:";Koudou_seisu;chr$(13)
34890 talk "診断結果１です、あなたのわすうとせいすうです。"
34900 color rgb(0,0,0)
34910 print"エンターキーを押してください"
34920 key$=Input$(1)
34930 if key$=chr$(13) then goto Result_ReiIden2:
34940 '描画領域　ここから
34950 Result_ReiIden2:
34960 cls 3
34970 'Title Color:青
34980 line (0,0)-(860,60),rgb(0,0,255),bf
34990 'Title 枠
35000 line (0,0)-(860,57),rgb(255,0,255),b
35010 'Message
35020 line (0,60)-(860,650),rgb(127,255,212),bf
35030 'Message 枠
35040 Pen 5:line (0,60)-(860,653),rgb(0,0,255),b
35050 '
35060 '描画領域　ここまで
35070 color rgb(255,255,255)
35080 print "霊遺伝姓名 診断結果2/2" + chr$(13)
35090 '十二運の基礎運
35100 '1.四大主流型
35110 'パターン１ 同じ数字の場合
35120 '1.オール同数化 全部同じ
35130 '1-if
35140 sa_count=0
35150 if (Senzo_wasu = Aijyou_wasu) And (Senzo_wasu = Seikaku_wasu ) And (Seikaku_wasu = Aijyou_wasu ) And (Aijyou_wasu = Koudou_wasu ) And (Koudou_wasu = Senzo_wasu ) And (Koudou_wasu = Seikaku_wasu ) then
35160 Spirit_type$ = "オール同数化"
35170 Sa$="3差"
35180 else
35190 'パターン１ 同じ数字2つの場合
35200 '2.タテ型
35210 '数字が２つ同じ
35220 '2-if
35230 for i=0 to 3
35240 select case i
35250 case 0:
35260 buf_wasu(0)=Senzo_wasu
35270 i = i + 1
35280 case 1:
35290 buf_wasu(1)=Seikaku_wasu
35300 i = i + 1
35310 case 2:
35320 buf_wasu(2)=Aijyou_wasu
35330 i = i + 1
35340 case 3:
35350 buf_wasu(3)=Koudou_wasu
35360 i = i + 1
35370 end select
35380 next i
35390 if buf_wasu(0) > buf_wasu(1) then
35400 a=swap(buf_wasu(0),buf_wasu(1))
35410 endif
35420 if buf_wasu(1) > buf_wasu(2) then
35430 b=swap(buf_wasu(1),buf_wasu(2))
35440 endif
35450 if buf_wasu(2) > buf_wasu(3) then
35460 c=swap(buf_wasu(2),buf_wasu(3))
35470 endif
35480 if buf_wasu(3) > buf_wasu(4) then
35490 d=swap(buf_wasu(3),buf_wasu(4))
35500 endif
35510 if buf_wasu(0) > buf_wasu(4) then
35520 e=swap(buf_wasu(0),buf_wasu(4))
35530 endif
35540 '0:先祖和数
35550 '1:性格和数
35560 '2:愛情和数
35570 '3:行動和数
35580 '(先祖和数＝性格和数) And (性格和数=行動和数)　and abs(愛情和数-性格和数)=1
35590 if ((buf_wasu[0] = buf_wasu[1]) And (buf_wasu[1] = buf_wasu[3]) and abs(buf_wasu[2]-buf_wasu[1])=1) then
35600 Spirit_type$ = "タテ型"
35610 '2.タテ型　1
35620 'abs(行動和数-先祖和数)=1
35630 if abs(buf_wasu[3] -buf_wasu[0]) = 1 then
35640 Sa$="連続"
35650 else
35660 '2.タテ型　2
35670 'abs(先祖和数-行動和数) > 1
35680 if abs(buf_wasu[0] - buf_wasu[3]) > 1 then
35690 '差=行動和数-先祖和数
35700 Sa_count =abs(buf_wasu[3]- buf_wasu[0] - 1)
35710 Sa$=str$(Sa_count) + "差"
35720 endif
35730 endif
35740 endif
35750 endif
35760 '2.タテ型　3
35770 '1.type
35780 'Spirit_type$ = "四大主流型 タテ型"
35790 '3.斜め型
35800 '0:先祖和数,buf_wasu[0]
35810 '1:性格和数,buf_wasu[1]
35820 '2:愛情和数,buf_wasu[2]
35830 '3:行動和数,buf_wasu[3]
35840 '数字が２つ同じ
35850 '先祖=愛情 先祖-性格=1、（先祖＝愛情）、行動で連数
35860 if (buf_wasu[0] = buf_wasu[2]) and ((buf_wasu[0] - buf_wasu[1] = 1) and (buf_wasu[2]-buf_wasu[1]=1) and (buf_wasu[3]-buf_wasu[2]=1) and (buf_wasu[3]-buf_wasu[1]=2)) then
35870 Sa$="連続"
35880 else
35890 '3-if
35900 '先祖＝行動　性格運=愛情運
35910 if ((buf_wasu[0] - buf_wasu[3]= 0) And (buf_wasu[1] - buf_wasu[2] = 0)) then
35920 Spirit_type$="斜め型"
35930 '3.斜め型 1
35940 if abs(Senzo_wasu-Seikaku_wasu)=1 or (Senzo_wasu = 1 and Seikaku_wasu = 9) then
35950 Sa$ = "連続"
35960 else
35970 if (Seikaku_wasu - Koudou_wasu) < 1 then
35980 Sa_count = 9 - abs(Senzo_wasu - Seikaku_wasu - 1) + 2
35990 endif
36000 endif
36010 if (Senzo_wasu = 2 And Seikaku_wasu = 8) then
36020 Sa_count = 3
36030 Sa$ = str$(Sa_count - 1) + "差"
36040 else
36050 if (abs(Senzo_wasu - Seikaku_wasu) > 1) then
36060 Sa_count = Senzo_wasu - Seikaku_wasu
36070 Sa$ = str$(Sa_count-1) + "差"
36080 endif
36090 endif
36100 endif
36110 'Spirit_type$ = str$(Sa_count) + "差"
36120 'endif
36130 'endif
36140 '3-if
36150 endif
36160 '3.斜め型 2
36170 '3.斜め型 3
36180 '数字が２つ同じ
36190 '表十字型
36200 '先祖運＝愛情運　　行動運＝性格運
36210 if (Senzo_wasu = Aijyou_wasu) And (Koudou_wasu = Seikaku_wasu) then
36220 Spirit_type$="表十字型"
36230 Sa_coun = Senzo_wasu - Seikaku_wasu
36240 if Sa_count > 1 then
36250 Sa$ = str$(Sa_count) + "差"
36260 else
36270 if Sa_count = 1 then
36280 Sa$ = "連続"
36290 endif
36300 endif
36310 endif
36320 'endif
36330 '数字が２つ同じ
36340 '表十字型(横型)
36350 if Koudou_wasu = Seikaku_wasu And abs(Aijyou_wasu - Senzo_wasu = 1) then
36360 Spirit_type$="表十字型(ヨコ型)"
36370 'Sa$を後で書く
36380 endif
36390 '数字が２つ同じ
36400 '表十字型(上下型)
36410 if Senzo_wasu=Aijyou_wasu And abs(Seikaku_wasu-Koudou_wasu = 1) then
36420 Spirit_type$="表十字型(上下型)"
36430 'Sa$を後で書く
36440 endif
36450 'ヨコ型
36460 if Koudou_wasu = Seikaku_wasu then
36470 n=abs(Senzo_wasu - Seikaku_wasu)
36480 n2 = abs(Aijyou_wasu-Seikaku_wasu)
36490 Spirit_type$="ヨコ型"
36500 if (Senzo_wasu - Seikaku_wasu = 1 And Seikaku_wasu-Aijyou_wasu = 1) then
36510 Sa$="連続"
36520 endif
36530 if n = n2 then
36540 if n > 1 then
36550 Sa_count = n - 1
36560 Sa$=str$(Sa_count)+"差"
36570 else
36580 Sa_Count = abs(n - n2)
36590 if Sa_Count > 1 then
36600 Sa$ = str$(Sa_Count) + "差"
36610 endif
36620 endif
36630 endif
36640 endif
36650 '上下型
36660 '同じ数字が1組みある場合
36670 if (Senzo_wasu = Aijyou_wasu) And (abs(Koudou_wasu - Seikaku_wasu)=2) then
36680 Spirit_type$ = "上下型"
36690 if (Koudou_wasu - Seikaku_wasu = 2 And Aijyou_wasu - Senzo_wasu = 0) then
36700 'n = abs(Koudou_wasu-Senzo_wasu)
36710 'n2= abs(Seikaku_wasu-Senzo_wasu)
36720 'buf=min(n,n2)
36730 'Sa$=str$(buf - 1) + "差"
36740 Sa$="連続"
36750 endif
36760 endif
36770 '中広（なかこう)型(斜め系)
36780 '連続した数字が2組みある場合
36790 'if (Senzo_wasu - Koudou_wasu = 1 And Seikaku_wasu - Aijyou_wasu = 1 And (Koudou_wasu <> Seikaku_wasu) And (Senzo_wasu <> Seikaku_wasu) And (Senzo_wasu <> Aijyou_wasu) And (Koudou_wasu <> Aijyou_wasu)) then
36800 'n=Min(Senzo_wasu ,Koudou_wasu)
36810 'n2=Max(Seikaku_wasu , Aijyou_wasu)
36820 'Spirit_type$="中広型（斜め系）"
36830 'Sa_count = n - n2 -1
36840 'if Sa_count > 1 then
36850 'Sa$ = str$(Sa_count-1) + "差"
36860 'else
36870 'if Sa_count = 1 then
36880 'Sa$="連続"
36890 'endif
36900 'endif
36910 'endif
36920 '中広（なかこう)型(表十字型)
36930 '連続した数字が2組みある場合
36940 if (Koudou_wasu - Seikaku_wasu = 1 And Aijyou_wasu - Senzo_wasu = 1) then
36950 Spirit_type$="中広（なかこう)型(表十字型)"
36960 n=Min(Koudou_wasu , Seikaku_wasu)
36970 n2=Max(Aijyou_wasu , Senzo_wasu)
36980 Sa_count = n - n2
36990 if Sa_count > 1 then
37000 Sa$ = str$(Sa_count - 1) + "差"
37010 else
37020 if Sa_count = 1 then
37030 Sa$ = "連続"
37040 endif
37050 endif
37060 endif
37070 '中一差（タテ系)
37080 '連続した数字が2組みある場合
37090 if (abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) then
37100 'Spirit_type$="中一差（タテ系)"
37110 if ((Aijyou_wasu = 9 And Koudou_wasu = 1) or (Aijyou_wasu = 1 And Koudou_wasu = 9)) then
37120 n = Max(Koudou_wasu,Aijyou_wasu)
37130 n2 = Max(Senzo_wasu,Seikaku_wasu)
37140 else
37150 n = Max(Koudou_wasu,Aijyou_wasu)
37160 n2 = Min(Senzo_wasu,Seikaku_wasu)
37170 endif
37180 Sa_count2 = abs(n2 - n) - 1
37190 if Sa_count2 >= 0 then
37200 select case Sa_count2
37210 case 1:
37220 '中一差（タテ系)
37230 Sa$ = "連続"
37240 Spirit_type$="中一差型（タテ系)*"
37250 case 2:
37260 '中二差型（タテ系)
37270 Sa$ = "1差"
37280 Spirit_type$="中二差型（タテ系)"
37290 case 3:
37300 '中広（なかこう)型(タテ系)
37310 Sa$ = "2差"
37320 Spirit_type$="中三差型（タテ系)"
37330 case 4:
37340 Sa$ = "3差"
37350 Spirit_type$="中広型(タテ系)"
37360 case  else:
37370 cls 3:print"例外に入りました"
37380 end select
37390 '
37400 else
37410 cls 3:print"例外に入りました"
37420 endif
37430 endif
37440 'endif
37450 '中一差（斜め系)
37460 '連続した数字が2組みある場合
37470 if (abs(Koudou_wasu - Senzo_wasu) = 1 and abs(Aijyou_wasu - Seikaku_wasu) = 1) then
37480 n = Min(Koudou_wasu,Senzo_wasu)
37490 n2 = Max(Aijyou_wasu,Seikaku_wasu)
37500 Sa_count = n - n2 - 1
37510 select case Sa_count
37520 case 1:
37530 '中一差（斜め系)
37540 '連続した数字が2組みある場合
37550 Sa$="1差"
37560 Spirit_type$="中一差（斜め系)"
37570 case 2:
37580 '中二差（斜め系)
37590 '連続した数字が2組みある場合
37600 Sa$="2差"
37610 Spirit_type$="中二差（斜め系)"
37620 case 3:
37630 Sa$="3差"
37640 Spirit_type$="中広型（斜め系）"
37650 case else:
37660 end select
37670 endif
37680 '順序型(タテ、上下系)
37690 '数字が４つ連続してる場合
37700 if (abs(Seikaku_wasu - Senzo_wasu) = 1 And abs(Senzo_wasu-Aijyou_wasu)=1 And abs(Aijyou_wasu - Koudou_wasu) = 1) then
37710 Spirit_type$="順序型(タテ、上下系)"
37720 Sa$="連続"
37730 endif
37740 '中順序型(ヨコ系)
37750 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And Senzo_wasu<>Aijyou_wasu) then
37760 if ((Senzo_wasu-Seikaku_wasu=2) And (Koudou_wasu - Aijyou_wasu=2)) then
37770 Spirit_type$="中順序型(ヨコ系)"
37780 Sa$="1差"
37790 else
37800 '順序型(タテ、ヨコ系)
37810 '数字が４つ連続してる場合
37820 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) or (Seikaku_wasu - Koudou_wasu = 1 And Koudou_wasu - Aijyou_wasu = 1 And Senzo_wasu=1 And Seikaku_wasu = 9) then
37830 Spirit_type$="順序型(タテ、ヨコ系)"
37840 Sa$="連続"
37850 endif
37860 endif
37870 endif
37880 '中順序型(上下系)
37890 if ((abs(Aijyou_wasu - Senzo_wasu) = 1) And (Koudou_wasu <> Seikaku_wasu) ) then
37900 n=Max(Senzo_wasu,Aijyou_wasu)
37910 n2=Min(Koudou_wasu,Seikaku_wasu)
37920 Sa_count = n2 - n
37930 if Sa_count > 1 then
37940 Spirit_type$="中順序型(上下系)"
37950 Sa$ = Str$(Sa_count) + "差"
37960 else
37970 '順序型(斜め、上下系)
37980 '数字が４つ連続してる場合
37990 if ((abs(Koudou_wasu - Senzo_wasu) = 1) And (abs(Senzo_wasu - Aijyou_wasu) = 1) And (abs(Aijyou_wasu - Seikaku_wasu) = 1)) then
38000 Spirit_type$ = "順序型(斜め、上下系)"
38010 Sa$="連続"
38020 endif
38030 endif
38040 endif
38050 '順序型(斜め、ヨコ系)
38060 '数字が４つ連続してる場合
38070 if (abs(Senzo_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Seikaku_wasu) = 1 And abs(Seikaku_wasu - Aijyou_wasu) = 1 and abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Senzo_wasu - Aijyou_wasu) = 3 ) then
38080 Spirit_type$="順序型(斜め、ヨコ系)"
38090 Sa$="連続"
38100 endif
38110 '隔離型(タテ、上下系)
38120 '数字が1つおきに飛んでる場合
38130 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And ((abs(Aijyou_wasu-Senzo_wasu) = 2) or (Aijyou_wasu = 8 And Senzo_wasu = 1))) then
38140 Spirit_type$="隔離型(タテ、上下系)"
38150 Sa$="1差"
38160 endif
38170 '隔離型(タテ、ヨコ系)
38180 '数字が1つおきに飛んでる場合
38190 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2) then
38200 Spirit_type$="隔離型(タテ、ヨコ系)"
38210 Sa$="1差"
38220 endif
38230 '隔離型(斜め、上下系)
38240 '数字が1つおきに飛んでる場合
38250 if (abs(Koudou_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2 And ((abs(Senzo_wasu)=2 And Aijyou_wasu = 9) or abs(Senzo_wasu-Aijyou_wasu)=2)) then
38260 Spirit_type$="隔離型(斜め、上下系)"
38270 Sa$="1差"
38280 endif
38290 '隔離型(斜め、ヨコ系)
38300 '数字が1つおきに飛んでる場合
38310 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2 And (abs(Seikaku_wasu - Aijyou_wasu = 2))) then
38320 Spirit_type$="隔離型(斜め、ヨコ系)"
38330 Sa$="1差"
38340 endif
38350 '隔離型(タテ系)
38360 '数字が2つおきに飛んでる場合
38370 if (abs(Senzo_wasu - Seikaku_wasu) = 2 And abs(Aijyou_wasu - Kouzou_wasu) = 2) then
38380 Spirit_type$="隔離型(タテ系)"
38390 Sa$="1差"
38400 endif
38410 '隔離型(斜め系)
38420 '数字が2つおきに飛んでる場合
38430 if (abs(Senzo_wasu - Koudou_wasu) = 2 And abs(Aijyou_wasu - Seikaku_wasu) = 2) then
38440 Spirit_type$="隔離型(斜め系)"
38450 Sa$="1差"
38460 endif
38470 '隔離型(上下、ヨコ系)
38480 '数字が2つおきに飛んでる場合
38490 if ((abs(Senzo_wasu - Aijyou_wasu) = 2 or (Senzo_wasu=1 And Aijyou_wasu=9)) And  abs(Seikaku_wasu -Koudou_wasu) = 2) then
38500 Spirit_type$="隔離型(上下、ヨコ系)"
38510 Sa$="1差"
38520 'endif
38530 endif
38540 'ここに移動
38550 Kyoudai$ = buf_kyoudai$(sex_type,Sa$)
38560 color rgb(255,0,255)
38570 print "●十二の基礎運" + chr$(13)
38580 print Spirit_type$ + Sa$;chr$(13)
38590 print "きょうだい：";Kyoudai$ + chr$(13)
38600 talk "あなたのきょうだいは、"+Kyoudai$+"です"
38610 color rgb(0,0,0)
38620 print"前の画面:ｂキー"+chr$(13)
38630 print"保存して、もう一度やる：スペースキー"+chr$(13)
38640 print"終了:エンターキー"+chr$(13)
38650 key$ = Input$(1)
38660 if key$ = chr$(13) then
38670 goto Main_Screen:
38680 else
38690 '保存して スペースキーでもう一度占う
38700 if key$ = " " then
38710 goto Save_Data1:
38720 else
38730 if key$="b" then
38740 goto Result_ReiIden1:
38750 endif
38760 endif
38770 endif
38780 'ファイル保存 占いデーターを一時保存
38790 Save_Data1:
38800 'Max40件までで保存できないようにする
38810 '1. 登録件数が４０件以下かを調査
38820 open "config/Parsonal_data/parsonal_data.dat" for input as #2
38830 while eof(2)=0
38840 line input #2,lines$:bN = bN + 1
38850 wend
38860 close #2
38870 '2. 41 件目なら保存しない処理
38880 if bN > Max then
38890 '41件以上ならとぶ
38900 goto Over_40count:
38910 else
38920 'count=0
38930 buf_male_female_name$ = buf_male_female_name1$ + buf_male_female_name2$
38940 open "config/Parsonal_data/parsonal_data.dat" for input as #1
38950 for i=0 to (bN * 10) - 1
38960 input #1,buflines$(i)
38970 Next i
38980 close #1
38990 for i=0 to (bN*10)-1 step 10
39000 if right$(buflines$(i),len(buf_male_female_name$)) = buf_male_female_name$ then
39010 acount = acount + 1
39020 endif
39030 next i
39040 '3. 40件以下なら以下を実行
39050 '同じ名前が無かったら保存する
39060 if acount = 0 then
39070 open "Config/Parsonal_data/parsonal_data.dat" for append as #3
39080 'print#3は末尾は、セミコロンはいらない
39090 '末尾にセミコロンをつけると改行しない
39100 print #3,"名前:" + buf_male_female_name$;",性別:"+str$(sex_type);",先祖和数:"+str$(Senzo_wasu);",先祖生数:"+str$(Senzo_seisu);",性格和数:"+str$(Seikaku_wasu);",性格生数:"+str$(Seikaku_seisu);",愛情和数:"+str$(Aijyou_wasu);",愛情生数:"+str$(Aijyou_seisu);",行動和数:"+str$(Koudou_wasu);",行動生数:"+str$(Koudou_seisu)
39110 ui_msg "保存しました"
39120 close #3
39130 '性別の選択に飛ぶ
39140 goto Reiden_Top_Input_Sextype:
39150 else
39160 '同じ名前があったら保存しない
39170 buf_overcount$="同じ名前があります。保存できません"
39180 ui_text buf_overcount$
39190 '性別の選択に飛ぶ
39200 goto Reiden_Top_Input_Sextype:
39210 endif
39220 endif
39230 '個人データーリスト  *parsonal_data
39240 Parsonal_data_top:
39250 cls 3
39260 line(0,0)-(800,60),rgb(0,0,255),bf
39270 pen 5:line(3,3)-(797,57),rgb(0,255,0),b
39280 line (0,60)-(800,440),rgb(127,255,212),bf
39290 pen 5:line (0, 63)-(797,443),rgb(0,0,255),b
39300 line (0,440)-(800,670),rgb(0,255,0),bf
39310 pen 5:line (0,443)-(797,673),rgb(0,0,0),b
39320 color rgb(255,255,255)
39330 print"◎個人データーリスト トップ画面" + chr$(13)
39340 color rgb(255,0,255)
39350 print "1.霊遺伝姓名学個人データー" + chr$(13)
39360 print "2.安斎流姓名判断個人データー" + chr$(13)
39370 print "3.九星姓名判断個人データー"+chr$(13)
39380 print "4.メインメニューへ行く"+chr$(13)
39390 color rgb(0,0,0)
39400 print "番号を入れてください"+chr$(13)
39410 Input "番号:",No
39420 if No = 1 then goto Parsonal_data_top_ReiIden:
39430 if No = 2 then goto Parsonal_data_top_Anzai:
39440 if No = 4 then goto Main_Screen:
39450 if No = 3 then goto Parsonal_data_top_Kyusei:
39460 if No > 4 then talk"数字を入れ直してください":ui_msg"入力値が範囲外です":goto Parsonal_data_top:
39470 '1.霊遺伝姓名判断　トップ画面
39480 Parsonal_data_top_ReiIden:
39490 cls 3
39500 line(0,0)-(850,60),rgb(0,0,255),bf
39510 pen 5:line(3,3)-(847,57),rgb(0,255,0),b
39520 line (0,60)-(850,540),rgb(127,255,212),bf
39530 pen 5:line (0,63)-(847,537),rgb(0,0,255),b
39540 line (0,540)-(850,780),rgb(0,255,0),bf
39550 pen 5:line (0,543)-(853,783),rgb(0,0,0),b
39560 color rgb(255,255,255)
39570 print"◎個人データーリスト 霊遺伝姓名学" + chr$(13)
39580 color rgb(255,0,255)
39590 print "1.霊遺伝姓名学リスト" + chr$(13)
39600 print "2.霊遺伝姓名学登録件数" + chr$(13)
39610 print "3.霊遺伝姓名学データー検索"+chr$(13)
39620 print "4.前の画面に戻る"  +  chr$(13)
39630 print "5.メインメニューへ行く"+chr$(13)
39640 color rgb(0,0,0)
39650 print "番号を入れてください"+chr$(13)
39660 Input "番号:",No
39670 if No = 1 then goto Parsonal_list1:
39680 if No = 2 then goto Entry_list_count:
39690 if No = 5 then goto Main_Screen:
39700 if No = 3 then goto Search_find:
39710 if No = 4 then goto Parsonal_data_top:
39720 if No > 5 then talk"数字を入れ直してください":ui_msg"入力値が範囲外です":goto Parsonal_data_top:
39730 '2.安斎流姓名判断　トップ画面
39740 Parsonal_data_top_Anzai:
39750 cls 3
39760 line(0,0)-(900,60),rgb(0,0,255),bf
39770 pen 5:line(0,3)-(897,57),rgb(0,255,0),b
39780 line (0,60)-(900,450),rgb(127,255,212),bf
39790 pen 5:line (0, 63)-(897,447),rgb(0,0,255),b
39800 line (0,450)-(900,650),rgb(0,255,0),bf
39810 pen 5:line (0,453)-(897,653),rgb(0,0,0),b
39820 color rgb(255,255,255)
39830 print"◎個人データーリスト　安斎流姓名判断" + chr$(13)
39840 color rgb(255,0,255)
39850 print "1.安斎流相性リスト" + chr$(13)
39860 print "2.安斎流登録リスト" + chr$(13)
39870 print "3.前の画面に戻る" + chr$(13)
39880 print "4.メインメニューへ行く" + chr$(13)
39890 color rgb(0,0,0)
39900 print "番号を入れてください"+chr$(13)
39910 Input "番号:",No
39920 if No = 2 then end:
39930 if No = 1 then goto Anzai_Aisyou_EntryList:
39940 if No = 4 then goto Main_Screen:
39950 if No = 3 then goto Parsonal_data_top:
39960 if No
39970 > 4 then talk"数字を入れ直してください":ui_msg"入力値が範囲外です":goto Parsonal_data_top:
39980 '3.九星姓名判断　トップ画面
39990 Parsonal_data_top_Kyusei:
40000 cls 3
40010 line(0,0)-(900,60),rgb(0,0,255),bf
40020 pen 5:line(3,3)-(897,57),rgb(0,255,0),b
40030 line (0,60)-(900,450),rgb(127,255,212),bf
40040 pen 5:line (0, 63)-(897,443),rgb(0,0,255),b
40050 line (0,450)-(900,780),rgb(0,255,0),bf
40060 pen 5:line (0,453)-(897,783),rgb(0,0,0),b
40070 color rgb(255,255,255)
40080 print"◎個人データーリスト 九星姓名判断" + chr$(13)
40090 color rgb(255,0,255)
40100 print "1." + chr$(13)
40110 print "2." + chr$(13)
40120 print "3.前の画面に戻る"+chr$(13)
40130 print "4.メインメニューへ行く"+chr$(13)
40140 color rgb(0,0,0)
40150 print "番号を入れてください"+chr$(13)
40160 Input "番号:",No
40170 if No = 1 then end:
40180 if No = 2 then end:
40190 if No = 4 then goto Main_Screen:
40200 if No = 3 then goto Parsonal_data_top:
40210 if No> 4 then talk"数字を入れ直してください":ui_msg"入力値が範囲外です":goto Parsonal_data_top:
40220 '登録件数
40230 Entry_list_count:
40240 N = 0:
40250 open "Config/Parsonal_data/parsonal_data.dat" for input as #5
40260 'N=1
40270 while eof(5) = 0
40280 line input #5,line$:N = N + 1
40290 wend
40300 'c=N
40310 close #5
40320 c=N
40330 cls 3
40340 line (0,0)-(680,60),rgb(0,0,255),bf
40350 pen 3:line (0,0)-(683,63),rgb(0,255,0),b
40360 line (0,60)-(680,180),rgb(127,255,212),bf
40370 pen 3:line (0,63)-(683,183),rgb(0,255,0),b
40380 LINE (0,180)-(680,280),rgb(0,255,0),bf
40390 pen 3:line (0,183)-(683,283),rgb(0,0,0),b
40400 color rgb(255,255,255)
40410 talk "登録件数は"+str$(c)+"件です"
40420 print "◎霊遺伝姓名学登録件数"+chr$(13)
40430 color rgb(255,0,255)
40440 'N=B-1:C=N
40450 print "登録件数は";c;"件です"+chr$(13)
40460 color rgb(0,0,0)
40470 print "エンターキーを押してください"+chr$(13)
40480 a$ = Input$(1)
40490 if a$ = chr$(13) then goto Parsonal_data_top:
40500 'パーソナルリスト ここから
40510 Parsonal_list1:
40520 cls 3:bN=0:n=0:a=0
40530 'Title
40540 line (0,0)-(1100,60),rgb(0,0,255),bf
40550 line (0,0)-(1097,57),rgb(255,255,255),b
40560 '個人名
40570 line (0,60)-(1100,165),rgb(0,255,0),bf
40580 line (0,63)-(1103,162),rgb(255,0,255),b
40590 '数値リスト
40600 line (0,165)-(1100,550),rgb(255,212,212),bf
40610 line (0,168)-(1097,547),rgb(0,0,255),b
40620 'ボタンメッセージ
40630 line (0,550)-(1100,730),rgb(0,255,0),bf:
40640 line (0,553)-(1103,733),rgb(255,0,255),b
40650 'Parsonal_list2:
40660 'color rgb(255,255,255):
40670 'cls:print "霊遺伝姓名学 リスト" + chr$(13)
40680 'n=0
40690 open "config/Parsonal_data/parsonal_data.dat" for input as #7
40700 'bN=0
40710 while eof(7)=0
40720 line input #7,lines$:bN = bN + 1
40730 wend
40740 close #7
40750 'a=0
40760 open "config/Parsonal_data/parsonal_data.dat" for input as #8
40770 'while eof(8)=0
40780 for i=0 to (bN * 10)-1
40790 input #8,buflines$(i)
40800 Next i
40810 'wend
40820 close #8
40830 while n <= (bN * 10)-1
40840 'Title
40850 color rgb(255,255,255)
40860 print "霊遺伝姓名学 リスト";bN;"件中";n+1;"件目" + chr$(13)
40870 '性別を出す
40880 sex$ = show_sex_type$(buflines$((10*n) + 1))
40890 'n=0
40900 color rgb(0,0,0):
40910 print buflines$(10*(n)+0);" ";sex$  + chr$(13)
40920 '
40930 print buflines$((10*(n) + 2));buflines$((10*(n) +3))+chr$(13)
40940 print buflines$((10*(n) + 4));buflines$((10*(n) + 5))+chr$(13)
40950 print buflines$((10*(n) + 6));buflines$((10*(n) + 7))+chr$(13)
40960 print buflines$((10*(n) + 8));buflines$((10*(n) + 9))+chr$(13):
40970 print "スペースキー:次へ行く" + chr$(13)
40980 print "エンターキー：トップへ戻る" + chr$(13)
40990 key$ = Input$(1)
41000 if key$ = " " then n = ((n + 1) Mod bN)
41010 cls
41020 'else
41030 'エンターでトップに行く
41040 if key$ = chr$(13) then goto Main_Screen:
41050 wend
41060 Search_find:
41070 cls 3
41080 'グラフィック領域　ここから
41090 line (0,0)-(770,60),rgb(0,0,255),bf
41100 pen 5:line(0,0)-(767,57),rgb(0,255,0),b
41110 line (0,60)-(770,170),rgb(127,255,212),bf
41120 line(0,63)-(767,173),rgb(0,0,255),b
41130 line(0,170)-(770,370),rgb(0,255,0),bf
41140 pen 5:line(0,173)-(767,373),rgb(0,0,0),b
41150 'ファイル読み込み　ここから
41160 open "config/Parsonal_data/parsonal_data.dat" for input as #1
41170 while eof(1)=0
41180 line input #1,lines$:hit_count=hit_count + 1
41190 wend
41200 close #1
41210 open "config/Parsonal_data/parsonal_data.dat" for input as #2
41220 for i=0 to (10 * hit_count) - 1
41230 input #2,bufname$(i)
41240 next i
41250 close #2
41260 'ファイル読み込み　ここまで
41270 color rgb(255,255,255)
41280 print "霊遺伝姓名判断 データー検索" + chr$(13)
41290 color rgb(255,0,255)
41300 print "登録件数:";hit_count;"件です" + chr$(13)
41310 color rgb(0,0,0)
41320 print "調べたい人の名前を入れてください" + chr$(13)
41330 Input "名前:",name$
41340 for i=0 to ((hit_count) - 1)*10
41350 if name$=right$(bufname$(i),len(name$)) then
41360 hcount = hcount + 1:counter=i
41370 endif
41380 next i
41390 if hcount > 0 then
41400 cls 3
41410 '描画領域　ここから
41420 line (0,0)-(770,60),rgb(0,0,255),bf
41430 line (0,0)-(767,57),rgb(0,255,0),b
41440 line (0,60)-(770,250),rgb(127,255,212),bf
41450 line (0,63)-(767,173),rgb(0,0,255),b
41460 line (0,250)-(770,560),rgb(0,255,0),bf
41470 line (0,253)-(773,563),rgb(0,0,0),b
41480 '描画領域　ここまで
41490 color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
41500 color rgb(0,0,0):print"調べたい名前:";name$+chr$(13)
41510 color rgb(0,0,0):print hcount;"件ヒットありました"+chr$(13)
41520 color rgb(255,0,255):print"スペース： もう一度調べる"+chr$(13)
41530 color rgb(255,0,255):print"H:ヒットしたデーターを見る"+chr$(13)
41540 color rgb(255,0,255):print"エンターキー:トップ画面"+chr$(13)
41550 a$ = input$(1)
41560 if a$ = " " then goto Search_find:
41570 if a$ = chr$(13) then goto Main_Screen:hit_count=0
41580 if a$ = "H" or a$="h" then goto Hit_list:
41590 else
41600 color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索" + chr$(13)
41610 color rgb(0,0,0):print"検索名:";name$ + chr$(13)
41620 color rgb(0,0,0):print"この人はヒットしませんでした" + chr$(13)
41630 color rgb(255,0,255):print"エンターキーを押してください" + chr$(13)
41640 a$ = input$(1)
41650 if a$ = chr$(13) then goto Main_Screen:
41660 endif
41670 'ヒットしたリストの表示する
41680 Hit_list:
41690 '描画領域　ここから
41700 cls 3:bN=0:n=0:a=0
41710 'Title
41720 line (0,0)-(850,60),rgb(0,0,255),bf
41730 line (0,0)-(850,57),rgb(255,255,255),b
41740 '個人名
41750 line (0,60)-(850,165),rgb(0,255,0),bf
41760 line (0,63)-(850,162),rgb(255,0,255),b
41770 '数値リスト
41780 line (0,165)-(850,550),rgb(255,212,212),bf
41790 line (0,168)-(850,547),rgb(0,0,255),b
41800 'ボタンメッセージ
41810 line (0,550)-(850,730),rgb(0,255,0),bf:
41820 line (0,553)-(853,733),rgb(255,0,255),b
41830 '描画領域　ここまで
41840 'Title
41850 color rgb(255,255,255)
41860 print "霊遺伝姓名学 ヒットリスト" + chr$(13)
41870 '性別を出す
41880 sex$ = show_sex_type$(bufname$(counter + 1))
41890 'n=0
41900 color rgb(0,0,0):
41910 print bufname$((counter) + 0);" ";sex$  + chr$(13)
41920 '
41930 print bufname$(((counter) + 2));bufname$(((counter) +3))+chr$(13)
41940 print bufname$(((counter) + 4));bufname$(((counter) +5))+chr$(13)
41950 print bufname$(((counter) + 6));bufname$(((counter) +7)) + chr$(13)
41960 print bufname$(((counter) + 8));bufname$(((counter) +9)) + chr$(13):
41970 print "エンターキー：トップへ戻る" + chr$(13)
41980 print "s:もう一度検索" + chr$(13)
41990 key$ = Input$(1)
42000 if key$=chr$(13) then counter=0:hcount=0:goto Main_Screen:
42010 if key$="S" or key$="s" then counter=0:hcount=0:goto Search_find:
42020 Over_40count:
42030 'データーの登録数が４０件になると、ここに飛ぶ
42040 cls 3
42050 color rgb(255,255,255)
42060 print "登録件数が";Max;"件になりました" + chr$(13)
42070 print "エンターキーを押してください"
42080 a$ = input$(1)
42090 if a$ = chr$(13) then goto Main_Screen:
42100 func swap(a,b)
42110 tmp = b
42120 b = a
42130 a = tmp
42140 endfunc
42150 Anzai_Aisyou_EntryList:
42160 cls 3
42170 'ぐらふぃっく ここから
42180 'Title
42190 line(0,0)-(1050,60),rgb(0,0,255),bf
42200 line(0,60)-(1050,265),rgb(0,255,0),bf
42210 line(0,265)-(1050,370),rgb(255,212,212),bf
42220 line(0,370)-(1050,460),rgb(0,255,0),bf
42230 'ぐらふぃっく ここまで
42240 color rgb(255,255,255)
42250 print "安斎流相性占い　登録リスト" + chr$(13)
42260 color rgb(0,0,0)
42270 print "男性:"+chr$(13)
42280 print "女性:"+chr$(13)
42290 COLOR rgb(255,0,255)
42300 print "あなたとの相性"+chr$(13)
42310 color rgb(0,0,0)
42320 print "エンターキーを押してください"+chr$(13)
42330 ReiIden_Seimeihandan_data_Save:
42340 'Dataを保存してメイン画面に行く
42350 'Data保存処理 ファイルの末尾にデーターを追加
42360 open "config/Parsonal_data/Anzai_Aisyou_couple_list.dat" for append  as #1
42370 print #1,"男性の名前:";name$+name2$;",";"女性の名前:";name3$+name4$;",";"2人の相性:";bufferAisyou$;",";"判定：";check$+chr$(13)
42380 close #1
42390 'Data保存ここまで
42400 'Data保存完了メッセージ
42410 ui_msg"データーを保存しました"
42420 'メイン画面に行く
42430 goto Main_Screen:
