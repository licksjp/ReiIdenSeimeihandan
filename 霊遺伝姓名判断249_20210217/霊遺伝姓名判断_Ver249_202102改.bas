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
670 'Version2.37:Date:2020.12.03
680 'Version2.38:Date:2020.12.05
690 'Version2.39:Date:2020.12.09
700 'Version2.41-Version2.42:Date:2021.01.01
710 '設定ファイル　漢字文字データ
720 'Version:Mojidata20200411.dat Date:20200411
730 'Version:Mojidata20200415.dat Date:20200415
740 'Version:Mojidata20200506.dat Date:20200506
750 'Version:Mojidata20200513.dat Date:20200513
760 'Version:Mojidata20200516.dat Date:20200516
770 'Version:Mojidata_ReiIden20200829.dat:Date:20200829
780 'Version:Mojidata_ReiIden20200911.dat:Date:20200911
790 '
800 '新機能
810 'Date:2020.05.27
820 'Parsonal_data.datに個人データーを保存機能追加
830 'メモリー確保 文字領域,数値データー
840 clear 4*4000,4*1000000
850 '改名チェック変数
860 buffer_K=0:dim buffer_Kaimei$(5,5,5,5):kaimei_count=0:dim buf_name1$(10)
870 dim  buf_namearray$(10),name_array$(10),buf_namearray2$(10),name_array2$(10),lines$(100),lines2$(10),buflines$(40*10):n=0:dim buf_lines$(27):hit_count=0:dim bufname$(40*10),buffname$(40*10*2)
880 Max=40:acount=0
890 '安斎流姓名判断　改名リスト　配列変数
900 dim kaimei_list_count$(60)
910 '性別の選択用変数
920 dim sex_type$(2)
930 '相性占い　設定項目 ここから
940 count=0:line_count=0
950 dim buffer_Aisyou_type$(10,10)
960 dim buffer_Kaimei_data_name$(10)
970 '改名チェックの選択肢の変数
980 dim buf_Anzai_Aisyou_data$(400)
990 dim select$(3)
1000 '安斎流姓名判断　相性リスト配列変数
1010 select$(0)="改名リストに追加する"
1020 select$(1)="改名リストに追加しない"
1030 select$(2)="トップ画面に行く"
1040 '総数を出す変数 改名チェック変数
1050 'dim buffer_total$
1060 '1.理解し合える最良のカップル
1070 dim buf_good_couple1(20)
1080 dim buf_good_couple2(20)
1090 '2.互いに自然体でつきあえるカップル
1100 dim buf_natural_couple1(20)
1110 dim buf_natural_couple2(20)
1120 '3.男性にとって居心地の良い相性
1130 dim buf_good_for_man1(20)
1140 dim buf_good_for_man2(20)
1150 '4.女性にとって居心地の良い相性
1160 dim buf_good_for_woman1(20)
1170 dim buf_good_for_woman2(20)
1180 '5.恋愛経験を重ねた後なら愛を育める
1190 dim short_of_experience1(20)
1200 dim short_of_experience2(20)
1210 '6.結婚への発展が困難なカップル
1220 dim buf_difficult_for_couple1(20)
1230 dim buf_difficult_for_couple2(20)
1240 '7.愛し方にズレが出てくる二人
1250 dim buf_difference_of_love1(20)
1260 dim buf_difference_of_love2(20)
1270 '相性占い　設定項目　ここまで
1280 '8.互いの価値観が噛み合わない相性 ここから
1290 dim buf_difference_of_KachiKan1(20)
1300 dim buf_difference_of_KachiKan2(20)
1310 '8.互いに価値観が噛み合わない相性 ここまで
1320 '相性診断　相性パターン結果　ここから
1330 dim Result_Aisyou_type$(8)
1340 '相性診断 相性パターン結果 ここまで
1350 '2019/04/07 姓名判断アプリ 作成開始
1360 '姓名判断　 名前の総数での吉凶を調べる
1370 buf_count=0:buffer_count=0:count=0:buffer=0
1380 '合計文字数
1390 totalmoji=0
1400 dim buf_Input_data$(10),buf_Input_data2$(10)
1410 dim bufer_name$(10),bufer_name2$(10)
1420 dim buf_Input_name$(10),buf_Input_name2$(10)
1430 dim buf_wasu(4)
1440 '定数文字1画〜27画
1450 'ファイルから各画数を読み込んで代入する。
1460 '1行目だけ読み込む
1470 open "config/Kanji_data/Mojidata_ReiIden20200911.dat" for input as #2
1480 for i=0 to 26
1490 input #2,buf_lines$(i)
1500 next i
1510 close #2
1520 Moji_1=val(buf_lines$(0)):Moji_2=val(buf_lines$(1)):Moji_3=val(buf_lines$(2)):Moji_4=val(buf_lines$(3)):Moji_5=val(buf_lines$(4)):Moji_6=val(buf_lines$(5)):Moji_7=val(buf_lines$(6)):Moji_8=val(buf_lines$(7)):Moji_9=val(buf_lines$(8)):Moji_10=val(buf_lines$(9)):Moji_11=val(buf_lines$(10)):Moji_12=val(buf_lines$(11)):Moji_13=val(buf_lines$(12)):Moji_14=val(buf_lines$(13)):Moji_15=val(buf_lines$(14)):Moji_16=val(buf_lines$(15)):Moji_17=val(buf_lines$(16)):Moji_18=val(buf_lines$(17)):Moji_19=val(buf_lines$(18)):Moji_20=val(buf_lines$(19)):Moji_21=val(buf_lines$(20)):Moji_22=val(buf_lines$(21)):Moji_23=val(buf_lines$(22)):Moji_24=val(buf_lines$(23)):Moji_25=val(buf_lines$(24)):Moji_26=val(buf_lines$(25)):Moji_27=val(buf_lines$(26))
1530 Moji_total=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27
1540 '1画
1550 Moji_Min_1 = 28:Moji_Max_1 = Moji_1 + 27+1:
1560 '2画
1570 Moji_Min_2 = (Moji_1) + 27+2:Moji_Max_2 = Moji_1 + Moji_2+27+2
1580 '3画
1590 Moji_Min_3 =(Moji_1) + (Moji_2) + 27+3:Moji_Max_3 =Moji_1 + Moji_2 + Moji_3+27+3
1600 '4画
1610 Moji_Min_4 = (Moji_3) + Moji_2 + Moji_1 + 27+4:Moji_Max_4=Moji_1+Moji_2 + Moji_3 + Moji_4 + 27+4
1620 '5画
1630 Moji_Min_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4) + 27+5:Moji_Max_5 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5)+27+5
1640 '6画
1650 Moji_Min_6 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5)+27+6:Moji_Max_6=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6)+27+6
1660 '7画
1670 Moji_Min_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6) + 27+7:Moji_Max_7 = (Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7) + 27+7
1680 '8画
1690 Moji_Min_8 = Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+27+8:Moji_Max_8=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8)+27+8
1700 '9画
1710 Moji_Min_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + 27+9:Moji_Max_9 = Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + 27+9
1720 '10画
1730 Moji_Min_10 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9)+27+10:Moji_Max_10=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10)+27+10
1740 '11画
1750 Moji_Min_11 = (Moji_1+Moji_2+Moji_3+Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10)+27+11:Moji_Max_11=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11)+27+11
1760 '12画
1770 Moji_Min_12 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11)+27+12:Moji_Max_12=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+27+12
1780 '13画
1790 Moji_Min_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12)+13+27:Moji_Max_13=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+27+13
1800 '14画
1810 Moji_Min_14 =(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13)+14+27:Moji_Max_14=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+14+27
1820 '15画
1830 Moji_Min_15 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14)+15+27:Moji_Max_15=(Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6+ Moji_7 + Moji_8 + Moji_9+ Moji_10 + Moji_11 + Moji_12+Moji_13+Moji_14+Moji_15)+15+27
1840 '16画
1850 Moji_Min_16 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15)+16+27:Moji_Max_16=Moji_1 + Moji_2 + Moji_3 + Moji_4 + Moji_5 + Moji_6 + Moji_7 + Moji_8 + Moji_9 + Moji_10 + Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+16+27
1860 '17画
1870 Moji_Min_17 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16) + 17+27:Moji_Max_17 = Moji_1 + Moji_2 + Moji_3 + Moji_4+Moji_5 + Moji_6 + Moji_7+Moji_8 + Moji_9 + Moji_10 + Moji_11 + Moji_12 + Moji_13 + Moji_14 + Moji_15+Moji_16+Moji_17+17+27
1880 '18画
1890 Moji_Min_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17)+18+27:Moji_Max_18 = (Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+18+27
1900 '19画
1910 Moji_Min_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18)+19+27:Moji_Max_19=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+19+27
1920 '20画
1930 Moji_Min_20=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19)+20+27:Moji_Max_20=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+20+27
1940 '21画
1950 Moji_Min_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20)+21+27:Moji_Max_21=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+21+27
1960 '22画
1970 Moji_Min_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21)+22+27:Moji_Max_22=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22)+22+27
1980 '23画
1990 Moji_Min_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+23+27):Moji_Max_23=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+23+27
2000 '24画
2010 Moji_Min_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23)+24+27:Moji_Max_24=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+24+27
2020 '25画
2030 Moji_Min_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24)+25+27:Moji_Max_25=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+25+27
2040 '26画
2050 Moji_Min_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25)+26+27:Moji_Max_26=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+26+27
2060 '27画
2070 Moji_Min_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26)+27+27:Moji_Max_27=(Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_22+Moji_23+Moji_24+Moji_25+Moji_26+Moji_27)+27+27
2080 dim Moji_data$(Moji_total+27+27)
2090 'dim bufmoji$(10),Input_data$(10)
2100 '１画の文字   サイズ:21+2(漢字)
2110 dim buf_char_hiragana1$(Moji_1)
2120 '2画の文字  サイズ 58+14=72(漢字)
2130 dim buf_char_hiragana2$(Moji_2)
2140 '3画の文字 サイズ:48+29=77(漢字)
2150 dim buf_char_hiragana3$(Moji_3)
2160 '4画の文字 サイズ:29+51=80(漢字)
2170 dim buf_char_hiragana4$(Moji_4)
2180 '５画の文字  サイズ:18+59=77(漢字)
2190 dim buf_char_hiragana5$(Moji_5)
2200 '6画の文字  サイズ:79(漢字)
2210 dim buf_char_hiragana6$(Moji_6)
2220 '7画の文字  サイズ:88(漢字)
2230 dim buf_char_hiragana7$(Moji_7)
2240 '8画の文字
2250 dim buf_char_hiragana8$(Moji_8)
2260 '9画の文字
2270 dim buf_char_hiragana9$(Moji_9)
2280 '10画の文字 98文字
2290 dim buf_char_hiragana10$(Moji_10)
2300 '11画の文字
2310 dim buf_char_hiragana11$(Moji_11)
2320 '12画の文字
2330 dim buf_char_hiragana12$(Moji_12)
2340 '13画の文字 81文字
2350 dim buf_char_hiragana13$(Moji_13)
2360 '14画の文字
2370 dim buf_char_hiragana14$(Moji_14)
2380 '15画の文字
2390 dim buf_char_hiragana15$(Moji_15)
2400 '16画の文字
2410 dim buf_char_hiragana16$(Moji_16)
2420 '17画の文字
2430 dim buf_char_hiragana17$(Moji_17)
2440 '18画の文字
2450 dim buf_char_hiragana18$(Moji_18)
2460 '19画の文字
2470 dim buf_char_hiragana19$(Moji_19)
2480 '20画の文字
2490 dim buf_char_hiragana20$(Moji_20)
2500 '21画の文字
2510 dim buf_char_hiragana21$(Moji_21)
2520 '22画の文字
2530 dim buf_char_hiragana22$(Moji_22)
2540 '23画の文字
2550 dim buf_char_hiragana23$(Moji_23)
2560 '24画の文字
2570 dim buf_char_hiragana24$(Moji_24)
2580 '25
2590 dim buf_char_hiragana25$(Moji_25)
2600 dim buf_char_hiragana26$(Moji_26)
2610 dim buf_char_hiragana27$(Moji_27)
2620 '結果表示1　吉凶データー 81パターン
2630 dim buf_Kikkyo$(81)
2640 '結果表示２
2650 '安斎流姓名判断 吉凶  1.地運
2660 dim buf_Kikkyo_Anzai_chiunn$(70)
2670 '安斎流姓名判断　　吉凶  2.人運
2680 dim buf_Kikkyo_Anzai_jinunn$(69)
2690 '安斎流姓名判断 吉凶 3.外運
2700 'dim buf_Kikkyo_Anzai_gaiunn$(70)
2710 '安斎流姓名判断 吉凶　　4.総運
2720 dim buf_Kikkyo_Anzai_total$(80)
2730 '霊遺伝姓名学　変数
2740 A=0
2750 B=0
2760 C=0
2770 D=0
2780 '1.先祖運
2790 buffer_senzo=0
2800 '2.性格運
2810 buffer_seikaku=0
2820 '3.愛情運
2830 buffer_Aijyou=0
2840 '4.行動運
2850 buffer_Kouzou=0
2860 '1-1.先祖運　和数
2870 Senzo_wasu=0
2880 '1-2.先祖運　生数
2890 Senzo_seisu=0
2900 '2-1.性格運 和数
2910 Seikaku_wasu=0
2920 '2-2.性格運 生数
2930 Seikaku_seisu=0
2940 '3-1.愛情運 和数
2950 Aijyou_wasu=0
2960 '3-2.愛情運 生数
2970 Aijyou_seisu=0
2980 '4-1 行動運 和数
2990 Koudo_wasu=0
3000 '4-2 行動運 生数
3010 Koudo_seisu=0
3020 'データー読み込み　ここから
3030 'データー読み込み　1.ひらがな
3040 '1画の文字   6文字 23文字
3050 open "config/Kanji_data/Mojidata_ReiIden20200911.dat" for input as #1
3060 '全ファイルを読み込む
3070 for i = 0 to 25+Moji_total+27
3080 input #1,Moji_data$(i)
3090 next i
3100 close #1
3110 '全ファイル読み込み　ここまで
3120 for i = 27+1 to (Moji_1)+27+1
3130 '1画の文字にデーターをコピーする
3140 buf_char_hiragana1$(i-Moji_Min_1) = Moji_data$(i)
3150 next i
3160 '2画の文字    98文字
3170 for i = Moji_Min_2  to (Moji_Max_2)
3180 buf_char_hiragana2$(i-Moji_Min_2)=Moji_data$(i)
3190 next i
3200 '3文字の文字    77文字
3210 for i = Moji_Min_3  to (Moji_Max_3)
3220 buf_char_hiragana3$(i-(Moji_Min_3)) = Moji_data$(i)
3230 next i
3240 '4文字の文字   80文字
3250 for i = (Moji_Min_4)  to (Moji_Max_4)
3260 buf_char_hiragana4$(i-Moji_Min_4)=Moji_data$(i)
3270 next i
3280 '5文字の文字 77文字
3290 for i = Moji_Min_5 to (Moji_Max_5)
3300 buf_char_hiragana5$(i - Moji_Min_5)=Moji_data$(i)
3310 next i
3320 '6文字の文字 79文字
3330 for i = Moji_Min_6  to Moji_Max_6
3340 buf_char_hiragana6$(i-Moji_Min_6) = Moji_data$(i)
3350 next i
3360 '7文字の文字 170文字
3370 for i = Moji_Min_7 to Moji_Max_7
3380 buf_char_hiragana7$(i-Moji_Min_7)=  Moji_data$(i)
3390 next i
3400 '8画の文字 120文字
3410 for i = Moji_Min_8 to Moji_Max_8
3420 buf_char_hiragana8$(i - Moji_Min_8)=Moji_data$(i)
3430 next i
3440 '9画の文字  103文字
3450 for i = Moji_Min_9 to Moji_Max_9
3460 buf_char_hiragana9$(i - Moji_Min_9)=Moji_data$(i)
3470 next i
3480 '10画の文字 285文字
3490 for i = Moji_Min_10 to (Moji_Max_10)
3500 buf_char_hiragana10$(i-Moji_Min_10)=Moji_data$(i)
3510 next i
3520 '11画の文字
3530 for i = Moji_Min_11 to Moji_Max_11
3540 buf_char_hiragana11$(i-Moji_Min_11) = Moji_data$(i)
3550 next i
3560 '12画の文字
3570 for i = Moji_Min_12 to Moji_Max_12
3580 buf_char_hiragana12$(i-Moji_Min_12)=Moji_data$(i)
3590 next i
3600 '13画の文字 81
3610 for i = Moji_Min_13 to Moji_Max_13
3620 buf_char_hiragana13$(i-Moji_Min_13) = Moji_data$(i)
3630 next i
3640 '14画の文字 66
3650 for i = Moji_Min_14 to Moji_Max_14
3660 buf_char_hiragana14$(i-Moji_Min_14)=Moji_data$(i)
3670 next i
3680 '15画の文字 59
3690 'for i = Moji_Min_15 to (Moji_Max_15) - 1
3700 for i=Moji_Min_15 to  Moji_Max_15
3710 buf_char_hiragana15$(i-Moji_Min_15)=Moji_data$(i)
3720 next i
3730 '16画の文字 44
3740 for i=Moji_Min_16 to Moji_Max_16
3750 buf_char_hiragana16$(i-Moji_Min_16)=Moji_data$(i)
3760 next i
3770 '17画の文字
3780 for i = Moji_Min_17 to Moji_Max_17
3790 buf_char_hiragana17$(i-Moji_Min_17)=Moji_data$(i)
3800 next i
3810 '18画の文字
3820 for i = Moji_Min_18 to Moji_Max_18
3830 buf_char_hiragana18$(i-Moji_Min_18)=Moji_data$(i)
3840 next i
3850 '19画の文字 17文字
3860 for i = Moji_Min_19 to Moji_Max_19
3870 buf_char_hiragana19$(i-Moji_Min_19)=Moji_data$(i)
3880 next i
3890 '20 画の文字 13文字
3900 for  i = Moji_Min_20 to Moji_Max_20
3910 buf_char_hiragana20$(i-Moji_Min_20)=Moji_data$(i)
3920 NEXT i
3930 '21画の文字 6
3940 for i = Moji_Min_21 to (Moji_Max_21)
3950 buf_char_hiragana21$(i-Moji_Min_21)=Moji_data$(i)
3960 next i
3970 '22 画の文字 4
3980 for i = Moji_Min_22 to Moji_Max_22
3990 buf_char_hiragana22$(i-Moji_Min_22)=Moji_data$(i)
4000 next i
4010 '23画の文字  3文字
4020 for i = Moji_Min_23 to Moji_Max_23
4030 buf_char_hiragana23$(i-Moji_Min_23)=Moji_data$(i)
4040 next i
4050 '24画の文字  3文字
4060 for i = Moji_Min_24 to Moji_Max_24
4070 buf_char_hiragana24$(i-Moji_Min_24)=Moji_data$(i)
4080 next i
4090 '25 画の文字 4
4100 for i = Moji_Min_25 to Moji_Max_25
4110 buf_char_hiragana25$(i-Moji_Min_25)=Moji_data$(i)
4120 next i
4130 '26画の文字  3文字
4140 for i = Moji_Min_26 to Moji_Max_26
4150 buf_char_hiragana26$(i-Moji_Min_26)=Moji_data$(i)
4160 next i
4170 '27画の文字  3文字
4180 for i = Moji_Min_27 to Moji_Max_27
4190 buf_char_hiragana27$(i-Moji_Min_27)=Moji_data$(i)
4200 next i
4210 '吉凶データー読み込み
4220 open "config/Kikkyo_data/Kikkyo_data.dat" for input as #1
4230 for i=0 to 80
4240 input #1,buf_Kikkyo$(i)
4250 next i
4260 close #1
4270 open "config/Kikkyo_data/Anzai_Kikkyo_chiunn.dat" for input as #2
4280 for m=0 to 69
4290 input #2,buf_Kikkyo_Anzai_chiunn$(m)
4300 next m
4310 close #2
4320 open "config/Kikkyo_data/Anzai_Kikkyo_jinunn.dat" for input as #3
4330 for i=1 to 70
4340 input #3,buf_Kikkyo_Anzai_jinunn$(i-1)
4350 next i
4360 close #3
4370 open "config/Kikkyo_data/Anzai_Kikkyo_Total.dat" for input as #4
4380 for i=0 to 79
4390 input #4,buf_Kikkyo_Anzai_total$(i)
4400 next i
4410 close #4
4420 restore 5280
4430 for i=0 to 19
4440 '  for j=0 to 11
4450 read buf_good_couple1(i)
4460 '  next j
4470 next i
4480 restore 5290
4490 for j=0 to 19
4500 read buf_good_couple2(j)
4510 next j
4520 '0.理解し合えるカップル ここまで
4530 '1.互いに自然体でつきあえる二人　ここから
4540 restore 5320
4550 for i=0 to 19
4560 read buf_natural_couple1(i)
4570 next i
4580 restore 5330
4590 for j=0 to 19
4600 read buf_natural_couple2(j)
4610 next j
4620 '1.互いに自然体でつきあえる二人　ここまで
4630 '2        ここから
4640 restore 5360
4650 for i=0 to 19
4660 read buf_good_for_man1(i)
4670 next i
4680 restore 5370
4690 for j=0 to 19
4700 read buf_good_for_man2(j)
4710 next j
4720 '2        ここまで
4730 '3        ここから
4740 restore 5400
4750 for i=0 to 19
4760 read buf_good_for_woman1(i)
4770 next i
4780 restore 5410
4790 for j=0 to 19
4800 read buf_good_for_woman2(j)
4810 next j
4820 '3        ここまで
4830 '4        ここから
4840 restore 5440
4850 for i=0 to 19
4860 read short_of_experience1(i)
4870 next i
4880 restore 5450
4890 for j=0 to 19
4900 read short_of_experience2(j)
4910 next j
4920 '4        ここまで
4930 '5.結婚への発展が困難なカップル  ここから
4940 restore 5480
4950 for i=0 to 19
4960 read buf_difficult_for_couple1(i)
4970 next i
4980 restore 5490
4990 for j=0 to 19
5000 read buf_difficult_for_couple2(j)
5010 next j
5020 '5.結婚への発展が困難なカップル  ここまで
5030 '6.愛し方にズレが出る二人 ここから
5040 restore 5520
5050 for i=0 to 19
5060 read buf_difference_of_love1(i)
5070 next i
5080 restore 5530
5090 for j=0 to 19
5100 read buf_difference_of_love2(j)
5110 next j
5120 '6.愛し方にズレが出る二人 ここまで
5130 '7.互いの価値観が噛み合わない相性 ここから
5140 restore 5560
5150 for i=0 to 19
5160 read buf_difference_of_KachiKan1(i)
5170 next i
5180 restore 5570
5190 for j=0 to 19
5200 read buf_difference_of_KachiKan2(j)
5210 next j
5220 '7.互いの価値観が噛み合わない相性 ここまで
5230 '相性占いタイプ ここから
5240 restore 5610
5250 for i=0 to 7
5260 read Result_Aisyou_type$(i)
5270 next i
5280 data 1,5,6,2,5,7,3,5,8,4,6,0,-1,-1,-1,-1,-1,-1,-1,-1
5290 data 8,2,2,6,8,4,9,0,1,7,1,5,-1,-1,-1,-1,-1,-1,-1,-1
5300 '0.理解し合えるカップル　ここまで
5310 '1.互いに自然体でつきあえるカップル ここから
5320 data 1,4,6,7,9,2,4,6,8,9,3,4,6,8,0,3,4,7,8,0
5330 data 6,1,6,2,6,5,4,7,7,0,2,9,8,8,3,3,0,1,0,7
5340 '1.互いに自然体でつきあえるカップル　ここまで
5350 '2.男性にとって居心地の良いカップル  ここから
5360 data 1,6,9,2,8,9,3,8,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
5370 data 1,5,4,0,5,8,4,9,9,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
5380 '2男性にとって居心地の良いカップル ここまで
5390 '3女性にとって居心地の良いカップル  ここから
5400 data 1,2,6,7,1,5,6,0,2,5,7,0,-1,-1,-1,-1,-1,-1,-1,-1
5410 data 3,2,4,0,9,3,9,2,1,6,8,8,-1,-1,-1,-1,-1,-1,-1,-1
5420 '3女性にとって居心地の良いカップル  ここまで
5430 '4恋愛経験を重ねた後なら愛を育める ここから
5440 data 1,3,6,8,1,3,7,2,4,8,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
5450 data 7,6,3,3,0,7,5,4,5,2,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
5460 '4恋愛経験を重ねた後なら愛を育める ここまで
5470 '5.結婚への発展が困難なカップル ここから
5480 data 1,4,7,2,4,9,3,7,0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
5490 data 2,3,7,3,6,3,5,6,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
5500 '5.結婚への発展が困難なカップル ここまで
5510 '6.愛し方にズレが生じる二人  ここから
5520 data 1,5,9,2,5,9,3,7,0,3,8,-1,-1,-1,-1,-1,-1,-1,-1,-1
5530 data 5,4,5,7,7,7,8,9,6,0,6,-1,-1,-1,-1,-1,-1,-1,-1,-1
5540 '6.愛し方にずれが生じる二人  ここまで
5550 '7.互いに価値観が噛み合わない相性　ここから
5560 data 1,4,5,9,0,2,4,6,9,2,5,7,9,3,5,8,0,-1,-1,-1
5570 data 4,2,9,1,0,8,8,0,2,9,1,3,9,1,5,4,4,-1,-1,-1
5580 '7.互いに価値観が噛み合わない相性 ここまで
5590 '相性占い結果パターン ここから
5600 '0
5610 data "理解し合える最良のカップル"
5620 '1
5630 data "互いに自然体でつきあえるカップル"
5640 '2
5650 data "男性にとって居心地の良い相性"
5660 '3
5670 data "女性にとって居心地の良い相性"
5680 '4
5690 data "恋愛経験を重ねた後なら愛を育める"
5700 '5
5710 data "結婚への発展が困難なカップル"
5720 '6
5730 data "愛し方にずれが生じる二人"
5740 '7
5750 data "互いの価値観が噛み合わない相性"
5760 '相性占い結果パターン ここまで
5770 'メイン画面　ここから
5780 '描画領域　ここから
5790 Select_keybord:
5800 cls 3:font 48:
5810 line (0,0)-(1200,60),rgb(0,0,255),bf
5820 pen 5:line (0,0)-(1197,57),rgb(127,255,212),b
5830 line (0,60)-(1200,380),rgb(127,255,212),bf
5840 pen 5:line(0,57)-(1197,377),rgb(0,0,255),b
5850 line (0,380)-(1200,450),rgb(0,255,0),bf
5860 pen 5:line(0,377)-(1197,447),rgb(0,0,255),b
5870 '描画領域　ここまで
5880 '設定画面 バーチャルキーボードの表示選択
5890 talk"キーボードの選択です。バーチャルキーボードを表示させますか ？"
5900 color rgb(255,255,255)
5910 print "●バーチャル キーボードの表示の選択"+chr$(13)
5920 color rgb(255,0,255)
5930 print "1.バーチャルキーボードを表示する"+chr$(13)
5940 print "2.バーチャルキーボードを表示しない"+chr$(13)
5950 print "3.プログラムを終了する"+chr$(13)
5960 color rgb(0,0,0)
5970 Input"番号:",keyNo
5980 if keyNo = 1 then init"kb:2"
5990 if keyNo = 2 then init"kb:0"
6000 if keyNo = 3 then end
6010 if keyNo > 3 or keyNo = 0 then goto Select_keybord:
6020 'メイン画面 Top画面1
6030 Main_Screen:
6040 cls 3:font 48:color rgb(255,255,255),,rgb(176,196,222):No=0
6050 talk "番号を選んでエンターキーを押してください"
6060 'Text ,Grapgic clear:cls 3
6070 'グラフィック領域　ここから
6080 line (0,0)-(570,60),rgb(0,0,255),bf
6090 pen 5:line (0,0)-(567,57),rgb(127,255,212),b
6100 line (0,60)-(570,560),rgb(127,255,212),bf
6110 pen 5:line (0,57)-(567,557),rgb(0,0,255),b
6120 line (0,560)-(570,740),rgb(0,255,0),bf
6130 'グラフィック領域 ここまで
6140 pen 5:line (0,557)-(567,737),rgb(0,0,255),b
6150 Font 48
6160 print"◎姓名判断　メイン画面"+chr$(13)
6170 '文字色:黒
6180 color rgb(255,0,255)
6190 print"1.姓名判断"+chr$(13)
6200 print"2.姓名判断の設定"+chr$(13)
6210 print"3.個人データーリスト"+chr$(13)
6220 print"4.ヘルプ"+chr$(13)
6230 print"5.プログラムの終了"+chr$(13)
6240 'x=touch(4)
6250 'print"7.プログラム終了"+chr$(13)
6260 '文字:黒
6270 color rgb(0,0,0)
6280 print"番号を選んでください"+chr$(13)
6290 Input "番号:",No
6300 if No = 1  then goto seimeihandan_top:
6310 if No = 2 then goto seimeihandan_setting:
6320 if No = 3 then goto Parsonal_data_top:
6330 if No = 4 then goto help:
6340 if No = 5  then talk"終了します":cls 3:end
6350 'if No = 0  then goto Main_Screen:
6360 if  No > 5 or No = 0  then ui_msg"無効な番号です、もう一度入れ直してください。":goto Main_Screen:
6370 'if No = "" then goto 5820
6380 '1.姓名判断トップ画面
6390 seimeihandan_top:
6400 cls:screen 1,1
6410 'タイトル文字:白
6420 font 48:color rgb(255,255,255),,rgb(176,196,222)
6430 talk "姓名判断トップメニューです。姓名判断の種類の番号を選んでエンターキーを押してください"
6440 'グラフィック 描画領域　ここから
6450 'Main_Screen:
6460 cls 3
6470 '1.Title:青
6480 'Line 1
6490 line (0,0)-(870,60),rgb(0,0,255),bf
6500 pen 5:line(0,0)-(867,57),rgb(127,255,212),b
6510 'Line 2
6520 line (0,60)-(870,450),rgb(127,255,212),bf
6530 PEN 5:line(0,57)-(867,447),rgb(0,0,255),b
6540 'Line 3
6550 line (0,450)-(870,600),rgb(0,255,0),bf
6560 pen 5:line (0,447)-(867,597),rgb(0,0,255),b
6570 'グラフィック 描画領域 ここまで
6580 color rgb(255,255,255)
6590 print"◎姓名判断の種類トップメニュー"+chr$(13)
6600 color rgb(255,0,255):print"1.霊遺伝姓名学(兄弟を求める)"+chr$(13)
6610 color rgb(255,0,255):print"2.安斎流姓名判断(男女の相性)"+chr$(13)
6620 COLOR rgb(255,0,255):print"3.九星姓名判断(一生の運勢)"+chr$(13)
6630 COLOR rgb(255,0,255):print"4.前の画面に戻る"+chr$(13)
6640 color rgb(0,0,0):Print"番号を選んでエンターを押してください"
6650 color rgb(0,0,0):Input"番号:",selectNo
6660 IF selectNo=1 then goto Reiden_Top_Input_Sextype:
6670 if selectNo=2 then goto Anzai_Top:
6680 if selectNo=3 then goto Kyusei_Top:
6690 if selectNo=4 then goto Main_Screen:
6700 if selectNo > 4 or selectNo = 0 then ui_msg"無効な番号です。入れ直してください。":goto seimeihandan_top:
6710 '１．姓名判断(九星姓名判断トップ)
6720 'グラフィック領域　ここから
6730 Kyusei_Top:
6740 cls 3
6750 line (0,0)-(720,60),rgb(0,0,250),bf
6760 pen 5:line (0,0)-(717,57),rgb(127,255,212),b
6770 line (0,60)-(720,460),rgb(127,255,212),bf
6780 pen 5:line(0,57)-(717,457),rgb(0,0,255),b
6790 line (0,460)-(720,680),rgb(0,255,0),bf
6800 pen 5:line(0,457)-(717,677),rgb(0,0,255),b
6810 'グラフィック領域　ここまで
6820 font 48:color rgb(255,255,255),,rgb(176,196,222)
6830 talk "姓名判断トップ画面です。番号を選んでエンターキーを押してください。"
6840 cls:color rgb(255,255,255):print"◎1.姓名判断(九星姓名判断)" +chr$(13)
6850 color rgb(255,0,255):print"1.人名の吉凶を見る"+chr$(13)
6860 color rgb(255,0,255):print"2.ニックネームチェック"+chr$(13)
6870 color rgb(255,0,255):print"3.名前の陰陽を見る"+chr$(13)
6880 color rgb(255,0,255):print"4.前の画面に戻る"+chr$(13)
6890 color rgb(0,0,0):print"番号を選んでください"+chr$(13)
6900 color rgb(0,0,0):Input "番号:",selectNo
6910 'selectNo=Input$(1)
6920 if selectNo = 1 then goto Parson_name_kikkyo
6930 if selectNo = 2 then goto nick_name_check:
6940 if selectNo = 3 then goto name_inyo_check:
6950 if selectNo = 4  then goto seimeihandan_top:
6960 if selectNo > 4 or selectNo=0 then ui_msg"番号が無効です。入れ直してください":goto Kyusei_Top:
6970 '2.姓名判断 安斎流姓名判断　トップ画面
6980 '2-1名前の姓の部分を入力
6990 'グラフィック領域　ここから
7000 Anzai_Top_Screen:
7010 cls 3:LINE (0,0)-(820,60),rgb(0,0,255),bf
7020 pen 5:line (0,0)-(816,57),rgb(127,255,212),b
7030 line (0,60)-(820,260),rgb(127,255,212),bf
7040 pen 5:line(0,57)-(817,257),rgb(0,0,255),b
7050 line (0,260)-(820,350),rgb(0,255,0),bf
7060 pen 5:line(0,257)-(817,347),rgb(0,0,255),b
7070 font 48
7080 'グラフィック領域 ここまで
7090 color rgb(255,255,255):print"安斎流　姓名判断　トップメニュー"+chr$(13)
7100 talk"安斎流姓名判断トップメニューです,名前を2回に分けて入力してください。まず最初に名前の姓の部分を入れてください"
7110 COLOR rgb(255,0,255)
7120 print"名前を2回に分けて入力してください"+chr$(13)
7130 print"名前の姓の部分を入れてください"+chr$(13)
7140 color rgb(0,0,0)
7150 input"名前の姓:",bufname$
7160 buff1=len(bufname$)
7170 '2-2名前の名の部分を入力
7180 'グラフィック描画領域　ここから
7190 cls 3
7200 line (0,0)-(820,60),rgb(0,0,255),bf
7210 pen 5:line(0,0)-(817,57),rgb(127,255,212),b
7220 line (0,60)-(820,200),rgb(127,255,212),bf
7230 pen 5:line(0,57)-(817,197),rgb(0,0,255),b
7240 line (0,200)-(820,260),rgb(0,255,0),bf
7250 pen 5:line(0,197)-(817,257),rgb(0,0,255),b
7260 'グラフィック描画領域 ここまで
7270 COLOR rgb(255,255,255)
7280 cls:print"安斎流姓名判断トップメニュー"+chr$(13)
7290 talk"つぎに、名前のめいの部分を入れてください"
7300 color rgb(255,0,255)
7310 print"名前の名の部分を入れてください"+chr$(13)
7320 color rgb(0,0,0)
7330 input"名前の名:",bufname2$
7340 buff2=len(bufname2$)
7350 bufff=buff1+buff2
7360 'goto 18650
7370 select case bufff
7380 '姓1文字,名1文字
7390 case 2:
7400 cls
7410 '天運:buf_tenunn
7420 buf_tenunn=char_count(bufname$)
7430 '地運:buf_chiunn
7440 buf_chiunn=char_count(bufname2$)
7450 '人運 = 天運 + 地運
7460 buf_jinunn=buf_tenunn + buf_chiunn
7470 '外運 = 天運 + 人運
7480 buf_gaiunn = buf_tenunn + buf_chiunn
7490 '総数=buf_gaiunn
7500 buf_total=buf_gaiunn
7510 goto Result_Anzai:
7520 '姓１，名:2
7530 case 3:
7540 cls:
7550 if buff1=1 and buff2=2 then
7560 '1.天運:buf_tenunn
7570 buf_tenunn=char_count(bufname$)
7580 '2文字目の文字
7590 bufer_name2$(0)=Mid$(bufname2$,1,1)
7600 '3文字目の文字
7610 bufer_name2$(1)=Mid$(bufname2$,2,1)
7620 '2.人運
7630 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
7640 '3.地運:buf_chiunn
7650 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
7660 '4外運:buf_gaiunn
7670 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
7680 '5.総数:buf_total
7690 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
7700 goto Result_Anzai:
7710 endif
7720 if buff1=2 and buff2=1 then
7730 bufer_name$(0)=Mid$(bufname$,1,1)
7740 bufer_name$(1)=Mid$(bufname$,2,1)
7750 bufer_name2$(0)=Mid$(bufname2$,1,1)
7760 '1.天運
7770 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
7780 '2.人運
7790 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
7800 '3.地運
7810 buf_chiunn=char_count(bufer_name2$(0))
7820 '4.外運
7830 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
7840 '5.総数
7850 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
7860 goto Result_Anzai:
7870 endif
7880 case 4:
7890 if buff1=2 and buff2=2 then
7900 bufer_name$(0)=Mid$(bufname$,1,1)
7910 bufer_name$(1)=Mid$(bufname$,2,1)
7920 bufer_name2$(0)=Mid$(bufname2$,1,1)
7930 bufer_name2$(1)=Mid$(bufname2$,2,1)
7940 '1.天運
7950 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1))
7960 '2.人運
7970 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
7980 '3.地運
7990 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
8000 '4.外運
8010 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))
8020 '5.総数
8030 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
8040 goto Result_Anzai:
8050 endif
8060 'パターン2 姓3文字 名1文字 total4文字
8070 if buff1=3 and buff2=1 then
8080 bufer_name$(0)=Mid$(bufname$,1,1)
8090 bufer_name$(1)=Mid$(bufname$,2,1)
8100 bufer_name$(2)=Mid$(bufname$,3,1)
8110 bufer_name2$(0)=Mid$(bufname2$,1,1)
8120 '1.天運
8130 buf_tenunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufer_name$(2))
8140 '2.人運
8150 buf_jinunn = char_count(bufer_name$(2))+char_count(bufer_name2$(0))
8160 '3.地運
8170 buf_chiunn=char_count(bufer_name2$(0))
8180 '4.外運
8190 buf_gaiunn = char_count(bufer_name$(0)) + char_count(bufer_name$(1)) + char_count(bufname2$)
8200 '5.総運
8210 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))
8220 goto Result_Anzai:
8230 endif
8240 'パターン３ 姓1,名３  合計４文字
8250 if buff1=1 and buff2=3 then
8260 bufer_name$(0)=Mid$(bufname$,1,1)
8270 bufer_name2$(0)=Mid$(bufname2$,1,1)
8280 bufer_name2$(1)=Mid$(bufname2$,2,1)
8290 bufer_name2$(2)=Mid$(bufname2$,3,1)
8300 '1.天運
8310 buf_tenunn = char_count(bufer_name$(0))
8320 '2.人運
8330 buf_jinunn=char_count(bufer_name$(0))+char_count(bufer_name2$(0))
8340 '3.地運
8350 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8360 '4.外運
8370 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8380 '5.総運
8390 buf_total=char_count(bufer_name$(0))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8400 goto Result_Anzai:
8410 endif
8420 case 5:
8430 '５文字の名前
8440 '1.  3文字姓 2字名
8450 if buff1=3 and buff2=2 then
8460 bufer_name$(0)=Mid$(bufname$,1,1)
8470 bufer_name$(1)=Mid$(bufname$,2,1)
8480 bufer_name$(2)=Mid$(bufname$,3,1)
8490 bufer_name2$(0)=Mid$(bufname2$,1,1)
8500 bufer_name2$(1)=Mid$(bufname2$,2,1)
8510 '1.天運
8520 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
8530 '2.人運
8540 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
8550 '3.地運
8560 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
8570 '4.外運
8580 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
8590 '5.総運
8600 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
8610 goto Result_Anzai:
8620 endif
8630 if buff1=2 and buff2=3 then
8640 bufer_name$(0)=Mid$(bufname$,1,1)
8650 bufer_name$(1)=Mid$(bufname$,2,1)
8660 bufer_name2$(0)=Mid$(bufname2$,1,1)
8670 bufer_name2$(1)=Mid$(bufname2$,2,1)
8680 bufer_name2$(2)=Mid$(bufname2$,3,1)
8690 '1.天運
8700 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))
8710 '2.人運
8720 buf_jinunn=char_count(bufer_name$(1))+char_count(bufer_name2$(0))
8730 '3.地運
8740 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8750 '4.外運
8760 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8770 '5.総運
8780 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
8790 goto Result_Anzai:
8800 endif
8810 if buff1=4 and buff2=1 then
8820 bufer_name$(0)=Mid$(bufname$,1,1)
8830 bufer_name$(1)=mid$(bufname$,2,1)
8840 bufer_name$(2)=mid$(bufname$,3,1)
8850 bufer_name$(3)=mid$(bufname$,4,1)
8860 bufer_name2$(0)=mid$(bufname2$,1,1)
8870 '1.天運
8880 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
8890 '2.人運
8900 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
8910 '3.地運
8920 buf_chiunn=char_count(bufer_name2$(0))
8930 '4.外運
8940 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(0))
8950 '5.総運
8960 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))
8970 goto Result_Anzai:
8980 endif
8990 case 6:
9000 '3字姓 3字名
9010 if buff1=3 and buff2=3 then
9020 bufer_name$(0)=Mid$(bufname$,1,1)
9030 bufer_name$(1)=Mid$(bufname$,2,1)
9040 bufer_name$(2)=Mid$(bufname$,3,1)
9050 bufer_name2$(0)=Mid$(bufname2$,1,1)
9060 bufer_name2$(1)=Mid$(bufname2$,2,1)
9070 bufer_name2$(2)=Mid$(bufname2$,3,1)
9080 '1.天運
9090 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))
9100 '2.人運
9110 buf_jinunn=char_count(bufer_name$(2))+char_count(bufer_name2$(0))
9120 '3.地運
9130 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
9140 '4.外運
9150 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
9160 '5.総運
9170 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
9180 goto Result_Anzai:
9190 endif
9200 '4字姓 2字名
9210 if buff1=4 and buff2=2 then
9220 bufer_name$(0)=Mid$(bufname$,1,1)
9230 bufer_name$(1)=Mid$(bufname$,2,1)
9240 bufer_name$(2)=Mid$(bufname$,3,1)
9250 bufer_name$(3)=Mid$(bufname$,4,1)
9260 bufer_name2$(0)=Mid$(bufname2$,1,1)
9270 bufer_name2$(1)=Mid$(bufname2$,2,1)
9280 '1.天運
9290 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
9300 '2.人運
9310 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
9320 '3.地運
9330 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
9340 '4.外運
9350 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))
9360 '5.総運
9370 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))
9380 goto Result_Anzai:
9390 endif
9400 '4字姓 3字名
9410 case 7:
9420 if buff1=4 and buff2=3 then
9430 bufer_name$(0)=Mid$(bufname$,1,1)
9440 bufer_name$(1)=Mid$(bufname$,2,1)
9450 bufer_name$(2)=Mid$(bufname$,3,1)
9460 bufer_name$(3)=Mid$(bufname$,4,1)
9470 bufer_name2$(0)=Mid$(bufname2$,1,1)
9480 bufer_name2$(1)=Mid$(bufname2$,2,1)
9490 bufer_name2$(2)=Mid$(bufname2$,3,1)
9500 '1.天運
9510 buf_tenunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))
9520 '2.人運
9530 buf_jinunn=char_count(bufer_name$(3))+char_count(bufer_name2$(0))
9540 ' 3.地運
9550 buf_chiunn=char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))+char_count(bufer_name2$(3))
9560 '4.外運
9570 buf_gaiunn=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
9580 '5.総運
9590 buf_total=char_count(bufer_name$(0))+char_count(bufer_name$(1))+char_count(bufer_name$(2))+char_count(bufer_name$(3))+char_count(bufer_name2$(0))+char_count(bufer_name2$(1))+char_count(bufer_name2$(2))
9600 goto Result_Anzai:
9610 endif
9620 case else:
9630 end select
9640 '2.設定
9650 seimeihandan_setting:
9660 font 46:color rgb(0,0,0),,rgb(176,196,222)
9670 talk"設定画面です。番号を選んでエンターキーを押してください"
9680 'グラフィック領域　ここから
9690 cls 3:
9700 line (0,0)-(750,60),rgb(0,0,255),bf
9710 pen 5:line (0,0)-(747,57),rgb(127,255,212),b
9720 line (0,60)-(750,560),rgb(127,255,212),bf
9730 pen 5:line (0,57)-(747,557),rgb(0,0,255),b
9740 line (0,560)-(750,750),rgb(0,255,0),bf
9750 pen 5:line(0,557)-(747,747),rgb(0,0,255),b
9760 'グラフィック領域 ここまで
9770 '1行目　文字色　 白
9780 color rgb(255,255,255):print"姓名判断　設定画面トップ画面"+chr$(13)
9790 color rgb(255,0,255):print"1.登録文字の確認"+chr$(13)
9800 color rgb(255,0,255):print"2.登録文字数の表示"+chr$(13)
9810 color rgb(255,0,255):print"3.画数で吉凶を見る"+chr$(13)
9820 color rgb(255,0,255):print"4.前の画面に戻る"+chr$(13)
9830 color rgb(255,0,255):PRINT"5.プログラムの終了"+chr$(13)
9840 COLOR rgb(0,0,0)
9850 print"番号を選んでください"+chr$(13)
9860 Input"番号:",selectNo
9870 if selectNo=1 then goto Entry_moji_Top:
9880 if selectNo=2 then goto Entry_moji_check:
9890 if selectNo=3 then goto Moji_Kikkyo_Top:
9900 if selectNo=4 then goto Main_Screen:
9910 if selectNo=5 then talk"終了します":cls 3:end
9920 if selectNo > 5 or selectNo = 0 then goto seimeihandan_setting:
9930 '3 番号で吉凶を見る 入力
9940 Moji_Kikkyo_Top:
9950 font 32:color rgb(0,0,0),,rgb(176,196,222)
9960 'グラフィック描画領域　ここから
9970 cls 3
9980 line (0,0)-(650,60),rgb(0,0,255),bf
9990 pen 5:line(0,0)-(645,57),rgb(127,255,212),b
10000 line (0,60)-(650,255),rgb(127,255,212),bf
10010 PEN 5:line(0,57)-(647,252),rgb(0,0,255),b
10020 line (0,255)-(650,350),rgb(0,255,0),bf
10030 pen 5:line(0,252)-(647,347),rgb(0,0,255),b
10040 'グラフィック描画領域 ここまで
10050 color rgb(255,255,255)
10060 print"画数での吉凶判定"+chr$(13)
10070 color rgb(255,0,255)
10080 print"画数を入れてください"+chr$(13)
10090 print"(Max:81文字)"+chr$(13)
10100 color rgb(0,0,0)
10110 Input"文字の画数:",Number
10120 if Number > 81 then goto Moji_Kikkyo_Top:
10130 if Number <=81 then goto Moji_Kikkyo:
10140 '3.番号で吉凶を見る 結果表示
10150 'グラフィック描画領域　ここから
10160 Moji_Kikkyo:
10170 cls 3
10180 line (0,0)-(700,60),rgb(0,0,255),bf
10190 PEN 5:line(0,0)-(697,57),rgb(127,255,212),b
10200 line (0,60)-(700,260),rgb(127,255,212),bf
10210 pen 5:line(0,57)-(697,257),rgb(0,0,255),b
10220 line (0,260)-(700,350),rgb(0,255,0),bf
10230 pen 5:line(0,257)-(697,347),rgb(0,0,255),b
10240 'グラフィック描画領域　ここまで
10250 color rgb(255,255,255)
10260 print "画数で吉凶を求める"+chr$(13)
10270 color rgb(255,0,255)
10280 talk str$(Number)+"画のきっきょうは、"+buf_Kikkyo$(Number-1)+"です"
10290 print"画数:";Number;chr$(13):print"吉凶:";buf_Kikkyo$(Number-1);chr$(13)
10300 'endif
10310 color rgb(0,0,0)
10320 print"エンターキーを押してください"
10330 key$=Input$(1)
10340 If key$=chr$(13) then goto seimeihandan_setting:
10350 '3.ヘルプ
10360 help:
10370 cls 3:font 48:color rgb(0,0,0),,rgb(176,196,222)
10380 '描画領域 ここから
10390 line (0,0)-(550,60),rgb(0,0,255),bf
10400 pen 5:line(0,0)-(547,57),rgb(127,255,212),b
10410 line (0,60)-(550,470),rgb(127,255,212),bf
10420 pen 5:line(0,57)-(547,467),rgb(0,0,255),b
10430 line (0,470)-(550,550),rgb(0,255,0),bf
10440 pen 5:line(0,467)-(547,547),rgb(0,0,255),b
10450 '描画領域　ここまで
10460 talk "へるぷがめんです。番号を選んでエンターキーを押してください。"
10470 color rgb(255,255,255):print "姓名判断　ヘルプ"+chr$(13)
10480 color rgb(255,0,255):print"1.バージョン情報"+chr$(13)
10490 color rgb(255,0,255):print"2.参考文献"+chr$(13)
10500 color rgb(255,0,255):print"3.プログラムの終了"+chr$(13)
10510 color rgb(255,0,255):PRINT"4.前の画面に戻る"+chr$(13)
10520 color rgb(0,0,0):Input"番号:",selectNo
10530 if selectNo=1 then goto Version_info:
10540 if selectNo=2 then goto Document_info:
10550 'プログラムの終了
10560 if selectNo=3 then talk"終了いたします":cls 3:end
10570 'if selectNo=4 then ex_web"http://www3.kcn.ne.jp/~sayyuki/manual/seimeihandan/docs/"
10580 '前の画面に戻る
10590 if selectNo=4 then goto Main_Screen:
10600 if selectNo > 4 or selectNo = 0 then goto help:
10610 'Menu1　画面
10620 talk"調べたい名前のみよじをいれてください"
10630 'グラフィック描画領域　ここから
10640 Parson_name_kikkyo:
10650 cls 3
10660 line (0,0)-(1050,60),rgb(0,0,255),bf
10670 pen 5:line(0,0)-(1047,57),rgb(127,255,212),b
10680 line (0,60)-(1050,180),rgb(127,255,212),bf
10690 pen 5:line(0,57)-(1047,177),rgb(0,0,255),b
10700 line (0,180)-(1050,250),rgb(0,255,0),bf
10710 pen 5:line(0,177)-(1047,247),rgb(0,0,255),b
10720 'グラフィック描画領域　ここまで
10730 color rgb(255,255,255):print"調べたい名前の苗字を入れてください"+chr$(13)
10740 color rgb(255,0,255):print"例:山田太郎の山田の部分"+chr$(13)
10750 color rgb(0,0,0):input"調べたい名前の苗字(上の文字):",name$
10760 cls
10770 talk "調べたい名前の名の部分":color rgb(255,255,255):print"調べたい名前の名の部分を入れてください"+chr$(13)
10780 color rgb(255,0,255):print"例:山田太郎の太郎の部分を入れてください"+chr$(13)
10790 color rgb(0,0,0):input"調べたい名前の名の部分(下の部分):",name2$
10800 goto complate_Kyusei:
10810 'メニュー6　バージョン表示
10820 'グラフィック　描画　領域　 ここから
10830 Version_info:
10840 cls 3
10850 line (0,0)-(1000,60),rgb(0,0,255),bf
10860 pen 5:line (0,0)-(997,57),rgb(127,255,212),b
10870 line (0,60)-(1000,665),rgb(127,255,212),bf
10880 pen 5:line(0,57)-(997,662),rgb(0,0,255),b
10890 line (0,665)-(1000,750),rgb(0,255,0),bf
10900 pen 5:line(0,662)-(997,747),rgb(0,0,255),b
10910 'グラフィック　描画 領域　 ここまで
10920 'Date:2020.12.09
10930 color rgb(255,255,255):print"バージョン情報"+chr$(13)
10940 color rgb(255,0,255):print"Title:姓名判断(改)"+chr$(13)
10950 color rgb(255,0,255):PRINT"Ver:2.49.20210216(改)"+chr$(13)
10960 color rgb(255,0,255):print"対応文字:漢字、ひらがな、カタカナ、数字"+chr$(13)
10970 color rgb(255,0,255):print"アルファベット（大文字、小文字)"+chr$(13)
10980 color rgb(255,0,255):print"対応漢字画数：1画から24画まで"+chr$(13)
10990 color rgb(255,0,2550):print"制作開始:since 2019.04.07"+chr$(13)
11000 'ここを書き換える
11010 talk "このプログラムは、姓名判断バージョン2.49です"
11020 color rgb(0,0,0):print"エンターキーを押してください"
11030 key$=Input$(1)
11040 if key$ = chr$(13)  then goto Main_Screen:
11050 complate_Kyusei:
11060 '文字数を求める変数
11070 buf_char_size=len(name$)
11080 buf_char_size2=len(name2$)
11090 '入力した文字を代入する変数
11100 '入力した文字を配列に代入する処理
11110 '姓名判断データー文字比較
11120 '画数を求める関数
11130 func char_count(buf_count$)
11140 count=0:buffer=0
11150 '1画の文字 23文字
11160 for j=0 to ((Moji_1)-1)
11170 if buf_count$=buf_char_hiragana1$(j) then
11180 count =1:
11190 endif
11200 next j
11210 '2画の文字
11220 for j=0 to ((Moji_2)-1)
11230 if buf_count$=buf_char_hiragana2$(j)  then
11240 count = 2:
11250 endif
11260 next j
11270 for j=0 to ((Moji_3)-1)
11280 if buf_count$=buf_char_hiragana3$(j) then
11290 count =3:
11300 endif
11310 next j
11320 for j=0 to ((Moji_4)-1)
11330 if buf_count$=buf_char_hiragana4$(j) then
11340 count = 4:
11350 endif
11360 next j
11370 for j=0 to ((Moji_5)-1)
11380 if buf_count$=buf_char_hiragana5$(j) then
11390 count = 5:
11400 endif
11410 next j
11420 for j=0 to ((Moji_6)-1)
11430 if buf_count$=buf_char_hiragana6$(j) then
11440 count= 6
11450 endif
11460 next j
11470 for  j=0 to ((Moji_7)-1)
11480 if buf_count$=buf_char_hiragana7$(j) then
11490 count=  7
11500 endif
11510 next j
11520 for j=0 to ((Moji_8)-1)
11530 if buf_count$=buf_char_hiragana8$(j) then
11540 count= 8
11550 endif
11560 next j
11570 for j=0 to ((Moji_9)-1)
11580 if buf_count$=buf_char_hiragana9$(j) then
11590 count=9
11600 endif
11610 next j
11620 for j=0 to ((Moji_10)-1)
11630 if buf_count$=buf_char_hiragana10$(j) then
11640 count=10
11650 endif
11660 next j
11670 for j=0 to ((Moji_11)-1)
11680 if buf_count$=buf_char_hiragana11$(j) then
11690 count=11
11700 endif
11710 next j
11720 for j=0 to  ((Moji_12)-1)
11730 if buf_count$=buf_char_hiragana12$(j) then
11740 count=12
11750 endif
11760 next j
11770 for j=0 to ((Moji_13)-1)
11780 if buf_count$=buf_char_hiragana13$(j) then
11790 count=13
11800 endif
11810 next j
11820 for j=0 to ((Moji_14)-1)
11830 if buf_count$=buf_char_hiragana14$(j) then
11840 count=14
11850 endif
11860 next j
11870 for j=0 to ((Moji_15)-1)
11880 if buf_count$=buf_char_hiragana15$(j) then
11890 count=15
11900 endif
11910 next j
11920 for j=0 to ((Moji_16)-1)
11930 if buf_count$=buf_char_hiragana16$(j) then
11940 count=16
11950 endif
11960 next j
11970 for j=0 to ((Moji_17)-1)
11980 if buf_count$=buf_char_hiragana17$(j) then
11990 count=17
12000 endif
12010 next j
12020 for j=0 to ((Moji_18)-1)
12030 if buf_count$=buf_char_hiragana18$(j) then
12040 count=18
12050 endif
12060 next j
12070 for j=0 to ((Moji_19)-1)
12080 if buf_count$=buf_char_hiragana19$(j) then
12090 count=19
12100 endif
12110 next j
12120 for j=0 to ((Moji_20)-1)
12130 if buf_count$=buf_char_hiragana20$(j) then
12140 count=20
12150 endif
12160 next i
12170 for j=0 to ((Moji_21)-1)
12180 if buf_count$=buf_char_hiragana21$(j) then
12190 count=21
12200 endif
12210 next j
12220 for j=0 to ((Moji_22)-1)
12230 if buf_count$=buf_char_hiragana22$(j) then
12240 count=22
12250 endif
12260 next j
12270 for j=0 to ((Moji_23)-1)
12280 if buf_count$=buf_char_hiragana23$(j) then
12290 count=23
12300 endif
12310 next j
12320 for j=0 to ((Moji_24)-1)
12330 if buf_count$=buf_char_hiragana24$(j) then
12340 count=24
12350 endif
12360 buffer = count
12370 next j
12380 endfunc buffer
12390 func show_sex_type$(sex$)
12400 buf_number=val(Mid$(sex$,4,1))
12410 if buf_number = 1 then
12420 buf_show_sex_type$="性別:女性"
12430 else
12440 if buf_number=2 then
12450 buf_show_sex_type$="性別:男性"
12460 endif
12470 endif
12480 endfunc buf_show_sex_type$
12490 '合計を求める関数
12500 func totalcounts(buffers$)
12510 buffers=0:
12520 for i=0 to len(buffers$)-1
12530 buffers=buffers+char_count(buffers$)
12540 next i
12550 endfunc buffers
12560 buf_count2=0:buf_count3=0
12570 'dim buf_Input_data$(len(name$))
12580 '1.苗字の文字数
12590 for n=0 to (buf_char_size-1)
12600 buf_Input_data$(n)=mid$(name$,n+1,1)
12610 next n
12620 for i=0 to (buf_char_size-1)
12630 buf_count2 = buf_count2 + char_count(buf_Input_data$(i))
12640 next i
12650 '2.名の文字数
12660 for n2=0 to (buf_char_size2-1)
12670 buf_Input_data2$(n2)=mid$(name2$,n2+1,1)
12680 next n2
12690 for i2=0 to (buf_char_size2-1)
12700 buf_count3 = buf_coun3 + char_count(buf_Input_data2$(i2))
12710 next i2
12720 '総数を出す
12730 select case (buf_char_size + buf_char_size2)
12740 case 6:
12750 if ((buf_char_size=4) and (buf_char_size2=2)) then
12760 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
12770 endif
12780 if ((buf_char_size=3) and (buf_char_size2=3)) then
12790 if buf_Input_data$(1)="々" then
12800 buf_total=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
12810 else
12820 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
12830 endif
12840 endif
12850 case 5:
12860 if ((buf_char_size=4) and (buf_char_size2=1)) then
12870 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
12880 endif
12890 if ((buf_char_size=2) and (buf_char_size2=3)) then
12900 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
12910 endif
12920 if ((buf_char_size=3) and (buf_char_size2=2)) then
12930 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
12940 endif
12950 case 4:
12960 if ((buf_char_size=1) and (buf_char_size2=3)) then
12970 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
12980 endif
12990 if ((buf_char_size=2) and (buf_char_size2=2)) then
13000 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
13010 endif
13020 if ((buf_char_size=3) and (buf_char_size2=1)) then
13030 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
13040 endif
13050 case 3:
13060 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
13070 buf_total = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
13080 endif
13090 if ((buf_char_size=2) and (buf_char_size2=1)) then
13100 buf_total=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
13110 endif
13120 case 2:
13130 buf_total = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
13140 case else:
13150 end select
13160 '文字の総数をだす
13170 total_name$ = name$ + name2$
13180 '1.姓星を求める
13190 select case buf_char_size
13200 '苗字1文字のとき
13210 case 1:
13220 buf_seisei = char_count(buf_Input_data$(0)) + 1
13230 '苗字2文字の時
13240 case 2:
13250 buf_seisei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(0))
13260 '苗字3文字のとき
13270 case 3:
13280 if (buf_Input_data$(1)="々")  then
13290 buf_seisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data$(2))
13300 else
13310 buf_seisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data$(1)) + char_count(buf_Input_data$(2))
13320 endif
13330 '苗字4文字のとき
13340 case 4:
13350 buf_seisei = char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data$(2))+char_count(buf_Input_data$(3))
13360 case else:
13370 end select
13380 '2.主星をだす
13390 '2.主星
13400 select case (buf_char_size + buf_char_size2)
13410 '姓名5文字のとき
13420 case 6:
13430 if ((buf_char_size=4) and (buf_char_size2=2)) then
13440 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
13450 endif
13460 if ((buf_char_size=3) and (buf_char_size2=3)) then
13470 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
13480 endif
13490 case 5:
13500 if ((buf_char_size=4) and (buf_char_size2=1)) then
13510 buf_syusei=char_count(buf_Input_data$(3))+char_count(buf_Input_data2$(0))
13520 endif
13530 if ((buf_char_size=2) and (buf_char_size2=3)) then
13540 buf_syusei=char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
13550 endif
13560 if ((buf_char_size=3) and (buf_char_size2=2)) then
13570 buf_syusei=char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
13580 endif
13590 '姓名4文字のとき
13600 case 4:
13610 if ((buf_char_size = 2) and (buf_char_size2 = 2)) then
13620 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
13630 endif
13640 if ((buf_char_size=1) and (buf_char_size2=3)) then
13650 buf_syusei = char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(0))
13660 endif
13670 if ((buf_char_size=3) and (buf_char_size2=1)) then
13680 buf_syusei = char_count(buf_Input_data$(2))+char_count(buf_Input_data2$(0))
13690 endif
13700 '姓名3文字のとき
13710 case 3:
13720 if ((buf_char_size = 1) and (buf_charsize2 = 2)) then
13730 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
13740 else
13750 buf_syusei = char_count(buf_Input_data$(1)) + char_count(buf_Input_data2$(0))
13760 endif
13770 case 2:
13780 buf_syusei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
13790 case else:
13800 end select
13810 '3.名星を求める
13820 select case (buf_char_size + buf_char_size2)
13830 case 6:
13840 if ((buf_char_size=3) and (buf_char_size2=3)) then
13850 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
13860 endif
13870 if ((buf_char_size=4) and (buf_char_size2=2)) then
13880 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
13890 endif
13900 case 5:
13910 if ((buf_char_size = 4) and (buf_char_size2 = 1)) then
13920 buf_meisei = char_count(buf_Input_data2$(0)) + 1
13930 endif
13940 if ((buf_char_size=3) and (buf_char_size2=2)) then
13950 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
13960 endif
13970 if ((buf_char_size=2) and (buf_char_size2=3))  then
13980 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
13990 endif
14000 case 4:
14010 if ((buf_char_size=2) and (buf_char_size2=2)) then
14020 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))
14030 endif
14040 if ((buf_char_size=1) and (buf_char_size2=3)) then
14050 buf_meisei = char_count(buf_Input_data2$(0)) + char_count(buf_Input_data2$(1))+ char_count(buf_Input_data2$(2))
14060 endif
14070 if ((buf_char_size=3) and (buf_char_size2=1)) then
14080 buf_meisei = char_count(buf_Input_data2$(0)) + 1
14090 endif
14100 case 3:
14110 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
14120 buf_meisei=char_count(buf_Input_data2$(0))+char_count(buf_Input_data2$(1))
14130 endif
14140 if ((buf_char_size=2) and (buf_char_size2=1)) then
14150 buf_meisei=char_count(buf_Input_data2$(0))+1
14160 endif
14170 case 2:
14180 buf_meisei = char_count(buf_Input_data2$(0)) + 1
14190 case else:
14200 end select
14210 '4.外星を求める
14220 select case (buf_char_size + buf_char_size2)
14230 case 6:
14240 if buf_Input_data$(1)="々"  then
14250 buf_gaisei=char_count(buf_Input_data$(0))*2+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
14260 else
14270 if ((buf_char_size=4) and (buf_char_size2=2)) then
14280 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
14290 else
14300 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
14310 endif
14320 endif
14330 case 5:
14340 if ((buf_char_size=4) and (buf_char_size2=1)) then
14350 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(0))
14360 endif
14370 if ((buf_char_size=3) and (buf_char_size2=2)) then
14380 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data$(1))+char_count(buf_Input_data2$(1))
14390 endif
14400 if ((buf_char_size=2) and (buf_char_size2=3)) then
14410 buf_gaisei=char_count(buf_Input_data$(0))+char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
14420 endif
14430 case 4:
14440 if ((buf_char_size=2) and (buf_char_size2=2)) then
14450 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(1))
14460 endif
14470 if ((buf_char_size=1) and (buf_char_size2=3)) then
14480 buf_gaisei = 1 + char_count(buf_Input_data2$(1))+char_count(buf_Input_data2$(2))
14490 endif
14500 if ((buf_char_size=3) and (buf_char_size2=1)) then
14510 buf_gaisei = char_count(buf_Input_data2$(0)) + 1
14520 endif
14530 case 3:
14540 if ((buf_char_size = 1) and (buf_char_size2 = 2)) then
14550 buf_gaisei=1+char_count(buf_Input_data2$(1))
14560 endif
14570 if ((buf_char_size = 2) and (buf_char_size2 = 1)) then
14580 buf_gaisei = char_count(buf_Input_data$(0)) + char_count(buf_Input_data2$(0))
14590 endif
14600 case 2:
14610 buf_gaisei = 2
14620 case else:
14630 end select
14640 '診断結果表示
14650 '1.姓星を出す
14660 'グラフィック描画領域　ここから
14670 Result_Kyusei_Kikkyo:
14680 cls 3:font 32
14690 '縦の画面
14700 '1行目
14710 line (0,0)-((1500*2)/3,(60*2)/3),rgb(0,0,255),bf
14720 pen 5:line(0,0)-((1497*2)/3,(57*2)/3),rgb(127,255,212),b
14730 '2行目
14740 line (0,(60*2)/3)-((1500*2)/3,(665*2)/3),rgb(127,255,212),bf
14750 pen 5:line(0,(57*2)/3)-((1497*2)/3,(662*2)/3),rgb(0,0,255),b
14760 '3行目
14770 line (0,(665*2)/3)-((1500*2)/3,(720*2)/3),rgb(0,255,0),bf
14780 pen 5:line(0,(662*2)/3)-((1497*2)/3,(717*2)/3),rgb(0,0,255),b
14790 '横の画面　吉凶のランク表
14800 'グラフィック描画領域　ここまで
14810 talk"診断結果です"
14820 color rgb(255,255,255):print "九星姓名判断　吉凶の結果表示"+chr$(13)
14830 color Rgb(255,0,255)
14840 print total_name$;"の姓星(生まれや育ち):";buf_seisei;"吉凶:";buf_Kikkyo$(buf_seisei-1)+chr$(13)
14850 '2.主星を出す
14860 print total_name$;"の主星(仕事運、金運):";buf_syusei;"吉凶:";buf_Kikkyo$(buf_syusei-1)+chr$(13)
14870 '3.名星を求める
14880 print total_name$;"の名星(健康運、家庭運):";buf_meisei;"吉凶:";buf_Kikkyo$(buf_meisei+2)+chr$(13)
14890 '4.外星を求める
14900 print total_name$;"の外星(恋愛、結婚、対人関係):";buf_gaisei;"吉凶:";buf_Kikkyo$(buf_gaisei+1)+chr$(13)
14910 '5.総数を出す
14920 print total_name$;"の総数(一生の運勢、特に晩年):";buf_total;"です"+chr$(13)
14930 print total_name$;"の文字の総合的な吉凶:";buf_Kikkyo$(buf_total)+chr$(13)
14940 color rgb(0,0,0)
14950 print"エンターキーを押してください"
14960 key$=Input$(1)
14970 if key$ = chr$(13) then bufferCount=0:buf_count2 = 0:count = 0:buffer = 0:buf_seisei = 0:buf_syusei = 0:buf_meisei = 0:buf_gaisei = 0:font 48:goto Main_Screen:
14980 '2.主星を出す
14990 'メニュー3 登録文字の確認 ここから
15000 'グラフィック領域　ここから
15010 'タイトル青 文字:白
15020 Entry_moji_Top:
15030 cls 3:line (0,0)-(1050,65),rgb(0,0,255),bf
15040 pen 5:line(0,0)-(1047,62),rgb(127,255,212),b
15050 line (0,62)-(1050,155),rgb(0,255,255),bf
15060 pen 5:line(0,59)-(1047,152),rgb(0,0,255),b
15070 line (0,155)-(1050,260),rgb(0,255,0),bf
15080 pen 5:line(0,152)-(1047,257),rgb(0,0,255),b
15090 'グラフィック領域　ここまで
15100 talk"調べたい文字をひと文字入れてください。"
15110 '文字:白
15120 color rgb(255,255,255):print"登録文字の確認"+chr$(13)
15130 '文字:アクア
15140 color rgb(255,0,0):print"文字を入力してエンターキーを押してください"+chr$(13)
15150 color rgb(0,0,0):Input"登録文字を入れてください(1文字):",name$
15160 if name$="" then ui_msg"文字が空白です。入れ直してください。":goto Entry_moji_Top:
15170 if (len(name$)>1) then ui_msg("１文字で入れてください"):goto Entry_moji_Top:
15180 '1画の文字
15190 for i=0 to ((Moji_1)-1)
15200 if (name$=buf_char_hiragana1$(i)) then
15210 buffer_count=1:goto Moji_count_check:
15220 endif
15230 next i
15240 '2画の文字
15250 for i=0 to ((Moji_2)-1)
15260 if (name$=buf_char_hiragana2$(i)) then
15270 buffer_count=2:goto Moji_count_check:
15280 endif
15290 next i
15300 '3画の文字
15310 for i=0 to ((Moji_3)-1)
15320 if (name$=buf_char_hiragana3$(i)) then
15330 buffer_count=3:goto Moji_count_check:
15340 endif
15350 next i
15360 '4画の文字
15370 for i=0 to ((Moji_4)-1)
15380 if (name$=buf_char_hiragana4$(i)) then
15390 buffer_count=4:goto Moji_count_check:
15400 endif
15410 next i
15420 '5画の文字
15430 for i=0 to ((Moji_5)-1)
15440 if (name$=buf_char_hiragana5$(i)) then
15450 buffer_count=5:goto Moji_count_check:
15460 endif
15470 next i
15480 '6画の文字
15490 for i=0 to ((Moji_6)-1)
15500 if (name$=buf_char_hiragana6$(i)) then
15510 buffer_count=6:goto Moji_count_check:
15520 endif
15530 next i
15540 '7画の文字
15550 for i=0 to ((Moji_7)-1)
15560 if (name$=buf_char_hiragana7$(i)) then
15570 buffer_count=7:goto Moji_count_check:
15580 endif
15590 next i
15600 '8画の文字 120 文字
15610 for i=0 to ((Moji_8)-1)
15620 if (name$=buf_char_hiragana8$(i)) then
15630 buffer_count=8:goto Moji_count_check:
15640 endif
15650 next i
15660 '9画の文字  103文字
15670 for i=0 to ((Moji_9)-1)
15680 if (name$=buf_char_hiragana9$(i)) then
15690 buffer_count=9:goto Moji_count_check:
15700 endif
15710 next i
15720 '10画の文字 98文字
15730 for i=0 to ((Moji_10)-1)
15740 if (name$=buf_char_hiragana10$(i)) then
15750 buffer_count=10:goto Moji_count_check:
15760 endif
15770 next i
15780 '11画の文字 98文字
15790 for i=0 to ((Moji_11)-1)
15800 if (name$=buf_char_hiragana11$(i)) then
15810 buffer_count=11:goto Moji_count_check:
15820 endif
15830 next i
15840 '12画の文字
15850 for i=0 to ((Moji_12)-1)
15860 if (name$=buf_char_hiragana12$(i)) then
15870 buffer_count=12:goto Moji_count_check:
15880 endif
15890 next i
15900 '13画の文字
15910 for i=0 to ((Moji_13)-1)
15920 if (name$=buf_char_hiragana13$(i)) then
15930 buffer_count=13:goto Moji_count_check:
15940 endif
15950 next i
15960 '14画の文字
15970 for i=0 to ((Moji_14)-1)
15980 if (name$=buf_char_hiragana14$(i)) then
15990 buffer_count=14:goto Moji_count_check:
16000 endif
16010 next i
16020 '15画の文字
16030 for i=0 to ((Moji_15)-1)
16040 if (name$=buf_char_hiragana15$(i)) then
16050 buffer_count=15:goto Moji_count_check:
16060 endif
16070 next i
16080 '16画の文字
16090 for i=0 to ((Moji_16)-1)
16100 if (name$=buf_char_hiragana16$(i)) then
16110 buffer_count=16:goto Moji_count_check:
16120 endif
16130 next i
16140 '17画の文字
16150 for i=0 to ((Moji_17)-1)
16160 if (name$=buf_char_hiragana17$(i)) then
16170 buffer_count=17:goto Moji_count_check:
16180 endif
16190 next i
16200 '18画の文字 25
16210 for i=0 to ((Moji_18)-1)
16220 if (name$=buf_char_hiragana18$(i)) then
16230 buffer_count=18:goto Moji_count_check:
16240 endif
16250 next i
16260 '19画の文字 17
16270 for i=0 to ((Moji_19)-1)
16280 if (name$=buf_char_hiragana19$(i)) then
16290 buffer_count=19:goto Moji_count_check:
16300 endif
16310 next i
16320 '20画の文字 13
16330 for i=0 to ((Moji_20)-1)
16340 if (name$=buf_char_hiragana20$(i)) then
16350 buffer_count=20:goto Moji_count_check:
16360 endif
16370 next i
16380 '21画の文字 6
16390 for i=0 to ((Moji_21)-1)
16400 if (name$=buf_char_hiragana21$(i)) then
16410 buffer_count=21:goto Moji_count_check:
16420 endif
16430 next i
16440 '22画の文字 4
16450 for i=0 to ((Moji_22)-1)
16460 if (name$=buf_char_hiragana22$(i)) then
16470 buffer_count=22:goto Moji_count_check:
16480 endif
16490 next i
16500 '23画の文字 3
16510 for i=0 to ((Moji_23)-1)
16520 if (name$=buf_char_hiragana23$(i)) then
16530 buffer_count=23:goto Moji_count_check:
16540 endif
16550 next i
16560 '24画の文字
16570 for i=0 to ((Moji_24)-1)
16580 if (name$=buf_char_hiragana24$(i)) then
16590 buffer_count=24:goto Moji_count_check:
16600 endif
16610 next i
16620 'Menu3 結果表示 画数の登録確認
16630 Moji_count_check:
16640 if (buffer_count=0) then
16650 '登録文字がない場合の処理
16660 'グラフィック領域　ここから
16670 'Moji_count_check:
16680 cls 3
16690 '1行
16700 line (0,0)-(840,60),rgb(0,0,255),bf
16710 pen 5:line (0,0)-(837,57),rgb(127,255,212),b
16720 '2行目
16730 line (0,60)-(840,165),rgb(127,255,212),bf
16740 pen 5:line (0,57)-(837,162),rgb(0,0,255),b
16750 '3行目
16760 line (0,165)-(840,370),rgb(0,0,255),bf
16770 pen 5:line (0,162)-(837,367),rgb(0,255,0),b
16780 '4行目
16790 line (0,370)-(840,450),rgb(0,255,0),bf
16800 pen 5:line(0,367)-(837,447),rgb(0,0,0),b
16810 'グラフィック領域　ここまで
16820 color rgb(255,255,255):print"登録文字数結果確認"+chr$(13)
16830 color rgb(255,0,0):print name$;":この文字は、登録されていません"+chr$(13)
16840 talk "この文字は、登録されていません"
16850 color rgb(255,255,255):print"q:トップ画面"+chr$(13)
16860 COLOR rgb(255,255,255):print"エンターキー:もう一度調べる"+chr$(13)
16870 color rgb(0,0,0):print"コマンド:"
16880 key$=Input$(1)
16890 if key$="q" or key$="Q" then goto Main_Screen:
16900 if key$=chr$(13) then goto Entry_moji_Top:
16910 'goto 14620
16920 else
16930 'グラフィック描画領域　ここから
16940 'Entry_moji_check:
16950 cls 3
16960 '1行目
16970 line (0,0)-(840,58),rgb(0,0,255),bf
16980 pen 5:line(0,0)-(837,55),rgb(127,255,212),b
16990 '2行目
17000 line (0,58)-(840,100),rgb(127,255,212),bf
17010 PEN 5:line(0,55)-(837,97),rgb(0,0,0),b
17020 '3行目
17030 line (0,100)-(840,280),rgb(0,0,255),bf
17040 pen 5:LINE(0,103)-(837,277),rgb(127,255,212),b
17050 '4行目
17060 line (0,280)-(840,340),rgb(0,255,0),bf
17070 pen 5:line(0,277)-(837,337),rgb(0,0,0),b
17080 'グラフィック描画領域　ここまで
17090 color rgb(255,255,255):print "登録文字画数結果表示"
17100 talk "この文字は"+ str$(buffer_count) +"かくでとうろくされています":color rgb(255,0,255):print name$;":";buffer_count;"画で登録されています":
17110 endif
17120 color rgb(255,255,255)
17130 print"q+エンターキー:トップ画面"+chr$(13)
17140 print"エンターキー:もう一度やる"+chr$(13)
17150 color rgb(0,0,0)
17160 print"コマンド:"
17170 key$=Input$(1)
17180 if key$=chr$(13)  then buffer_count=0:goto Entry_moji_Top:
17190 if key$="q" then buffer_count=0:goto Main_Screen:
17200 if not(key$="q") then goto Moji_count_check:
17210 'Menu2 名前の陰陽を見る
17220 'グラフィック描画領域 ここから
17230 name_inyo_check:
17240 cls 3:line (0,0)-(800,60),rgb(0,0,255),bf
17250 PEN 5:line(0,0)-(797,57),rgb(127,255,212),b
17260 LINE (0,60)-(800,250),rgb(127,255,212),bf
17270 pen 5:line (0,57)-(797,247),rgb(0,0,255),b
17280 line (0,250)-(800,350),rgb(0,255,0),bf
17290 pen 5:line(0,247)-(797,347),rgb(0,0,255),b
17300 'グラフィック描画領域　ここまで
17310 cls
17320 color rgb(255,255,255)
17330 print"名前の陰陽を見る"+chr$(13)
17340 COLOR rgb(255,0,255)
17350 PRINT"(●:陽,○:陰)"+chr$(13)
17360 print"調べたい名前苗字を入れてください"+chr$(13)
17370 color rgb(0,0,0)
17380 Input"調べたい名前の苗字:",name$
17390 if name$="" then goto name_inyo_check:
17400 'Menu2 陰陽の吉凶を見る 名入力
17410 cls:color rgb(255,255,255)
17420 print"名前の陰陽を見る"+chr$(13)
17430 color rgb(255,0,255)
17440 print"(●:陽,○:陰)"+chr$(13)
17450 print"調べたい名前の名を入れてください"+chr$(13)
17460 color rgb(0,0,0)
17470 Input"調べたい名前の名:",name2$
17480 if name2$="" then goto name_inyo_check:
17490 for i=0 to len(name$)-1
17500 name_array$(i)=Mid$(name$,i+1,1)
17510 if char_count(name_array$(i)) mod 2 = 1  then
17520 name_array$(i)="○":buffer$=buffer$+name_array$(i)
17530 else
17540 name_array$(i)="●":buffer$=buffer$+name_array$(i)
17550 endif
17560 next i
17570 for i=0 to len(name2$)-1
17580 name_array2$(i)=Mid$(name2$,i+1,1)
17590 if char_count(name_array2$(i)) mod 2 = 1 then
17600 name_array2$(i)="○":buffer2$=buffer2$+name_array2$(i)
17610 else
17620 name_array2$(i)="●":buffer2$=buffer2$+name_array2$(i)
17630 endif
17640 next i
17650 bufname$=buffer$+buffer2$
17660 '陰陽のタイプ ここから
17670 select case (len(bufname$))
17680 '2文字
17690 case 2:
17700 if ((bufname$="○●") or (bufname$="●○")) then buffer_name$="吉相:姓名2字の陰陽吉相"
17710 '
17720 '  endif
17730 if ((bufname$="○○") or (bufname$="●●")) then buffer_name$ = "一律陰陽:大凶相"
17740 '  endif
17750 '3文字
17760 case 3:
17770 if (((bufname$)="●○○") or ((bufname$)="○○●") or ((bufname$)="●●○") or ((bufname$)="○●●")) then buffer_name$="吉相:姓名3字陰陽吉相"
17780 if (((bufname$)="●○●") or ((bufname$)="○●○")) then buffer_name$="凶相:ハサミ陰陽"
17790 if (((bufname$)="●●●") or ((bufname$)="○○○")) then buffer_name$="大凶相:一律陰陽"
17800 '4文字
17810 case 4:
17820 if bufname$="●○●○" or bufname$="○●○●" or bufname$ ="●●○●" or bufname$ ="○○●○" or bufname$="●○●●" or bufname$="○●○○" then buffer_name$="吉相:陰陽吉相"
17830 if bufname$="●○○●" or bufname$="○●●○" then buffer_name$="凶相:ハサミ陰陽"
17840 if bufname$="○○○●" or bufname$="●●●○"  then buffer_name$="凶相:片寄り陰陽"
17850 if bufname$="●●○○" or bufname$="○○●●"  then buffer_name$="大凶相:分離陰陽"
17860 if bufname$ ="●●●●" or bufname$ = "○○○○"  then buffer_name$="大凶相:一律陰陽"
17870 '5文字
17880 case 5:
17890 if bufname$="○●○○●" or bufname$="●○●●○" or bufname$="○●○●●" or bufname$="●○●○○" or bufname$="●○○●○" or bufname$="●○●●●" or bufname$="○●○○○" or bufname$="○○●○●" or  bufname$="●●○○●" or bufname$="●○○●●" or bufname$="○○●●○" or bufname$="○●●○○"  or bufname$="○●○○○" or bufname$="●●●○●" or bufname$="○●○●●" Then buffer_name$="吉相:陰陽吉相"
17900 if bufname$="○○●○○" or bufname$="●●○●●" then buffer_name$="大凶相:中縛り陰陽"
17910 if bufname$="●●●○○" or bufname$="○○○●●" then buffer_name$="大凶相:分離陰陽"
17920 if bufname$="○●●●○" or bufname$="●○○○●" or bufname$="●○●○●" or bufname$="○●○●○" then buffr_name$="凶相:ハサミ陰陽"
17930 case 6:
17940 if bufname$="○○○○○○" or bufname$="●●●●●●" then buffer_name$="大凶相:一律陰陽"
17950 if bufname$="●●●○○○" or bufname$="○○○●●●" then buffer_name$="大凶相:分離陰陽"
17960 if bufname$="○○●●○○" or bufname$="●●○○●●" then buffer_name$="大凶相:中縛り陰陽"
17970 if bufname$="○●○○○●" or bufname$="○●○●○○" or bufname$="●○●●●○" or bufname$="●○●○●●" or bufname$="●○○●○○" or bufname$="○●●○●●" then buffer_name$="吉相:陰陽吉相"
17980 case else:
17990 buffer_name$="例外に入りました"
18000 end select
18010 '陰陽のタイプ　ここまで
18020 'グラフィック描画領域　ここから
18030 cls 2
18040 line (0,0)-(850,60),rgb(0,0,250),bf
18050 pen 5:line(0,0)-(847,57),rgb(127,255,212),b
18060 line (0,60)-(850,285),rgb(127,255,212),bf
18070 pen 5:line(0,57)-(847,282),rgb(0,0,255),b
18080 line (0,280)-(850,380),rgb(0,255,0),bf
18090 pen 5:line(0,277)-(847,377),rgb(0,0,255),b
18100 'グラフィック描画領域 ここまで
18110 color rgb(255,255,255)
18120 cls:print"名前:";name$ + name2$ + chr$(13)
18130 color rgb(255,0,255)
18140 print"陰陽配列(陽:●,陰:○)";buffer$ + buffer2$ + chr$(13)
18150 print buffer_name$;chr$(13)
18160 color rgb(0,0,0)
18170 print"エンターキーを押してください"
18180 key$=Input$(1)
18190 if key$ = chr$(13) then buffer$="":buffer2$="": goto Main_Screen:
18200 'Menu3
18210 '登録文字数の確認
18220 Entry_moji_check:
18230 totalmoji=Moji_1+Moji_2+Moji_3+Moji_4+Moji_5+Moji_6+Moji_7+Moji_8+Moji_9+Moji_10+Moji_11+Moji_12+Moji_13+Moji_14+Moji_15+Moji_16+Moji_17+Moji_18+Moji_19+Moji_20+Moji_21+Moji_21+Moji_22+Moji_23+Moji_24:
18240 'グラフィック描画領域　ここから
18250 cls 3
18260 '1行目
18270 line (0,0)-(800,60),rgb(0,0,255),bf
18280 pen 5:line (0,0)-(797,57),rgb(127,255,212),b
18290 '2行目
18300 line (0,60)-(800,150),rgb(157,255,212),bf
18310 pen 5:line(0,57)-(797,147),rgb(0,0,255),b
18320 '3行目
18330 line (0,150)-(800,250),rgb(0,255,0),bf
18340 pen 5:line(0,147)-(797,247),rgb(0,0,255),b
18350 'グラフィック描画領域 ここまで
18360 color rgb(255,255,255)
18370 PRINT"登録文字数の確認"+chr$(13)
18380 color rgb(255,0,255)
18390 PRINT"登録文字数は";totalmoji;"文字です"+chr$(13)
18400 TALK"登録文字数は"+str$(totalmoji)+"もじです"
18410 color rgb(0,0,0)
18420 'print"エンターキーを押してください"+chr$(13)
18430 'key$=Input$(1)
18440 print"エンターキーを押してください"
18450 key$=Input$(1)
18460 if key$ = chr$(13) then goto Main_Screen:
18470 'Menu2 文字の総数で名前の吉凶を見る（総数で判定)
18480 nick_name_check:
18490 talk"名前の総数で吉凶を判定します。ニックネームの名前を入れてください"
18500 'グラフィック描画領域　ここから
18510 cls 3:font 32
18520 line (0,0)-((1100*2)/3,(60*2)/3),rgb(0,0,250),bf
18530 pen 5:line(0,0)-((1097*2)/3,(57*2)/3),rgb(127,255,212),b
18540 line (0,(60*2)/3)-((1100*2)/3,(160*2)/3),rgb(127,255,212),bf
18550 pen 5:line(0,(57*2)/3)-((1097*2)/3,(157*2)/3),rgb(0,0,255),b
18560 line (0,(160*2)/3)-((1100*2)/3,(270*2)/3),rgb(0,255,0),bf
18570 pen 5:line(0,(157*2)/3)-((1097*2)/3,(267*2)/3),rgb(0,0,255),b
18580 'グラフィック描画領域　ここまで
18590 buf=0:cls
18600 color rgb(255,255,255)
18610 Print"名前(ニックネーム)の総数で吉凶を判断します"+chr$(13)
18620 color rgb(255,0,255)
18630 PRINT"名前(ニックネーム)を入れてください"+chr$(13)
18640 color rgb(0,0,0)
18650 Input"名前:",name$
18660 if name$="" then goto nick_name_check:
18670 for n=0 to (len(name$)-1)
18680 buf_Input_data$(n)=mid$(name$,n+1,1)
18690 buf=buf+char_count(buf_Input_data$(n))
18700 next n
18710 if buf=0 then ui_msg"登録文字がございません。":talk"登録文字がございません":goto nick_name_check:
18720 '結果表示　グラフィック　ここから
18730 cls 3:font 32
18740 line (0,0)-((1100*2)/3,(60*2)/3),rgb(0,0,255),bf
18750 pen 5:line(0,0)-((1097*2)/3,(57*2)/3),rgb(127,255,212),b
18760 line (0,(60*2)/3)-((1100*2)/3,(160*2)/3),rgb(127,255,212),bf
18770 pen 5:line(0,(57*2)/3)-((1097*2)/3,(157*2)/3),rgb(0,0,255),b
18780 line (0,(160*2)/3)-((1100*2)/3,(540*2)/3),rgb(0,255,0),bf
18790 pen 5:line(0,(157*2)/3)-((1097*2)/3,(537*2)/3),rgb(0,0,255),b
18800 '結果表示 グラフィック領域 ここまで
18810 color rgb(255,255,255):print name$;"の総数:";buf;chr$(13)
18820 color rgb(255,0,255):print name$;"の吉凶:";buf_Kikkyo$(buf-1);chr$(13)
18830 color rgb(0,0,0)
18840 print "番号を選んでください"+chr$(13)
18850 PRINT "エンターキー:もう一度やる"+chr$(13)
18860 print "q:トップに戻る"+chr$(13)
18870 print "コマンド:"
18880 key$=Input$(1)
18890 if key$="q" then font 48:goto Main_Screen:
18900 if key$=chr$(13) then font 48:goto nick_name_check:
18910 'if No > 2 then goto 18330
18920 '名前2文字
18930 'グラフィック描画領域　ここから
18940 Result_Anzai:
18950 CLS 3:font 32
18960 line (0,0)-((1400*2)/3,(60*2)/3),rgb(0,0,255),bf
18970 pen 5:line(0,0)-((1397*2)/3,(57*2)/3),rgb(127,255,212),b
18980 line (0,(60*2)/3)-((1400*2)/3,(540*2)/3),rgb(127,255,212),bf
18990 pen 5:line(0,(57*2)/3)-((1397*2)/3,(537*2)/3),rgb(0,0,255),b
19000 line (0,(540*2)/3)-((1400*2)/3,(860*2)/3),rgb(0,255,0),bf
19010 pen 5:line(0,(537*2)/3)-((1397*2)/3,(857*2)/3),rgb(0,0,255),b
19020 'グラフィック描画領域 ここまで
19030 color rgb(255,255,255):print"名前:";bufname$;bufname2$;chr$(13)
19040 color rgb(255,0,255)
19050 print"天運";buf_tenunn;chr$(13)
19060 print"地運";buf_chiunn;",地運の吉凶(初年運:0〜20歳):";buf_Kikkyo_Anzai_chiunn$(buf_chiunn-1);chr$(13)
19070 print"人運";buf_jinunn;",人運の吉凶(中年運:20〜50歳):";buf_Kikkyo_Anzai_jinunn$(buf_jinunn-2);chr$(13)
19080 print"外運";buf_gaiunn;chr$(13)
19090 print"総数";buf_total;",総運の吉凶(晩年運:50歳以上):";buf_Kikkyo_Anzai_total$(buf_total-2);chr$(13)
19100 COLOR rgb(0,0,0)
19110 PRINT"q+エンターキー:トップ画面"+chr$(13)
19120 print"エンターキー:もう一度、吉凶をみる"+chr$(13)
19130 print "コマンド:"
19140 key$=Input$(1)
19150 if key$=chr$(13) then font 32:goto Anzai_Top_Screen:
19160 if key$="q" or key$="Q" then font 48:goto Main_Screen:
19170 '参考文献 表示 ここから
19180 'グラフィック描画領域　 ここから
19190 Document_info:
19200 cls 3
19210 line (0,0)-(1100,60),rgb(0,0,255),bf
19220 pen 5:line(0,0)-(1097,57),rgb(127,255,212),b
19230 line (0,60)-(1100,650),rgb(127,255,212),bf
19240 pen 5:line(0,57)-(1097,647),rgb(0,0,255),b
19250 line (0,650)-(1100,730),rgb(0,255,0),bf
19260 pen 5:line(0,647)-(1097,727),rgb(0,0,255),b
19270 'グラフィック描画領域  ここまで
19280 '参考文献１
19290 cls
19300 color rgb(255,255,255)
19310 print"◎参考文献"+chr$(13)
19320 color rgb(255,0,255)
19330 print "参考文献 １/4"+chr$(13)
19340 print "Title:九星姓名判断"+chr$(13)
19350 print "Author:高嶋　 美伶"+chr$(13)
19360 print "出版社:日本文芸者"+chr$(13)
19370 print "ISBN:4-537-20073-1"+chr$(13)
19380 print "定価:1,200+税"+chr$(13)
19390 color rgb(0,0,0)
19400 print "エンターキーを押してください"
19410 key$=Input$(1)
19420 if key$=chr$(13)  then goto Document_info2:
19430 '参考文献２
19440 Document_info2:
19450 cls
19460 color rgb(255,255,255)
19470 print "◎参考文献"+chr$(13)
19480 color rgb(255,0,255)
19490 print "参考文献 ２/4"+chr$(13)
19500 print "Title:究極の姓名判断"+chr$(13)
19510 print "Author:安斎　勝洋"+chr$(13)
19520 print "出版社:説話社"+chr$(13)
19530 print "ISBN:978-4-916217-61-5"+chr$(13)
19540 print "定価:1,800円+税"+chr$(13)
19550 color rgb(0,0,0)
19560 print"エンターキーを押してください"
19570 key$=Input$(1)
19580 if key$=chr$(13) then goto Document_info3:
19590 '参考文献３
19600 Document_info3:
19610 cls
19620 color rgb(255,255,255)
19630 print"◎参考文献"+chr$(13)
19640 color rgb(255,0,255)
19650 print "参考文献 3/4"+chr$(13)
19660 print "Title:新明解現在漢和辞典"+chr$(13)
19670 print "Author:影山輝國(編集主幹)他"+chr$(13)
19680 print "出版社:三省堂"+chr$(13)
19690 print "ISBN:978-4-385-13755-1"+chr$(13)
19700 print "定価:2,800円 + 税"+chr$(13)
19710 color rgb(0,0,0)
19720 print "エンターキーを押してください"
19730 key$=Input$(1)
19740 if key$=chr$(13) then goto Document_info4:
19750 '参考文献４　
19760 '描画領域　ここから
19770 Document_info4:
19780 cls 3
19790 line (0,0)-(1100,60),rgb(0,0,255),bf
19800 line (0,0)-(1100,57),rgb(0,255,0),b
19810 line (0,60)-(1100,650),rgb(127,255,212),bf
19820 LINE (0,60)-(1100,647),rgb(0,0,255),b
19830 LINE (0,650)-(1100,830),rgb(0,255,0),bf
19840 line (0,650)-(1100,833),rgb(0,0,255),b
19850 '描画領域　ここまで
19860 'cls
19870 color rgb(255,255,255)
19880 print "◎参考文献"+chr$(13)
19890 COLOR rgb(255,0,255)
19900 print "参考文献 4/4" + chr$(13)
19910 print "Title:姓名の暗号" + chr$(13)
19920 print "Author:樹門　幸宰(じゅもん こうざい)"+chr$(13)
19930 print "出版社:幻冬舎"+chr$(13)
19940 print "定価:1400円 + 税"+chr$(13)
19950 print "ISBN:4-344-00777-8"+chr$(13)
19960 color rgb(0,0,0)
19970 print "参考文献トップに行く:エンターキー"+chr$(13)
19980 print "スペース：トップメニューに行く"+chr$(13)
19990 key$=Input$(1)
20000 'トップ画面に戻る
20010 if key$ = " " then goto help:
20020 if key$ = chr$(13) then goto Document_info:
20030 '安斎流姓名判断　メニュー
20040 'グラフィック領域　ここから
20050 Anzai_Top:
20060 cls 3
20070 line (0,0)-(1000,60),rgb(0,0,255),bf
20080 pen 5:line(0,0)-(997,57),rgb(127,255,212),b
20090 line (0,60)-(1000,475),rgb(127,255,212),bf
20100 pen 5:line(0,57)-(997,472),rgb(0,0,255),b
20110 line (0,475)-(1000,650),rgb(0,255,0),bf
20120 pen 5:line(0,472)-(997,647),rgb(0,0,255),b
20130 'グラフィック描画領域　ここまで
20140 color rgb(255,255,255)
20150 print "安斎流姓名判断　トップメニュー" + chr$(13)
20160 color rgb(255,0,255)
20170 print "1.安斎流姓名判断 相性占い" + chr$(13)
20180 print "2.安斎流姓名判断 名前の吉凶判定" + chr$(13)
20190 print "3.安斎流姓名判断 改名チェック" + chr$(13)
20200 print "4.前の画面に戻る"+chr$(13)
20210 color rgb(0,0,0)
20220 print"番号を選んでください"+chr$(13)
20230 Input "番号:",key
20240 if key=2 then goto Anzai_Top_Screen:
20250 if key=3 then goto Anzai_Kaimei_Check:
20260 if key=1 then goto Anzai_Aishou_Top1:
20270 if key=4 then goto seimeihandan_top:
20280 if key > 4 or key = 0 then goto Anzai_Top:
20290 '2.安斎流姓名判断　男女の相性占い　ここから
20300 'グラフィック描画領域 ここから
20310 Anzai_Aishou_Top1:
20320 cls 3
20330 '1行目
20340 line (0,0)-(800,60),rgb(0,0,255),bf
20350 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
20360 '2行目
20370 line (0,60)-(800,160),rgb(127,255,212),bf
20380 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
20390 '3行目
20400 line (0,160)-(800,300),rgb(0,255,0),bf
20410 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
20420 'グラフィック描画領域　男女の相性占い ここまで
20430 'if s1=1 then goto 20140
20440 'if s1=2 then goto 20300
20450 '1.名前の姓を入力  男性
20460 'Anzai_Aishou_Top1:
20470 color rgb(255,255,255)
20480 print "安斎流姓名判断　相性占い(男性)"+chr$(13)
20490 color rgb(255,0,255)
20500 print "男性の名前(姓)を入れてください"+chr$(13)
20510 color rgb(0,0,0)
20520 Input "男性の名前(姓):",name$
20530 '2.名前の名を入力  男性
20540 cls 3
20550 line (0,0)-(800,60),rgb(0,0,255),bf
20560 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
20570 '2行目
20580 line (0,60)-(800,160),rgb(127,255,212),bf
20590 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
20600 '3行目
20610 line (0,160)-(800,300),rgb(0,255,0),bf
20620 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
20630 color rgb(255,255,255)
20640 print "安斎流姓名判断 相性占い(男性)"+chr$(13)
20650 color rgb(255,0,255)
20660 print "男性の名前（名）をいれてください"+chr$(13)
20670 color rgb(0,0,0)
20680 Input "男性の名前(名):",name2$
20690 'if s2=2 then goto 20500
20700 '3.名前(姓)入力 女性
20710 Anzai_Aishou_Top2:
20720 cls 3
20730 line (0,0)-(800,60),rgb(0,0,255),bf
20740 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
20750 '2行目
20760 line (0,60)-(800,160),rgb(127,255,212),bf
20770 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
20780 '3行目
20790 line (0,160)-(800,300),rgb(0,255,0),bf
20800 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
20810 color rgb(255,255,255)
20820 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
20830 color rgb(255,0,255)
20840 print "女性の名前(姓)を入れてください"+chr$(13)
20850 color rgb(0,0,0)
20860 Input"女性の名前:",name3$
20870 '4.名前（名)入力 女性
20880 cls 3
20890 line (0,0)-(800,60),rgb(0,0,255),bf
20900 pen 5:line(0,0)-(797,57),rgb(127,255,252),b
20910 '2行目
20920 line (0,60)-(800,160),rgb(127,255,212),bf
20930 pen 5:line(0,57)-(797,157),rgb(0,0,255),b
20940 '3行目
20950 line (0,160)-(800,300),rgb(0,255,0),bf
20960 pen 5:line(0,157)-(797,297),rgb(0,0,255),b
20970 color rgb(255,255,255)
20980 print "安斎流姓名判断 相性占い(女性)"+chr$(13)
20990 color rgb(255,0,255)
21000 print "女性の名前（名）を入れてください"+chr$(13)
21010 color rgb(0,0,0)
21020 Input "女性の名前(名):",name4$
21030 '男性　の地運 を求める
21040 '姓名の合計数
21050 '1.男性 名前の文字数を求める
21060 '地運を求める
21070 buf_male_name1 = len(name$)
21080 buf_male_name2 = len(name2$)
21090 buf_male_count = buf_male_name1 + buf_male_name2
21100 '2.女性 名前の文字数を求める
21110 buf_female_name1 = len(name3$)
21120 buf_female_name2 = len(name4$)
21130 buf_female_count = buf_female_name1 + buf_female_name2
21140 'goto Anzai_Aishou_Check:
21150 '1.男性の地運を求める
21160 select case buf_male_count
21170 case 2:
21180 '男性の地運を求める
21190 buf_chiunn=char_count(name2$)
21200 case 3:
21210 '姓が一文字 名が2文字
21220 if buf_male_name1=1 and buf_male_name2=2 then
21230 buf_Input_name$(0)=mid$(name2$,1,1)
21240 buf_Input_name$(1)=mid$(name2$,2,1)
21250 '地運を計算
21260 buf_chiunn=char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
21270 endif
21280 if buf_male_name1=2 and buf_male_name2=1 then
21290 buf_Input_name$(0)=Mid$(name2$,1,1)
21300 buf_chiunn=char_count(buf_Input_name$(0))
21310 endif
21320 case 4:
21330 '1.姓１，名３
21340 if bufmale_name1=1 and buf_male_name2=3 then
21350 buf_Input_name$(0)=Mid$(name2$,1,1)
21360 buf_Input_name$(1)=Mid$(name2$,2,1)
21370 buf_Input_name$(2)=Mid$(name2$,3,1)
21380 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
21390 endif
21400 '2.姓２,名２
21410 if buf_male_name1=2 and buf_male_name2=2 then
21420 buf_Input_name$(0)=Mid$(name2$,1,1)
21430 buf_Input_name$(1)=Mid$(name2$,2,1)
21440 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
21450 endif
21460 '3.姓３、名１
21470 if buf_male_name1=3 and buf_male_name2=1 then
21480 buf_Input_name$(0)=Mid$(name2$,1,1)
21490 '地運を求める
21500 buf_chiunn=char_count(buf_Input_name$(0))
21510 endif
21520 case 5:
21530 '1.姓２，名３
21540 if buf_male_name1 = 2 and buf_male_name2 = 3 then
21550 buf_Input_name$(0)=Mid$(name2$,1,1)
21560 buf_Input_name$(1)=Mid$(name2$,2,1)
21570 buf_Input_name$(2)=Mid$(name2$,3,1)
21580 '地運を求める
21590 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
21600 endif
21610 '2.姓３，名２
21620 if buf_male_name1=3 and buf_male_name2=2 then
21630 buf_Input_name$(0)=Mid$(name2$,1,1)
21640 buf_Input_name$(1)=Mid$(name2$,2,1)
21650 '地運を求める
21660 buf_chiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(1))
21670 endif
21680 '3.姓４、名１
21690 buf_Input_name$(0)=Mid$(name2$,1,1)
21700 '地運を求める
21710 buf_chiunn = char_count(buf_Input_name$(0))
21720 case 6:
21730 '1.姓３，名３
21740 if buf_male_name1=3 and buf_male_name2=3 then
21750 buf_Input_name$(0)=Mid$(name2$,1,1)
21760 buf_Input_name$(1)=Mid$(name2$,2,1)
21770 buf_Input_name$(2)=Mid$(name2$,3,1)
21780 '地運を求める
21790 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))+char_count(buf_Input_name$(2))
21800 endif
21810 '２.姓４，名２
21820 if buf_male_name1=4 and buf_male_name2=2 then
21830 buf_Input_name$(0)=Mid$(name2$,1,1)
21840 buf_Input_name$(1)=Mid$(name2$,2,1)
21850 '地運を求める
21860 buf_chiunn = char_count(buf_Input_name$(0)) + char_count(buf_Input_name$(1))
21870 endif
21880 case else:
21890 end select
21900 'if s1=1 then goto 26100
21910 'if s2=2 then goto 23820
21920 '2.女性　外運を求める
21930 select case buf_female_count
21940 '姓と名の合計数
21950 case 2:
21960 buf_Input_name2$(0)=Mid$(name3$,1,1)
21970 buf_Input_name2$(1)=Mid$(name4$,1,1)
21980 buf_gaiunn=char_count(buf_Input_name2$(0)) + char_count(buf_Input_name2$(1))
21990 case 3:
22000 if buf_female_name1=2 and buf_female_name2=1 then
22010 buf_Input_name2$(0)=Mid$(name3$,1,1)
22020 buf_Input_name2$(1)=Mid$(name3$,2,1)
22030 buf_Input_name2$(2)=Mid$(name4$,1,1)
22040 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
22050 endif
22060 if buf_female_name1=1 and buf_female_name2=2 then
22070 buf_Input_name2$(0)=Mid$(name3$,1,1)
22080 buf_Input_name2$(1)=Mid$(name4$,1,1)
22090 buf_Input_name2$(2)=Mid$(name4$,2,1)
22100 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))
22110 endif
22120 case 4:
22130 '姓１、名３
22140 if buf_female_name1=1 and buf_female_name2=3 then
22150 buf_Input_name2$(0)=Mid$(name3$,1,1)
22160 buf_Input_name2$(1)=Mid$(name4$,1,1)
22170 buf_Input_name2$(2)=Mid$(name4$,2,1)
22180 buf_Input_name2$(3)=Mid$(name4$,3,1)
22190 '外運を求める
22200 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(2))+char_count(buf_Input_name2$(3))
22210 endif
22220 '姓２,名２
22230 if buf_female_name1=2 and buf_female_name2=2 then
22240 buf_Input_name2$(0)=Mid$(name3$,1,1)
22250 buf_Input_name2$(1)=Mid$(name3$,2,1)
22260 buf_Input_name2$(2)=Mid$(name4$,1,1)
22270 buf_Input_name2$(3)=Mid$(name4$,2,1)
22280 '外運を求める
22290 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(3))
22300 endif
22310 '姓３，名１
22320 if buf_female_name1=3 and buf_female_name2=1 then
22330 buf_Input_name2$(0)=Mid$(name3$,1,1)
22340 buf_Input_name2$(1)=Mid$(name3$,2,1)
22350 buf_Input_name2$(2)=Mid$(name3$,3,1)
22360 buf_Input_name2$(3)=Mid$(name4$,1,1)
22370 '外運を求める
22380 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(3))
22390 endif
22400 case 5:
22410 '姓 3,名2
22420 if buf_female_name1 = 3 and buf_female_name2 = 2 then
22430 buf_Input_name2$(0)=Mid$(name3$,1,1)
22440 buf_Input_name2$(1)=Mid$(name3$,2,1)
22450 buf_Input_name2$(2)=Mid$(name3$,3,1)
22460 buf_Input_name2$(3)=Mid$(name4$,1,1)
22470 buf_Input_name2$(4)=Mid$(name4$,2,1)
22480 '外運を求める
22490 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))
22500 endif
22510 '姓４、名１
22520 if buf_female_name1=4 and buf_female_name2=1 then
22530 buf_Input_name2$(0)=Mid$(name3$,1,1)
22540 buf_Input_name2$(1)=Mid$(name3$,2,1)
22550 buf_Input_name2$(2)=Mid$(name3$,3,1)
22560 buf_Input_name2$(3)=Mid$(name3$,4,1)
22570 buf_Input_name2$(4)=Mid$(name4$,1,1)
22580 '外運を求める
22590 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(4))
22600 endif
22610 '姓２、名３
22620 if buf_female_name1 = 2 and buf_female_name2 = 3 then
22630 buf_Input_name2$(0)=Mid$(name3$,1,1)
22640 buf_Input_name2$(1)=Mid$(name3$,2,1)
22650 buf_Input_name2$(2)=Mid$(name4$,1,1)
22660 buf_Input_name2$(3)=Mid$(name4$,2,1)
22670 buf_Input_name2$(4)=Mid$(name4$,3,1)
22680 '外運を求める
22690 buf_gaiunn=char_count(buf_Input_name$(0))+char_count(buf_Input_name$(3))+char_count(buf_Input_name$(4))
22700 endif
22710 case 6:
22720 '1.姓３，名３
22730 if buf_female_name1=3 and buf_female_name2=3 then
22740 buf_Input_name2$(0)=Mid$(name3$,1,1)
22750 buf_Input_name2$(1)=Mid$(name3$,2,1)
22760 buf_Input_name2$(2)=Mid$(name3$,3,1)
22770 buf_Input_name2$(3)=Mid$(name4$,1,1)
22780 buf_Input_name2$(4)=Mid$(name4$,2,1)
22790 buf_Input_name2$(5)=Mid$(name4$,3,1)
22800 '外運を求める
22810 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name2$(4))+char_count(buf_Input_name$(5))
22820 endif
22830 '2.姓４，名２
22840 if buf_female_name1=4 and buf_female_name2=2 then
22850 buf_Input_name2$(0)=Mid$(name3$,1,1)
22860 buf_Input_name2$(1)=Mid$(name3$,2,1)
22870 buf_Input_name2$(2)=Mid$(name3$,3,1)
22880 buf_Input_name2$(3)=Mid$(name3$,4,1)
22890 buf_Input_name2$(4)=Mid$(name4$,1,1)
22900 buf_Input_name2$(5)=Mid$(name4$,2,1)
22910 '外運を求める
22920 buf_gaiunn=char_count(buf_Input_name2$(0))+char_count(buf_Input_name2$(1))+char_count(buf_Input_name$(5))
22930 endif
22940 case 7:
22950 '1姓４，名３
22960 '外運を求める
22970 end select
22980 'if s=1 then goto Anzai_Aishou_Check:
22990 'if s2=2 then goto Anzai_Aishou_Check:
23000 'goto 26340
23010 func buf_number(a)
23020 if a < 10 then
23030 buf_tansu = a
23040 endif
23050 if a > 9 and a < 20 then
23060 buf_tansu = a - 10
23070 endif
23080 if a > 19 and a < 30 then
23090 buf_tansu = a - 20
23100 endif
23110 buffer = buf_tansu
23120 endfunc buffer
23130 check$="No Data"
23140 func Aisyou_type$(man,woman)
23150 Result$="No data"
23160 'check$="No data"
23170 '1.理解し合える最良のカップル
23180 '1のFor文
23190 for i=0 to 19
23200 if buf_good_couple1(i) = man and buf_good_couple2(i) = woman then
23210 Result$ = "1.理解し合える最良のカップル"
23220 check$="○"
23230 ResultNo = 0
23240 endif
23250 if buf_natural_couple1(i) = man and  buf_natural_couple2(i) = woman then
23260 Result$="2.互いに自然体でつきあえるカップル"
23270 ResultNo=1
23280 check$="○"
23290 endif
23300 '3.男性にとって居心地の良いカップル
23310 if buf_good_for_man1(i)= man AND buf_good_for_man2(i)= woman then
23320 Result$="3.男性にとって居心地の良いカップル"
23330 ResultNo=2
23340 check$="△"
23350 endif
23360 '4.女性にとって居心地の良いカップル
23370 if buf_good_for_woman1(i) = man AND buf_good_for_woman2(i) = woman then
23380 Result$ = "4.女性にとって居心地の良いカップル"
23390 ResultNo=3
23400 check$="△"
23410 endif
23420 '5.恋愛経験を重ねた後なら愛を育める
23430 'for i=0 to 9
23440 'for j=0 to 9
23450 if short_of_experience1(i) = man AND short_of_experience2(i) = woman then
23460 Result$="5.恋愛経験を重ねた後なら愛を育める"
23470 ResultNo=4
23480 check$="×"
23490 endif
23500 'next j
23510 'next i
23520 '6
23530 if buf_difficult_for_couple1(i)=man AND  buf_difficult_for_couple2(i)=woman then
23540 Result$="6.結婚への発展が困難なカップル"
23550 check$="×"
23560 endif
23570 '7
23580 if buf_difference_of_love1(i)=man AND buf_difference_of_love2(i)=woman then
23590 Result$="7.愛し方にずれが出てくる二人"
23600 check$="×"
23610 endif
23620 '8
23630 if buf_difference_of_KachiKan1(i)=man AND buf_difference_of_KachiKan2(i)=woman  then
23640 Result$="8.互いに価値観が噛み合わない相性"
23650 check$="×"
23660 endif
23670 next i
23680 'bufAisyou$ = Result$
23690 endfunc  Result$
23700 Anzai_Aishou_Check:
23710 cls 3:font 32
23720 buf_t_chiunn = buf_number(buf_chiunn)
23730 buf_t_gaiunn=buf_number(buf_gaiunn)
23740 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
23750 'グラフィック描画領域　ここから
23760 'Title欄
23770 line(0,0)-((1300*2)/3,(60*2)/3),rgb(0,0,255),bf
23780 pen 5:line(0,0)-((1297*2)/3,(57*2)/3),rgb(127,255,212),b
23790 '結果表示欄
23800 line(0,(60*2)/3)-((1300*2)/3,(660*2)/3),rgb(127,255,212),bf
23810 pen 5:line(0,(57*2)/3)-((1297*2)/3,(662*2)/3),rgb(0,0,255),b
23820 'ボタン選択欄
23830 LINE(0,(660*2)/3)-((1300*2)/3,(860*2)/3),rgb(0,255,0),bf
23840 pen 5:line(0,(662*2)/3)-((1297*2)/3,(862*2)/3),rgb(0,0,255),b
23850 'グラフィック描画領域　ここまで
23860 'buf_t_chiunn=buf_number(buf_chiunn):buf_t_gaiunn=buf_number(buf_gaiunn)
23870 color rgb(255,255,255)
23880 print "安斎流姓名判断　相性占い　結果表示"+chr$(13)
23890 color rgb(255,0,255)
23900 print "男性の名前:";name$+name2$;chr$(13)
23910 print "地運の単数";buf_t_chiunn;chr$(13)
23920 print "女性の名前:";name3$+name4$;chr$(13)
23930 print "外運の単数";buf_t_gaiunn;chr$(13)
23940 print"二人の相性:";bufferAisyou$;chr$(13)
23950 print"相性判定:";check$;chr$(13)
23960 color rgb(0,0,0)
23970 print "トップ画面:エンターキー"+chr$(13)
23980 print "保存:S or s"+chr$(13)
23990 key$=Input$(1)
24000 if key$=chr$(13) then font 48:goto Main_Screen:
24010 '
24020 '保存してメイン画面に行く
24030 if key$="S" or key$="s" then font 48:goto ReiIden_Seimeihandan_data_Save:
24040 '改名チェック
24050 'グラフィック描画領域 ここから
24060 Anzai_Kaimei_Check:
24070 cls 3
24080 line (0,0)-(1050,60),rgb(0,0,255),bf
24090 pen 5:line(0,0)-(1047,57),rgb(125,255,212),b
24100 line (0,60)-(1050,440),rgb(127,255,212),bf
24110 pen 5:line (0,57)-(1047,447),rgb(0,0,2550),b
24120 line (0,440)-(1050,555),rgb(0,255,0),bf
24130 pen 5:line(0,447)-(1047,552),rgb(0,0,255),b
24140 'グラフィック描画領域 ここまで
24150 talk"ニックネームまたは会社名から改名が必要かチェックします、10文字以内で名前を入れてください"
24160 color rgb(255,255,255)
24170 print "安斎流姓名判断 改名チェッカー"+chr$(13)
24180 color rgb(255,0,255)
24190 print "総数で、改名が、必要か否かを調べます"+chr$(13)
24200 print "名前(ニックネーム or 会社名等)を"+chr$(13)
24210 print "を入れてください"+chr$(13)
24220 print "10文字までで入れてください"+chr$(13)
24230 color rgb(0,0,0)
24240 Input "名前:",name$
24250 '計算領域　ここから
24260 '名前から総運を計算
24270 '1.名前の文字数を出す
24280 n=len(name$)
24290 if n > 10 or n=0 then
24300 '文字数が10個までという表示
24310 'トーストで表示
24320 if n > 10 then
24330 ui_msg "文字は10個までです"
24340 else
24350 ui_msg "文字が空っぽです"
24360 endif
24370 goto Anzai_Aishou_Check:
24380 endif
24390 'それ以外
24400 '総数を出す処理を出す
24410 '画面消去　データー初期化
24420 cls 3:bufer_total=0
24430 'グラフィック描画領域 ここから
24440 line(0,0)-(950,60),rgb(0,0,255),bf
24450 pen 5:line(0,0)-(947,57),rgb(127,255,212),b
24460 line(0,60)-(950,300),rgb(127,255,212),bf
24470 pen 5:line(0,57)-(947,297),rgb(0,0,255),b
24480 line(0,300)-(950,540),rgb(0,255,0),bf
24490 pen 5:line(0,297)-(947,537),rgb(0,0,255),b
24500 'グラフィック描画領域 ここまで
24510 'cls 3
24520 color rgb(255,255,255)
24530 print"安斎流姓名判断　改名チェック　診断結果"+chr$(13)
24540 for i=0 to len(name$)-1
24550 buf_Input_name$(i)=Mid$(name$,i+1,1)
24560 bufer_total = char_count(buf_Input_name$(i)) + bufer_total
24570 next i
24580 buf_Kikkyo$=buf_Kikkyo_Anzai_total$(bufer_total-2)
24590 color rgb(255,0,255)
24600 print "名前:";name$
24610 print "この名前の総数:";bufer_total
24620 print "この名前の吉凶:";buf_Kikkyo$;"です"
24630 color rgb(255,0,255)
24640 buffer_total$ = Kaimei_check$(buf_Kikkyo_Anzai_total$(bufer_total - 2 ))
24650 print bufer_total$+chr$(13)
24660 'if buffer_K=0 or buffer_K=1  then
24670 'dim select$(2)
24680 'select$(0)="改名をする"
24690 'select$(1)="改名しない"
24700 'talk"改名しますか？"
24710 'color rgb(0,0,0)
24720 'Input"改名しますか？",key$
24730 'num=ui_select("select$","改名リストに追加しますか?")
24740 'num=0:改名リストに追加する
24750 'if num=0  then goto 28580
24760 'else
24770 'num=1:改名リストに追加しない
24780 'if num=1 then goto 24280
24790 'num=2:トップ画面に行く
24800 'if num=2 then goto 5820
24810 'endif
24820 'if buffer_K=0 then
24830 'print num,select$(num)
24840 color rgb(0,0,0)
24850 locate 0,7
24860 print"トップ画面:エンターキー" + chr$(13)
24870 print "保存する:S or s"+chr$(13)
24880 'データー保存項目追加
24890 key$ = Input$(1)
24900 if key$ = chr$(13) then goto Main_Screen:
24910 if key$ = "s" or key$ = "S" then goto Anzai_Save_data:
24920 'endif
24930 '改名チェック関数
24940 func Kaimei_check$(r$)
24950 if r$="大吉数" or r$="中吉数" or r$="小吉数" or r$="半吉数" or r$="六大吉数" or r$="吉数" then
24960 '改名の必要なし
24970 talk"この名前は改名の必要がございません。"
24980 print"この名前は、改名の必要はありません"+chr$(13)
24990 '改名の必要ナシの場合
25000 K=0
25010 buffer_K=K
25020 else
25030 '改名の必要あり
25040 Kaimei_check:
25050 talk"この名前は、改名の必要があります"
25060 print"この名前は、改名の必要があります"+chr$(13)
25070 color rgb(0,0,0)
25080 print"改名しますか？"
25090 K=1
25100 buffer_K=K
25110 '◎表示パターン
25120 'パターン１
25130 'color rgb(0,0,0)
25140 'Input"エンターキーを押してください",key$
25150 endif
25160 endfunc result$
25170 'ui_msg="1件追加しました,残り9件追加できます"
25180 'ファイルの存在確認 設定ファイル:mydata.dat
25190 cls
25200 '設定ファイルの確認
25210 if dir$("config/Parsonal_data/mydata.dat")="" then
25220 'print "File not found"+chr$(13)
25230 '1.ファイルがない時
25240 goto Kaimei_check:
25250 else
25260 'ファイルがある時
25270 goto 25830
25280 'goto 19920
25290 endif
25300 '1-1.ファイルがない時の処理
25310 '1-1.自分の姓名判断を入力
25320 'グラフィック描画領域 ここから
25330 cls 3
25340 '1行目
25350 line(0,0)-(1000,60),rgb(0,0,250),bf
25360 pen 5:line(0,0)-(997,57),rgb(127,255,212),b
25370 '2行目
25380 line(0,60)-(1000,80),rgb(127,255,212),bf
25390 pen 5:line(0,57)-(997,77),rgb(0,0,255),b
25400 '3行目
25410 line(0,80)-(1000,120),rgb(0,255,0),bf
25420 pen 5:line(0,77)-(997,117),rgb(0,0,255),b
25430 'グラフィック描画領域 ここまで
25440 '1.名前の姓の入力
25450 '1行目 Title
25460 color rgb(255,255,255)
25470 print"安斎流姓名判断　相性占い　自分のプロフィール入力"+chr$(13)
25480 '2行目 名前の姓を入力
25490 color rgb(255,0,255)
25500 print "自分の名前の姓を入れてください"+chr$(13)
25510 color rgb(0,0,0)
25520 'buf_name1$:自分の名前の姓
25530 Input"名前の姓:",buf_name1$
25540 '2.名前の名の入力
25550 '画面消去
25560 Anzai_myProfile2:
25570 cls
25580 '1行目 Title
25590 color rgb(255,255,255)
25600 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
25610 '2行目 名前の名の入力
25620 color rgb(255,0,255)
25630 print "自分の名前の名を入れてください"+chr$(13)
25640 color rgb(0,0,0)
25650 'buf_name2$:自分の名前の名
25660 input "名前の名:",buf_name2$
25670 '3.性別入力
25680 cls
25690 '1行目 Title
25700 color rgb(255,255,255)
25710 print "安斎流姓名判断 相性占い 自分のプロフィール入力"+chr$(13)
25720 '2行目 性別入力
25730 color rgb(255,0,255)
25740 print"自分の性別を入れてください(女性 or 男性)"+chr$(13)
25750 sex_type$(0)="女性"
25760 sex_type$(1)="男性"
25770 type=ui_select("sex_type$","性別を選んでください")
25780 '3行目
25790 '性別変数 sex_type$
25800 if type = 1 then
25810 print"自分の性別(女性 or 男性):";sex_type$(1)+chr$(13):sex_type$=sex_type$(1):goto 25210
25820 else
25830 print"自分の性別(女性 or 男性):";sex_type$(0)+chr$(13):sex_type$=sex_type$(0):goto Anzai_myProfile2:
25840 endif
25850 if sex_type$="男性" then
25860 name$=buf_name1$
25870 name2$=buf_name2$
25880 s=1
25890 goto Anzai_Aishou_Top1:
25900 endif
25910 If sex_type$="女性" then
25920 name3$=buf_name1$
25930 name4$=buf_name2$
25940 s=2
25950 goto Anzai_Aishou_Top2:
25960 endif
25970 '登録プロフィール確認画面
25980 Entry_Profile:
25990 cls 3
26000 'グラフィック描画領域　ここから
26010 '1行目
26020 line(0,0)-(1200,60),rgb(0,0,255),bf
26030 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
26040 '2行目
26050 line(0,60)-(1200,360),rgb(127,255,212),bf
26060 pen 5:line(0,57)-(1197,357),rgb(0,0,255),b
26070 '3行目
26080 line(0,100)-(1200,420),rgb(0,255,0),bf
26090 pen 5:line(0,97)-(1197,417),rgb(0,0,0),b
26100 if s2=2 then goto Entry_Profile:
26110 'グラフィック描画領域　ここまで
26120 '1行目 Title
26130 color rgb(255,255,255)
26140 print"安斎流姓名判断 自分のプロフィール　登録確認"+chr$(13)
26150 color rgb(255,0,255)
26160 print"名前:";buf_name1$+buf_name2$;chr$(13)
26170 PRINT"性別:";sex_type$;chr$(13)
26180 if sex_type$="女性" then
26190 print"外運:";buf_gaiunn;chr$(13)
26200 buffer$="外運:"+str$(buf_gaiunn)
26210 endif
26220 if sex_type$="男性" then
26230 print"地運:";buf_chiunn;chr$(13)
26240 buffer$="地運:"+str$(buf_chiunn)
26250 endif
26260 color rgb(0,0,0)
26270 input"(登録する:Yes/登録しない:No):",key$
26280 if key$="Yes" or key$="yes" then
26290 open "config/Parsonal_data/mydata.dat" for output as #1
26300 print #1,"名前:";buf_name1$+buf_name2$
26310 print #1,"性別:";sex_type$
26320 print #1,buffer$
26330 close #1
26340 ui_msg"データーを保存しました"
26350 goto Main_Screen:
26360 endif
26370 '２．設定ファイルが存在する場合
26380 'ファイル読み込み 自分のデーターを表示
26390 cls
26400 open "Config/Parsonal_data/mydata.dat" for input as #2
26410 line input #2,a$
26420 line input #2,b$
26430 line input #2,c$
26440 close #2
26450 buffername$=a$
26460 buffername2$=b$
26470 buffername3$=c$
26480 bufff$=Mid$(buffername$,1,3)
26490 buff2$=Mid$(buffername2$,1,3)
26500 buff3$=Mid$(buffername3$,1,3)
26510 n=len(a$)
26520 sextype$=Mid$(buffername2$,4,2)
26530 if sextype$="男性" then
26540 '男性:s2
26550 s2=1
26560 '女性のデーター入力
26570 goto Anzai_Top:
26580 endif
26590 if sextype$="女性" then
26600 s2=2
26610 '男性のデーター入力
26620 goto Anzai_Top:
26630 endif
26640 '女性のデーター結果表示
26650 '1.プロフィール性別男性の場合 ここから
26660 Result_Anzai_Aisyou:
26670 cls 3:font 32
26680 'グラフィック　領域
26690 line (0,0)-((1200*2)/3,(60*2)/3),rgb(0,0,255),bf
26700 line (0,0)-((1197*2)/3,(57*2)/3),rgb(127,255,212),b
26710 line (0,(60*2)/3)-((1200*2)/3,(360*2)/3),rgb(127,255,212),bf
26720 line (0,(57*2)/3)-((1197*2)/3,(357*2)/3),rgb(0,0,255),b
26730 line (0,(360*2)/3)-((1200*2)/3,(560*2)/3),rgb(0,255,0),bf
26740 line (0,(357*2)/3)-((1197*2)/3,(557*2)/3),rgb(255,255,255),b
26750 'グラフィック 領域
26760 color rgb(255,255,255)
26770 print "安斎流姓名判断　 相性占い　結果表示"+chr$(13)
26780 name_length = len(bufername$)
26790 myname$ = Mid$(buffername$,4,4)
26800 chiunn = val(Mid$(buffername3$,4,2))
26810 tansuu1 = buf_number(chiunn)
26820 bufname$ = name3$ + name4$
26830 bufferAisyou$ = Aisyou_type$(tansuu1,buf_t_gaiunn)
26840 color rgb(255,0,255)
26850 print "自分の名前(男性):";myname$;chr$(13)
26860 print "地運の端数:";tansuu1;chr$(13)
26870 print "相手の名前(女性):";bufname$;chr$(13)
26880 print "外運の端数:";buf_t_gaiunn;chr$(13)
26890 print "二人の相性:";bufferAisyou$;chr$(13)
26900 talk "二人の相性は" + bufferAisyou$
26910 color rgb(0,0,0)
26920 print"エンターキー:トップ画面"+chr$(13)
26930 print "データーの保存:S or s"+chr$(13)
26940 key$=Input$(1)
26950 'トップ画面に行く
26960 if key$ = chr$(13) then font 48:goto Main_Screen:
26970 '1.プロフィール性別男性の場合　ここまで
26980 '2.プロフィール性別女性の場合　ここから
26990 cls 3
27000 '描画領域　ここから
27010 line (0,0)-(1200,60),rgb(0,0,255),bf
27020 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
27030 line (0,60)-(1200,460),rgb(127,255,212),bf
27040 pen 5:line(0,57)-(1197,457),rgb(0,0,255),b
27050 LINE (0,460)-(1200,520),rgb(0,255,0),bf
27060 pen 5:line(0,457)-(1197,517),rgb(0,0,255),b
27070 '描画領域 ここまで
27080 color rgb(255,255,255)
27090 print"安斎流姓名判断　相性占い　結果表示"+chr$(13)
27100 '計算領域　ここから
27110 myname$ = Mid$(buffername$,4,4)
27120 gaiunn = val(Mid$(buffername3$,4,2))
27130 buf_t_gaiunn = buf_number(buf_gaiunn)
27140 buf_t_chiunn = buf_number(buf_chiunn)
27150 bufferAisyou$ = Aisyou_type$(buf_t_chiunn,buf_t_gaiunn)
27160 bufname$ = name$ + name2$
27170 '計算領域 ここまで
27180 color rgb(255,0,255)
27190 print "自分の名前(女性):";myname$;chr$(13)
27200 print "外運の端数";buf_t_gaiunn;chr$(13)
27210 print "相手の名前(男性):";bufname$;chr$(13)
27220 print "地運の端数:";buf_t_chiunn;chr$(13)
27230 print "二人の相性:";bufferAisyou$;chr$(13)
27240 color rgb(0,0,0)
27250 print "エンターキーを押してください"
27260 key$ = Input$(1)
27270 if key$=chr$(13) then font 48:goto Main_Screen:
27280 '2.プロフィール性別女性の場合　ここまで
27290 'endfunc result$
27300 '取扱説明書
27310 '相性占い　トップメニュー ここから
27320 'グラフィック ここから
27330 Anzai_Aishou_Top_Menu:
27340 cls 3:
27350 '1行目
27360 line(0,0)-(1500,60),rgb(0,0,255),bf
27370 pen 5:line(0,0)-(1497,57),rgb(127,255,212),b
27380 '2行目
27390 line(0,60)-(1500,380),rgb(127,255,212),bf
27400 pen 5:line(0,57)-(1497,377),rgb(0,0,255),b
27410 '3行目
27420 line(0,360)-(1500,540),rgb(0,255,0),bf
27430 pen 5:line(0,357)-(1497,537),rgb(0,0,255),b
27440 'グラフィック　ここまで
27450 color rgb(255,255,255)
27460 print"安斎流姓名判断 　相性占い トップメニュー"+chr$(13)
27470 color rgb(255,0,255)
27480 print"1.男女の相性"+chr$(13)
27490 print"2.前の画面に戻る"+chr$(13)
27500 print"3.トップ画面に戻る"+chr$(13)
27510 color rgb(0,0,0)
27520 print"番号を選んでください:"+chr$(13)
27530 Input"番号:",key
27540 if key=1 then goto Anzai_Aishou_Top1:
27550 if key=2 then goto Anzai_Top
27560 if key=3 then goto Main_Screen:
27570 if key>3 or key=0  then goto Anzai_Aishou_Top_Menu:
27580 'グラフィック領域　ここから
27590 Life_Tenki:
27600 cls 3:line(0,0)-(1150,60),rgb(0,0,255),bf
27610 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
27620 line(0,60)-(1150,180),rgb(127,255,212),bf
27630 pen 5:line(0,57)-(1147,177),rgb(0,0,255),b
27640 line(0,120)-(1150,200),rgb(0,255,0),bf
27650 pen 5:line(0,117)-(1147,197),rgb(0,0,255),b
27660 'グラフィック領域　ここまで
27670 '誕生日入力　生まれた年
27680 color rgb(255,255,255)
27690 print"誕生日入力　生まれた年"+chr$(13)
27700 COLOR rgb(255,0,255)
27710 print"生まれた年を入れてください"+chr$(13)
27720 color rgb(0,0,0)
27730 Input"生まれた年:",year
27740 '誕生日入力 生まれた月
27750 cls
27760 color rgb(255,255,255)
27770 print"誕生日入力 生まれた月"+chr$(13)
27780 color rgb(255,0,255)
27790 print"生まれた月を入力してください"+chr$(13)
27800 color rgb(0,0,0)
27810 Input"生まれた月:",month
27820 '誕生日入力 生まれた日を入力
27830 cls
27840 color rgb(255,255,255)
27850 print"誕生日入力 生まれた日入力"+chr$(13)
27860 color rgb(255,0,255)
27870 print"生まれた日を入力してください"+chr$(13)
27880 color rgb(0,0,0)
27890 Input"生まれた日:",day
27900 '人生の転機を見る
27910 'グラフィック領域　ここから
27920 cls 3
27930 line(0,0)-(1150,60),rgb(0,0,255),bf
27940 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
27950 line(0,60)-(1150,470),rgb(127,255,212),bf
27960 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
27970 line(0,470)-(1150,520),rgb(0,255,0),bf
27980 pen 5:line(0,467)-(1147,517),rgb(0,0,255),b
27990 'グラフィック描画領域  ここまで
28000 cls
28010 buffername$=bufname$ + bufname2$
28020 color rgb(255,255,255)
28030 print buffername$;"さんの人生の転機を見る1"+chr$(13)
28040 color rgb(255,0,255)
28050 buf_total2=buf_total-(fix(buf_total/10)*10)
28060 tenki1_year=year+buf_total2
28070 tenki2_year=year+buf_total2+5
28080 tenki3_year=year+buf_total2+5+5
28090 tenki4_year=year+buf_total2+5+5+5
28100 tenki1=buf_total2
28110 tenki2=buf_total2+5
28120 tenki3=buf_total2+5+5
28130 tenki4=buf_total2+5+5+5
28140 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
28150 print tenki1_year;"年";tenki1;"歳"+chr$(13)
28160 print tenki2_year;"年";tenki2;"歳"+chr$(13)
28170 print tenki3_year;"年";tenki3;"歳"+chr$(13)
28180 print tenki4_year;"年";tenki4;"歳"+chr$(13)
28190 color rgb(0,0,0)
28200 print"エンターキーを押してください"
28210 key$=Input$(1)
28220 if key$=chr$(13) then goto Life_Tenki:
28230 '2ページ目
28240 cls
28250 color rgb(255,255,255)
28260 print buffername$;"さんの人生の転機2"+chr$(13)
28270 color rgb(255,0,255)
28280 tenki5_year = tenki4_year + 5
28290 tenki6_year = tenki4_year + 5 + 5
28300 tenki7_year = tenki4_year + 5 + 5 + 5
28310 tenki8_year = tenki4_year + 5 + 5 + 5+5
28320 tenki5 = tenki4 + 5
28330 tenki6 = tenki4 + 5 + 5
28340 tenki7 = tenki4 + 5 + 5 + 5
28350 tenki8 = tenki4 + 5 + 5 + 5 + 5
28360 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
28370 print tenki5_year;"年";tenki5;"歳"+chr$(13)
28380 print tenki6_year;"年";tenki6;"歳"+chr$(13)
28390 print tenki7_year;"年";tenki7;"歳"+chr$(13)
28400 print tenki8_year;"年";tenki8;"歳"+chr$(13)
28410 color rgb(0,0,0)
28420 print"エンターキーを押してください",key$
28430 key$=Input$(1)
28440 if key$=chr$(13) then goto 27700
28450 '3ページ目
28460 cls
28470 color rgb(255,255,255)
28480 print buffername$;"さんの人生の転機3"+chr$(13)
28490 '計算部分
28500 tenki_year9=tenki8_year + 5
28510 tenki_year10=tenki8_year + 5 + 5
28520 tenki_year11=tenki8_year+5+5+5
28530 tenki_year12=tenki8_year+5+5+5+5
28540 tenki9=tenki8+5
28550 tenki10=tenki8+5+5
28560 tenki11=tenki8+5+5+5
28570 tenki12=tenki8+5+5+5+5
28580 color rgb(255,0,255)
28590 print "誕生日";year;"年";month;"月";day;"日"+chr$(13)
28600 print tenki_year9;"年";tenki9;"歳"+chr$(13)
28610 print tenki_year10;"年";tenki10;"歳"+chr$(13)
28620 print tenki_year11;"年";tenki11;"歳"+chr$(13)
28630 print tenki_year12;"年";tenki12;"歳"+chr$(13)
28640 color rgb(0,0,0)
28650 print"エンターキーを押してください"
28660 key$=Input$(1)
28670 if key$=chr$(13) then goto 27930
28680 'グラフィック描画領域 ここから
28690 cls 3
28700 line(0,0)-(1150,60),rgb(0,0,255),bf
28710 pen 5:line(0,0)-(1147,57),rgb(127,255,212),b
28720 line(0,60)-(1150,470),rgb(127,255,212),bf
28730 pen 5:line(0,57)-(1147,467),rgb(0,0,255),b
28740 line(0,470)-(1150,850),rgb(0,255,0),bf
28750 pen 5:line(0,467)-(1147,847),rgb(0,0,255),b
28760 'グラフィック描画領域 ここまで
28770 '4回目
28780 cls
28790 color rgb(255,255,255)
28800 print buffername$;"さんの人生の転機４"+chr$(13)
28810 color rgb(255,0,255)
28820 print"誕生日:";year;"年";month;"月";day;"日"+chr$(13)
28830 '計算部分
28840 tenki_year13 = tenki_year12 + 5
28850 tenki_year14 = tenki_year12 + 5 + 5
28860 tenki_year15 = tenki_year12 + 5 + 5 + 5
28870 tenki_year16 = tenki_year12 + 5 + 5 + 5 + 5
28880 tenki13 = tenki12 + 5
28890 tenki14 = tenki12 + 5 + 5
28900 tenki15 = tenki12 + 5 + 5 + 5
28910 tenki16 = tenki12 + 5 + 5 + 5 + 5
28920 color rgb(255,0,255)
28930 print tenki_year13;"年";tenki13;"歳"+chr$(13)
28940 print tenki_year14;"年";tenki14;"歳"+chr$(13)
28950 print tenki_year15;"年";tenki15;"歳"+chr$(13)
28960 print tenki_year16;"年";tenki16;"歳"+chr$(13)
28970 color rgb(0,0,0)
28980 print"コマンドを入れてください"+chr$(13)
28990 print"q+エンターキー:トップ画面"+chr$(13)
29000 Print"エンターキー:次へ行く"+chr$(13)
29010 print"コマンド:"
29020 key$=Input$(1)
29030 if key$=chr$(13) then goto 28300
29040 IF key$="q" then goto 5820
29050 '
29060 cls
29070 color rgb(255,255,255)
29080 print buffername$;"さんの人生の転機5"+chr$(13)
29090 color rgb(255,0,255)
29100 print"誕生日";year;"年";month;"月";day;"日"+chr$(13)
29110 tenki_year17=tenki_year16+5
29120 tenki_year18=tenki_year16+5+5
29130 tenki_year19=tenki_year16+5+5+5
29140 tenki_year20=tenki_year16+5+5+5+5
29150 tenki17=tenki16+5
29160 tenki18=tenki16+5+5
29170 tenki19=tenki16+5+5+5
29180 tenki20=tenki16+5+5+5+5
29190 print tenki_year17;"年";tenki17;"歳"+chr$(13)
29200 print tenki_year18;"年";tenki18;"歳"+chr$(13)
29210 print tenki_year19;"年";tenki19;"歳"+chr$(13)
29220 print tenki_year20;"年";tenki20;"歳"+chr$(13)
29230 color rgb(0,0,0)
29240 print"コマンドを入れてください"+chr$(13)
29250 print"トップに戻る:q+エンターキー"+chr$(13)
29260 print"最初から:エンターキー"+chr$(13)
29270 print"コマンド:"
29280 key$=Input$(1)
29290 if key$=chr$(13) then goto 27160
29300 if key$="q" then goto Main_Screen:
29310 '改名チェック 改名候補を入力
29320 'グラフィック　領域　ここから
29330 '左側 部分
29340 cls 3:
29350 line(0,0)-(1100,60),rgb(0,0,255),bf
29360 pen 5:line(0,0)-(1197,57),rgb(127,255,212),b
29370 line(0,60)-(1100,380),rgb(127,255,212),bf
29380 pen 5:line(0,57)-(1097,377),rgb(0,0,255),b
29390 line(0,380)-(790,470),rgb(0,255,0),bf
29400 pen 5:line(0,377)-(787,467),rgb(0,0,255),b
29410 '中央の縦の線 ここから
29420 'line(1100,0)-(1112,370),rgb(0,0,0),b
29430 '中央の縦の線 ここまで
29440 '右側 部分
29450 line(1103,0)-(1700,60),rgb(0,0,255),bf
29460 LINE(790,60)-(1700,470),rgb(127,255,212),bf
29470 'グラフィック 領域　ここまで
29480 '吉凶判定
29490 if buffer_K=0 then
29500 buffer_check$="○"
29510 else
29520 buffer_check$="☓"
29530 endif
29540 'Title 左側の文字
29550 'rgb(255,255,255):白
29560 color rgb(255,255,255)
29570 locate 1,0
29580 print"安斎流姓名判断 改名チェッカー"
29590 'Title 右側の文字
29600 locate size(2)-16,0
29610 print"改名候補リスト(3件まで)"
29620 '候補リストの名前部分 (右側)
29630 '1行目
29640 'locate 22,2
29650 locate size(2)-18,2
29660 color rgb(0,0,0)
29670 print "番号"
29680 'locate 26,2
29690 locate size(2)-14,2
29700 print"名前"
29710 'locate 32,2
29720 locate size(2)-8,2
29730 print"吉凶"
29740 'locate 36,2
29750 locate size(2)-4,2
29760 print"判定"
29770 '2行目
29780 select case kaimei_count
29790 case 0:
29800 'データー1件 の時
29810 kaimei_count = kaimei_count + 1
29820 buffer_Kaimei$(1,0,0,0)=str$(kaimei_count)
29830 buffer_Kaimei$(0,1,0,0)=name$
29840 buffer_Kaimei$(0,0,1,0)=buf_Kikkyo$
29850 buffer_Kaimei$(0,0,0,1)=buffer_check$
29860 'cls
29870 color rgb(255,0,255)
29880 'locate 23,3
29890 locate size(2)-17,3
29900 print buffer_Kaimei$(1,0,0,0)
29910 'locate 25,3
29920 locate size(2)-15,3
29930 print buffer_Kaimei$(0,1,0,0)
29940 'locate 32,3
29950 locate size(2)-8,3
29960 print buffer_Kaimei$(0,0,1,0)
29970 locate size(2)-3,3
29980 print buffer_Kaimei$(0,0,0,1)
29990 case 1:
30000 'データー2件の時
30010 color rgb(255,0,255)
30020 kaimei_count = kaimei_count + 1
30030 buffer_Kaimei$(2,0,0,0)=str$(kaimei_count)
30040 buffer_Kaimei$(0,2,0,0)=name$
30050 buffer_Kaimei$(0,0,2,0)=buf_Kikkyo$
30060 buffer_Kaimei$(0,0,0,2)=buffer_check$
30070 'cls
30080 '1行目
30090 'locate 23,3
30100 locate size(2)-17,3
30110 print buffer_Kaimei$(1,0,0,0)
30120 'locate 25,3
30130 locate size(2)-15,3
30140 print buffer_Kaimei$(0,1,0,0)
30150 'locate 32,3
30160 locate size(2)-8,3
30170 print buffer_Kaimei$(0,0,1,0)
30180 'locate 37,3
30190 locate size(2)-3,3
30200 print buffer_Kaimei$(0,0,0,1)
30210 '2行目
30220 'locate 23,4
30230 locate size(2)-17,4
30240 print buffer_Kaimei$(2,0,0,0)
30250 'locate 25,4
30260 locate size(2)-15,4
30270 print buffer_Kaimei$(0,2,0,0)
30280 'locate 32,4
30290 locate size(2)-8,4
30300 print buffer_Kaimei$(0,0,2,0)
30310 'locate 37,4
30320 locate size(2)-3,4
30330 print buffer_Kaimei$(0,0,0,2)
30340 case 2:
30350 'データー3件の時
30360 '1
30370 color rgb(255,0,255)
30380 kaimei_count=kaimei_count+1
30390 buffer_Kaimei$(3,0,0,0)=str$(kaimei_count)
30400 buffer_Kaimei$(0,3,0,0)=name$
30410 buffer_Kaimei$(0,0,3,0)=buf_Kikkyo$
30420 buffer_Kaimei$(0,0,0,3)=buffer_check$
30430 '2  1行目
30440 'locate 23,3
30450 locate size(2)-17,3
30460 print buffer_Kaimei$(1,0,0,0)
30470 'locate 25,3
30480 locate size(2)-15,3
30490 print buffer_Kaimei$(0,1,0,0)
30500 'locate 32,3
30510 locate size(2)-8,3
30520 print buffer_Kaimei$(0,0,1,0)
30530 'locate 37,3
30540 locate size(2)-3,3
30550 print buffer_Kaimei$(0,0,0,1)
30560 '3  2行目
30570 'locate 23,4
30580 locate size(2)-17,4
30590 print buffer_Kaimei$(2,0,0,0)
30600 'locate 25,4
30610 locate size(2)-15,4
30620 print buffer_Kaimei$(0,2,0,0)
30630 'locate 32,4
30640 locate size(2)-8,4
30650 print buffer_Kaimei$(0,0,2,0)
30660 'locate 37,4
30670 locate size(2)-3,4
30680 print buffer_Kaimei$(0,0,0,2)
30690 '4  3行目
30700 'locate 23,5
30710 locate size(2)-17,5
30720 print buffer_Kaimei$(3,0,0,0)
30730 'locate 25,5
30740 locate size(2)-15,5
30750 print  buffer_Kaimei$(0,3,0,0)
30760 'locate 32,5
30770 locate size(2)-8,5
30780 print buffer_Kaimei$(0,0,3,0)
30790 'locate 37,5
30800 locate size(2)-3,5
30810 print buffer_Kaimei$(0,0,0,3)
30820 case 3:
30830 'データー4件の時
30840 '1
30850 '2
30860 '3
30870 '4
30880 '5
30890 end select
30900 '説明部分　左側
30910 locate 0,2
30920 color rgb(255,0,255)
30930 print"思いついた候補の名前"
30940 locate 0,4
30950 print"(ニックネーム　or 会社名)を"
30960 locate 0,6
30970 print"10文字以内で入力してください"
30980 color rgb(0,0,0)
30990 locate 0,8
31000 if kaimei_count = 1 or kaimei_count = 2 then
31010 Input"名前:",kouho_name$
31020 name$=kouho_name$
31030 n=len(name$)
31040 if n > 10 then ui_msg"文字は10文字までです":name$ = "":kouho_name$ = "":goto 28580
31050 'else
31060 if n =< 10 then goto 23710
31070 endif
31080 if kaimei_count = 3 then
31090 Input"エンターキーを押してください",key$
31100 if key$ = "" then
31110 'データーを初期化して、トップ画面に行く
31120 '1.データーを初期化
31130 kaimei_count = 0
31140 for i=1 to 3
31150 buffer_Kaimei$(i,0,0,0) = ""
31160 buffer_Kaimei$(0,i,0,0) = ""
31170 buffer_Kaimei$(0,0,i,0) = ""
31180 buffer_Kaimei$(0,0,0,i) = ""
31190 next i
31200 '2.トップ画面に行く
31210 goto 5820
31220 endif
31230 endif
31240 '霊遺伝姓名学 ここから
31250 'グラフィック領域　ここから
31260 '性別入力
31270 Reiden_Top_Input_Sextype:
31280 cls 3
31290 'Line1
31300 line (0,0)-(850,60),rgb(0,0,255),bf
31310 line (0,0)-(847,57),rgb(0,255,0),b
31320 'Line 2
31330 line (0,63)-(853,537),rgb(127,255,212),bf
31340 line (0,60)-(850,540),rgb(0,0,0),b
31350 'Line 3
31360 line (0,540)-(850,630),rgb(0,255,0),bf
31370 line (0,543)-(853,633),rgb(0,0,255),b
31380 'グラフィック領域　ここまで
31390 '音声表示
31400 talk "霊遺伝生命学　性別の選択です。占う方の性別を入れてください"
31410 '性別変数:sex_type=0
31420 '文字色： 白
31430 color rgb(255,255,255):print"霊遺伝姓名学 性別の選択" + chr$(13)
31440 '文字色：赤
31450 color rgb(255,0,255)
31460 print"占う人の性別の番号を入れてください" + chr$(13)
31470 print"1.女 性" + chr$(13)
31480 print"2.男 性" + chr$(13)
31490 print"3.前の画面に戻る" + chr$(13)
31500 print"4.終 了" + chr$(13)
31510 color rgb(0,0,0)
31520 Input"番号:",No
31530 '2:男性の場合 名前を入力
31540 '男性の性別:sex_type=2
31550 if No=2 then sex_type=2:goto ReiIden_Input_male:
31560 '1:女性の場合 既婚の場合、旧姓で入力
31570 '女性の性別:sex_type=1
31580 if No=1 then sex_type=1:goto ReiIden_Input_female:
31590 '3:終了処理
31600 if No=4 then cls 3:end
31610 if No=3 then goto Main_Screen:
31620 if No >4 then goto Reiden_Top_Input_Sextype:
31630 '１．男性の場合の名前入力
31640 '描画領域　ここから
31650 ReiIden_Input_male:
31660 cls 3
31670 'Line 1 Title
31680 line (0,0)-(850,60),rgb(0,0,255),bf
31690 line (0,0)-(850,57),rgb(0,255,0),b
31700 'Line2 Input name
31710 line (0,60)-(850,300),rgb(0,255,0),bf
31720 line (0,60)-(850,303),rgb(0,0,255),b
31730 '描画領域 ここまで
31740 '文字色：白
31750 color rgb(255,255,255)
31760 print "霊遺伝姓名学 名前の姓入力（男性）" + chr$(13)
31770 '文字色：黒
31780 color rgb(0,0,0)
31790 print "名前の姓の部分を入れてください" + chr$(13)
31800 Input"名前(姓の部分):",name1$
31810 '名の入力部分
31820 cls
31830 color rgb(255,255,255)
31840 print "霊遺伝姓名学 名前の名入力(男性)" + chr$(13)
31850 color rgb(0,0,0)
31860 print "名前の名の部分を入れてください"+chr$(13)
31870 Input"名前(名の部分):",name2$:goto check:
31880 '2.女性の場合　既婚か未婚か確認する
31890 '2-2-1女性の姓の入力
31900 'グラフィック領域　ここから
31910 ReiIden_Input_female:
31920 cls 3
31930 'Line1 Title
31940 line (0,0)-(850,60),rgb(0,0,255),bf
31950 line (0,0)-(850,57),rgb(0,255,0),b
31960 'Line 2 入力欄
31970 line (0,60)-(850,360),rgb(0,255,0),bf
31980 line (0,60)-(850,357),rgb(0,0,255),b
31990 'Line 2 入力欄(名前入力)
32000 'グラフィック領域 ここまで
32010 cls
32020 color rgb(255,255,255)
32030 print "霊遺伝姓名学 名前の姓入力(女性）"+chr$(13)
32040 color rgb(255,0,0)
32050 print"既婚者の方は、旧姓を入れてください"+chr$(13)
32060 color rgb(0,0,0)
32070 print "名前の姓の部分を入れてください"+chr$(13)
32080 Input "名前(姓の部分):",name3$
32090 '2-2-2女性の名の入力
32100 cls
32110 color rgb(255,255,255)
32120 print "霊遺伝姓名学 名前の名の部分(女性)"+chr$(13)
32130 color rgb(0,0,0)
32140 print "名前の名の部分を入れてください"+chr$(13)
32150 Input "名前(名の部分):",name4$
32160 '計算領域　ここから
32170 check:
32180 '苗字の画数:buffer_name1_count
32190 'name1$,name2$:男性
32200 if sex_type = 1 then
32210 'sex_type=1 :女性のとき
32220 buf_male_female_name1$=name3$
32230 buf_male_female_name2$=name4$
32240 endif
32250 if sex_type = 2 then
32260 'sex_type=2 :男性のとき
32270 buf_male_female_name1$=name1$
32280 buf_male_female_name2$=name2$
32290 endif
32300 buffer_name1_count=len(buf_male_female_name1$)
32310 buffer_name2_count=len(buf_male_female_name2$)
32320 select case buffer_name1_count
32330 'AとBを求める
32340 case 1:
32350 '1.苗字の画数が1つのとき
32360 'A:霊数 1
32370 A=1
32380 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
32390 B = char_count(buf_name1$)
32400 case 2:
32410 '2.苗字の画数が2つのとき
32420 '2-1:苗字の1文字目:buf_name1$
32430 buf_name1$ = Mid$(buf_male_female_name1$,1,1)
32440 '2-2:苗字の2文字目:buf_name2$
32450 buf_name2$ = Mid$(buf_male_female_name1$,2,1)
32460 A=char_count(buf_name1$)
32470 B=char_count(buf_name2$)
32480 'B=char_count(buf_name2$)
32490 case 3:
32500 '3.苗字の画数が3つの時
32510 '3-1:苗字の1文字目:buf_name1$
32520 buf_name1$=Mid$(buf_male_female_name1$,1,1)
32530 '3-2:苗字が3つのときの2つ目の文字をもとめる
32540 '3-2:苗字の2つ目:buf_name2$
32550 buf_name2$=Mid$(buf_male_female_name1$,2,1)
32560 '3-3:苗字が3つのときの3文字目
32570 '3-3:苗字の3文字目buf_name3$(name1$,3,1)
32580 buf_name3$ = Mid$(buf_male_female_name1$,3,1)
32590 if buf_name2$="々" then
32600 A = char_count(buf_name1$) * 2
32610 B = char_count(buf_name3$)
32620 else
32630 A = char_count(buf_name1$) + char_count(buf_name2$)
32640 B = char_count(buf_name3$)
32650 endif
32660 '姓が4文字
32670 case 4:
32680 buf_name1$=Mid$(buf_male_female_name1$,1,1)
32690 buf_name2$=Mid$(buf_male_female_name1$,2,1)
32700 buf_name3$=Mid$(buf_male_female_name1$,3,1)
32710 buf_name4$=Mid$(buf_male_female_name1$,4,1)
32720 A=char_count(buf_name1$)+char_count(buf_name2$)+char_count(buf_name3$)
32730 B=char_count(buf_name4$)
32740 case else:
32750 end select
32760 '2.C,Dを求める
32770 select case buffer_name2_count
32780 case 1:
32790 '名が1文字の時
32800 'CとDを求める
32810 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
32820 C = char_count(buff_name1$)
32830 'D=1:霊数
32840 D = 1
32850 case 2:
32860 '名が2文字の時
32870 'CとDを求める
32880 '名の1文字目:buff_name1$
32890 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
32900 '名の2文字目:buff_name2$
32910 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
32920 C = char_count(buff_name1$)
32930 D = char_count(buff_name2$)
32940 case 3:
32950 '名が3文字の時
32960 'CとDを求める
32970 '名の1文字目:buff_name1$
32980 buff_name1$ = Mid$(buf_male_female_name2$,1,1)
32990 '名の2文字目:buff_name2$
33000 buff_name2$ = Mid$(buf_male_female_name2$,2,1)
33010 if buff_name2$ = "々" then
33020 buff_name2$ = buff_name1$
33030 endif
33040 '名の3文字目:buff_name3$
33050 buff_name3$ = Mid$(buf_male_female_name2$,3,1)
33060 C = char_count(buff_name1$)
33070 D = char_count(buff_name2$) + char_count(buff_name3$)
33080 end select
33090 '1.先祖運を求める
33100 buffer_Senzo = A + B
33110 '2.性格運を求める
33120 buffer_Seikaku = B + C
33130 '3.愛情運を求める
33140 buffer_Aijyou = C + D
33150 '4.行動運を求める
33160 buffer_Kouzou = A + D
33170 'if buffer_Kouzou=10 then
33180 'endif
33190 '1.生数を求める
33200 func buf_Seisu(buffer)
33210 if buffer < 10 then
33220 seisu=buffer
33230 endif
33240 if buffer = 10 or buffer = 0 or buffer=20 or buffer=30 then
33250 seisu = 0
33260 endif
33270 if buffer > 10 then
33280 if buffer=20 then
33290 seisu = 0
33300 else
33310 n = buffer - (fix(buffer / 10) * 10)
33320 seisu = n
33330 endif
33340 endif
33350 endfunc seisu
33360 '和数を求める
33370 func buf_Wasu(buffer)
33380 buf_wasu = 0:wasu = 0
33390 if buffer < 10 then
33400 '
33410 wasu = buffer:goto wasu:
33420 else
33430 if buffer = 10 then
33440 wasu = 1:goto wasu:
33450 else
33460 if buffer > 10  then
33470 if buffer=19 or buffer=28 or buffer=37 then
33480 wasu=1:goto wasu:
33490 else
33500 if buffer = 29 then
33510 wasu=2:goto wasu:
33520 'endif
33530 else
33540 a = fix(buffer / 10)
33550 b = buffer - a * 10
33560 c = a + b
33570 if c = 19 or c=28 then
33580 wasu=1
33590 '
33600 else
33610 wasu=c
33620 endif
33630 endif
33640 endif
33650 endif
33660 endif
33670 if c < 10 then
33680 wasu = c
33690 'endif
33700 endif
33710 else
33720 if buffer=19 or buffer=28 then
33730 wasu = 1
33740 endif
33750 endif
33760 wasu:
33770 buf_wasu=wasu
33780 endfunc buf_wasu
33790 func buf_kyoudai$(buf_sex_type,buf_Sa$)
33800 select case buf_sex_type
33810 '1.女性の場合
33820 case 1:
33830 if (buf_Sa$ = "連続") then
33840 buffer_kyoudai$="長女"
33850 endif
33860 if (buf_Sa$ = "1差") then
33870 buffer_kyoudai$="次女"
33880 endif
33890 if (buf_Sa$ = "2差") then
33900 buffer_kyoudai$="三女"
33910 endif
33920 if (buf_Sa$ = "3差") or (buf_Sa$="0") then
33930 buffer_kyoudai$="四女"
33940 endif
33950 if ((buf_Sa$ = "4差")) then
33960 buffer_kyoudai$="五女"
33970 endif
33980 '男性の場合
33990 case 2:
34000 if (buf_Sa$ = "連続") then
34010 buffer_kyoudai$="長男"
34020 endif
34030 if (buf_Sa$ = "1差") then
34040 buffer_kyoudai$="次男"
34050 endif
34060 if (buf_Sa$ = "2差") then
34070 buffer_kyoudai$="三男"
34080 endif
34090 if (buf_Sa$ = "3差") or (buf_Sa$="0") then
34100 buffer_kyoudai$="四男"
34110 endif
34120 if ((buf_Sa$ = "4差")) then
34130 buffer_kyoudai$="五男"
34140 endif
34150 case else:
34160 end select
34170 kyoudai$=buffer_kyoudai$
34180 endfunc kyoudai$
34190 '1.タテ型
34200 '1.同じ数字が2組ある場合
34210 func Tate_gata$()
34220 if Senzo_wasu = Seikaku_wasu  then
34230 if Aijyou_wasu - Seikaku_wasu > 1 then
34240 Spirit_type$="タテ型"
34250 Sa_count = Aijyou_wasu - Seikaku_wasu - 1
34260 Sa$ = str$(Sa_count) + "差"
34270 else
34280 Spirit_type$="タテ型"
34290 Sa$="連続"
34300 endif
34310 endif
34320 endfunc
34330 '2. ナナメ型
34340 '同じ数字が2組ある場合
34350 func Naname_gata$()
34360 if  Senzo_wasu = Koudou_wasu And  Seikaku_wasu = Aijyou_wasu then
34370 Spirit_type$="斜め型"
34380 endif
34390 if Seikaku_wasu - Senzo_wasu > 1 then
34400 Sa_count = Seikaku_wasu  -  Senzo_wasu  -  1
34410 Sa$=str$(Sa_count)+" 差"
34420 else
34430 Sa$="連続"
34440 endif
34450 endfunc
34460 '3.表十字型
34470 '同じ数字が2組ある場合
34480 func Omote_jyuji_gata1$()
34490 if Senzo_wasu = Aijyou_wasu  And  Kouzou_wasu = Seikaku_wasu then
34500 Spirit_type$ = "表十字型"
34510 endif
34520 if Senzo _wasu - Seikaku_wasu > 1 then
34530 Sa_count = Senzo_wasu - Seikaku_wasu - 1
34540 else
34550 if Senzo_wasu  -  Seikaku_wasu = 1  then
34560 Sa$="連続"
34570 endif
34580 endif
34590 endfunc
34600 Spirit_type$="No data"
34610 '1.先祖運　和数
34620 Senzo_wasu = buf_Wasu(buffer_Senzo)
34630 '2.先祖運 生数
34640 Senzo_seisu = buf_Seisu(buffer_Senzo)
34650 '3.性格運 和数
34660 Seikaku_wasu = buf_Wasu(buffer_Seikaku)
34670 '4.性格運 生数
34680 Seikaku_seisu = buf_Seisu(buffer_Seikaku)
34690 '5.愛情運 和数
34700 Aijyou_wasu = buf_Wasu(buffer_Aijyou)
34710 '6.愛情運 生数
34720 Aijyou_seisu = buf_Seisu(buffer_Aijyou)
34730 '7.行動運 和数
34740 Koudou_wasu = buf_Wasu(buffer_Kouzou)
34750 '8.行動運 生数
34760 Koudou_seisu = buf_Seisu(buffer_Kouzou)
34770 '計算領域 ここまで
34780 '描画領域　ここから
34790 Result_ReiIden1:
34800 cls 3
34810 'Title
34820 line (0,0)-(850,60),rgb(0,0,255),bf
34830 pen 3:line (0,0)-(850,57),rgb(255,255,255),b
34840 'name
34850 line (0,60)-(850,165),rgb(0,255,0),bf
34860 pen 5:line (0,63)-(850,162),rgb(255,0,255),b
34870 '生数、和数
34880 line (0,165)-(850,550),rgb(125,255,212),bf
34890 pen 3:line(0,168)-(850,547),rgb(0,0,255),b
34900 'プッシュメッセージ
34910 line (0,550)-(850,650),rgb(0,255,0),bf
34920 pen 5:line (0,553)-(850,653),rgb(0,0,0),b
34930 '描画領域　ここまで
34940 color rgb(255,255,255)
34950 print "霊遺伝姓名学　診断結果１/2"+chr$(13)
34960 color rgb(0,0,0)
34970 print "名前:";buf_male_female_name1$;" ";buf_male_female_name2$;chr$(13)
34980 color rgb(255,0,255)
34990 print "1.先祖運";" ";"和数:";Senzo_wasu;"生数:";Senzo_seisu;chr$(13)
35000 print "2.性格運";" ";"和数:";Seikaku_wasu;"生数:";Seikaku_seisu;" ";chr$(13)
35010 print "3.愛情運";" ";"和数:";Aijyou_wasu;"生数:";Aijyou_seisu;chr$(13)
35020 print "4.行動運";" ";"和数:";Koudou_wasu;"生数:";Koudou_seisu;chr$(13)
35030 talk "診断結果１です、あなたのわすうとせいすうです。"
35040 color rgb(0,0,0)
35050 print"エンターキーを押してください"
35060 key$=Input$(1)
35070 if key$=chr$(13) then goto Result_ReiIden2:
35080 '描画領域　ここから
35090 Result_ReiIden2:
35100 cls 3
35110 'Title Color:青
35120 line (0,0)-(860,60),rgb(0,0,255),bf
35130 'Title 枠
35140 line (0,0)-(860,57),rgb(255,0,255),b
35150 'Message
35160 line (0,60)-(860,650),rgb(127,255,212),bf
35170 'Message 枠
35180 Pen 5:line (0,60)-(860,653),rgb(0,0,255),b
35190 '
35200 '描画領域　ここまで
35210 color rgb(255,255,255)
35220 print "霊遺伝姓名 診断結果2/2" + chr$(13)
35230 '十二運の基礎運
35240 '1.四大主流型
35250 'パターン１ 同じ数字の場合
35260 '1.オール同数化 全部同じ
35270 '1-if
35280 Sa_count=0
35290 if ((Senzo_wasu - Aijyou_wasu = 0) and (Seikaku_wasu - Koudou_wasu = 0)) then
35300 Spirit_type$ = "オール同数化"
35310 Sa_count=0
35320 Sa$=str$(Sa_count)
35330 endif
35340 'パターン１ 同じ数字2つの場合
35350 '2.タテ型
35360 '数字が２つ同じ
35370 '2-if
35380 'for i=0 to 3
35390 'select case i
35400 'case 0:
35410 'buf_wasu(0)=Senzo_wasu
35420 'i = i + 1
35430 'case 1:
35440 'buf_wasu(1)=Seikaku_wasu
35450 'i = i + 1
35460 'case 2:
35470 'buf_wasu(2)=Aijyou_wasu
35480 'i = i + 1
35490 'case 3:
35500 'buf_wasu(3)=Koudou_wasu
35510 'i = i + 1
35520 'end select
35530 'next i
35540 'if buf_wasu(0) > buf_wasu(1) then
35550 'a=swap(buf_wasu(0),buf_wasu(1))
35560 'endif
35570 'if buf_wasu(1) > buf_wasu(2) then
35580 'b=swap(buf_wasu(1),buf_wasu(2))
35590 'endif
35600 'if buf_wasu(2) > buf_wasu(3) then
35610 'c=swap(buf_wasu(2),buf_wasu(3))
35620 'endif
35630 'if buf_wasu(3) > buf_wasu(4) then
35640 'd=swap(buf_wasu(3),buf_wasu(4))
35650 'endif
35660 'if buf_wasu(0) > buf_wasu(4) then
35670 'e=swap(buf_wasu(0),buf_wasu(4))
35680 'endif
35690 '0:先祖和数
35700 '1:性格和数
35710 '2:愛情和数
35720 '3:行動和数
35730 '(先祖和数＝性格和数) And (性格和数=行動和数)　and abs(愛情和数-性格和数)=1
35740 if ((Senzo_wasu = Seikaku_wasu) And (Koudou_wasu = Aijyou_wasu ) and abs(Seikaku_wasu - Koudou_wasu) > 0) then
35750 Spirit_type$ = "タテ型"
35760 '2.タテ型　1
35770 'abs(行動和数-先祖和数)=1
35780 if abs(Koudou_wasu -Seikaku_wasu) - 1 = 0 then
35790 Sa$="連続"
35800 else
35810 '2.タテ型　2
35820 'abs(先祖和数-行動和数) > 1
35830 if abs(Koudou_wasu - Seikaku_wasu - 1) > 3 then
35840 '差=行動和数-先祖和数
35850 Sa_count = Seikaku_wasu+9-Koudou_wasu-1
35860 else
35870 Sa_count =abs(Seikaku_wasu - Koudou_wasu - 1)
35880 endif
35890 endif
35900 Sa$=str$(Sa_count)+"差"
35910 endif
35920 '2.タテ型　3
35930 '1.type
35940 'Spirit_type$ = "四大主流型 タテ型"
35950 '3.斜め型
35960 '0:先祖和数,buf_wasu[0]
35970 '1:性格和数,buf_wasu[1]
35980 '2:愛情和数,buf_wasu[2]
35990 '3:行動和数,buf_wasu[3]
36000 '数字が２つ同じ
36010 '先祖=愛情 先祖-性格=1、（先祖＝愛情）、行動で連数
36020 '3-if
36030 '先祖＝行動　性格運=愛情運
36040 '3.斜め型 1
36050 if ((abs(Senzo_wasu - Koudou_wasu)=0) And abs(Aijyou_wasu - Seikaku_wasu = 0) and abs(Seikaku_wasu - Senzo_wasu) > 0) then
36060 'f (Senzo_wasu=Koudou_wasu) and (Seikaku_wasu=Aijyou_wasu) then
36070 Spirit_type$="斜め型"
36080 Sa_count=abs(Senzo_wasu-Seikaku_wasu) - 1
36090 if Sa_count=0 then
36100 Sa$ = "連続"
36110 else
36120 Sa$=str$(Sa_count)+"差"
36130 endif
36140 'if (((Seikaku_wasu - Senzo_wasu) > 1) and ((Seikaku_wasu - Koudou_wasu) > 1)) then
36150 'pirit_type$="斜め型"
36160 'Sa_count = (Seikaku_wasu - Senzo_wasu - 1)
36170 'Sa$ = str$(Sa_count) + "差"
36180 'endif
36190 endif
36200 'if (Senzo_wasu = 2 And Seikaku_wasu = 8) then
36210 'Sa_count = 3
36220 'Sa$ = str$(Sa_count - 1) + "差"
36230 'else
36240 'if (abs(Senzo_wasu - Seikaku_wasu) > 1) then
36250 'Spirit_type$ = "斜め型"
36260 'Sa_count = abs(Senzo_wasu - Seikaku_wasu)
36270 'Sa$ = str$(Sa_count - 1) + "差"
36280 'endif
36290 'endif
36300 'endif
36310 'endif
36320 'Spirit_type$ = str$(Sa_count) + "差"
36330 'endif
36340 'endif
36350 '3-if
36360 '3.斜め型 2
36370 '3.斜め型 3
36380 '数字が２つ同じ
36390 '表十字型
36400 '先祖運＝愛情運　　行動運＝性格運
36410 if (Senzo_wasu - Aijyou_wasu = 0) And (Koudou_wasu - Seikaku_wasu = 1) then
36420 Spirit_type$="表十字型"
36430 if (Senzo_wasu=Aijyou_wasu) then
36440 if (Koudou_wasu > Seikaku_wasu) then
36450 Sa_count = Senzo_wasu - Koudou_wasu - 1
36460 else
36470 Sa_count = Senzo_wasu - Seikaku_wasu - 1
36480 endif
36490 endif
36500 if Sa_count > 1 then
36510 Sa$ = str$(Sa_count) + "差"
36520 else
36530 if Sa_count = 0 then
36540 Sa$ = "連続"
36550 endif
36560 endif
36570 endif
36580 'endif
36590 '数字が２つ同じ
36600 '表十字型(横型)
36610 if (Koudou_wasu = Seikaku_wasu And abs(Aijyou_wasu - Senzo_wasu = 1)) then
36620 Spirit_type$="表十字型(ヨコ系)"
36630 if (Aijyou_wasu>Senzo_wasu) then
36640 'Sa$を後で書く
36650 Sa_count = abs(Koudou_wasu - Aijyou_wasu) - 1
36660 else
36670 Sa_count = abs(Koudou_wasu - Senzo_wasu) - 1
36680 endif
36690 if Sa_count > 1 then
36700  Sa$ = str$(Sa_count) + "差"
36710 else
36720  Sa$="連続"
36730 endif
36740 endif
36750 '数字が２つ同じ
36760 '表十字型(上下型)
36770 if Senzo_wasu=Aijyou_wasu And abs(Seikaku_wasu-Koudou_wasu = 1) then
36780 Spirit_type$="表十字型(上下系)"
36790 if (Seikaku_wasu>Koudou_wasu) then
36800 'Sa$を後で書く
36810 Sa_count = abs(Koudou_wasu - Senzo_wasu) - 1
36820 else
36830 Sa_count = abs(Seikaku_wasu - Senzo_wasu) - 1
36840 endif
36850 if Sa_count >1  then
36860 Sa$=str$(Sa_count) + "差"
36870 else
36880 Sa$="連続"
36890 endif
36900 endif
36910 'ヨコ型
36920 if (Seikaku_wasu - Koudou_wasu = 0) and abs(Aijyou_wasu - Senzo_wasu) > 1 and abs(Aijyou_wasu-Seikaku_wasu)>0 and abs(Senzo_wasu - Seikaku_wasu) > 0 then
36930 n=abs(Senzo_wasu - Seikaku_wasu)
36940 n2 = abs(Aijyou_wasu-Seikaku_wasu)
36950 Spirit_type$="ヨコ型"
36960 if (abs(Aijyou_wasu - Seikaku_wasu) =1 And abs(Senzo_wasu-Aijyou_wasu) = 2 and Seikaku_wasu=Koudou_wasu) then
36970 Sa$="連続"
36980 else
36990 Sa_count=Min(Senzo_wasu,Aijyou_wasu)-Seikaku_wasu-1
37000 'if n > 1 then
37010 'Sa_count = n - 1
37020 Sa$=str$(Sa_count)+"差"
37030 'else
37040 'Sa_Count = abs(n - n2)
37050 'if Sa_Count > 1 then
37060 'Sa$ = str$(Sa_Count) + "差"
37070 'endif
37080 'endif
37090 endif
37100 endif
37110 '上下型
37120 '同じ数字が1組みある場合
37130 if ((Senzo_wasu = Aijyou_wasu) And (abs(Koudou_wasu - Seikaku_wasu)=4) And  abs(Koudou_wasu-Aijyou_wasu)=2) then
37140 Spirit_type$ = "上下型"
37150 if (Seikaku_wasu - Senzo_wasu > 3) then
37160 Sa_count = abs((Senzo_wasu + 9)-Seikaku_wasu) - 1
37170 else
37180 Sa_count = abs(Aijyou_wasu - Koudou_wasu) - 1
37190 endif
37200 Sa$=str$(Sa_count)+"差"
37210 'n2= abs(Seikaku_wasu-Senzo_wasu)
37220 'buf=min(n,n2)
37230 'Sa$=str$(buf - 1) + "差"
37240 'endif
37250 endif
37260 '中広（なかこう)型(斜め系)
37270 '連続した数字が2組みある場合
37280 'if (Senzo_wasu - Koudou_wasu = 1 And Seikaku_wasu - Aijyou_wasu = 1 And (Koudou_wasu <> Seikaku_wasu) And (Senzo_wasu <> Seikaku_wasu) And (Senzo_wasu <> Aijyou_wasu) And (Koudou_wasu <> Aijyou_wasu)) then
37290 'n=Min(Senzo_wasu ,Koudou_wasu)
37300 'n2=Max(Seikaku_wasu , Aijyou_wasu)
37310 'Spirit_type$="中広型（斜め系）"
37320 'Sa_count = n - n2 -1
37330 'if Sa_count > 1 then
37340 'Sa$ = str$(Sa_count-1) + "差"
37350 'else
37360 'if Sa_count = 1 then
37370 'Sa$="連続"
37380 'endif
37390 'endif
37400 'endif
37410 '中広（なかこう)型(表十字型)
37420 '連続した数字が2組みある場合
37430 if (Koudou_wasu - Seikaku_wasu = 1 And Aijyou_wasu - Senzo_wasu = 1) then
37440 Spirit_type$="中広（なかこう)型(表十字型)"
37450 n=Min(Koudou_wasu , Seikaku_wasu)
37460 n2=Max(Aijyou_wasu , Senzo_wasu)
37470 Sa_count = n - n2
37480 if Sa_count > 1 then
37490 Sa$ = str$(Sa_count - 1) + "差"
37500 else
37510 if Sa_count = 1 then
37520 Sa$ = "連続"
37530 endif
37540 endif
37550 endif
37560 '中一差（タテ系)
37570 '連続した数字が2組みある場合
37580 if (abs(Senzo_wasu - Seikaku_wasu) = 1 And abs(Aijyou_wasu - Koudou_wasu) = 1 And (Seikaku_wasu<>Koudou_wasu)) then
37590 'Spirit_type$="中一差（タテ系)"
37600 'if ((Aijyou_wasu = 9 And Koudou_wasu = 1) or (Aijyou_wasu = 1 And Koudou_wasu = 9)) then
37610 'n = Max(Koudou_wasu,Aijyou_wasu)
37620 'n2 = Max(Senzo_wasu,Seikaku_wasu)
37630 'else
37640 n = Min(Seikaku_wasu,Senzo_wasu)
37650 n2 = Max(Aijyou_wasu,Koudou_wasu)
37660 'endif
37670 Sa_count = abs(n - n2) - 1
37680 'if Sa_count >= 0 then
37690 select case Sa_count
37700 case 1:
37710 '中一差（タテ系)
37720 Sa$ = "1差"
37730 Spirit_type$="中一差型（タテ系)"
37740 case 2:
37750 '中二差型（タテ系)
37760 Sa$ = "2差"
37770 Spirit_type$="中二差型（タテ系)"
37780 case 3:
37790 '中広（なかこう)型(タテ系)
37800 Sa$ = "3差"
37810 Spirit_type$="中三差型（タテ系)"
37820 case 4:
37830 Sa$ = "4差"
37840 Spirit_type$="中広型(タテ系)"
37850 case  else:
37860 's 3:print"例外に入りました"
37870 end select
37880 '
37890 'else
37900 'cls 3:print"例外に入りました"
37910 'endif
37920 endif
37930 'endif
37940 '中一差（斜め系)
37950 '連続した数字が2組みある場合
37960 if (abs(Koudou_wasu - Senzo_wasu) = 1 and abs(Aijyou_wasu - Seikaku_wasu) = 1) then
37970 n = Min(Koudou_wasu,Senzo_wasu)
37980 n2 = Max(Aijyou_wasu,Seikaku_wasu)
37990 Sa_count = abs(n2 - n) - 1
38000 select case Sa_count
38010 case 1:
38020 '中一差（斜め系)
38030 '連続した数字が2組みある場合
38040 Sa$="1差"
38050 Spirit_type$="中一差（斜め系)"
38060 case 2:
38070 '中二差（斜め系)
38080 '連続した数字が2組みある場合
38090 Sa$="2差"
38100 Spirit_type$="中二差（斜め系)"
38110 case 3:
38120 Sa$="3差"
38130 Spirit_type$="中広型（斜め系）"
38140 case else:
38150 end select
38160 endif
38170 '順序型(タテ、上下系)
38180 'if (abs(Senzo_wasu-Seikaku_wasu)=2 And abs(Seikaku_wasu-Aijyou_wasu)=1 And (Seikaku_wasu=Koudou_wasu)) then
38190 'Spirit_type$="順序型":Sa$="連続"
38200 'endif
38210 '数字が４つ連続してる場合
38220 if (((Seikaku_wasu - Senzo_wasu) = 1) And ((Senzo_wasu-Aijyou_wasu)=1) And (Aijyou_wasu - Koudou_wasu) = 1) then
38230 Spirit_type$="順序型(タテ、上下系)":Sa_count=0
38240 Sa$="連続"
38250 endif
38260 '中順序型(ヨコ系)
38270 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And Senzo_wasu<>Aijyou_wasu) then
38280 if ((Senzo_wasu-Seikaku_wasu=2) And (Koudou_wasu - Aijyou_wasu=2)) then
38290 Spirit_type$="中順序型(ヨコ系)"
38300 Sa$="1差"
38310 else
38320 '順序型(タテ、ヨコ系)
38330 '数字が４つ連続してる場合
38340 if (abs(Seikaku_wasu - Koudou_wasu) = 1 And abs(Koudou_wasu - Aijyou_wasu) = 1 And abs(Senzo_wasu - Seikaku_wasu) = 1) or (Seikaku_wasu - Koudou_wasu = 1 And Koudou_wasu - Aijyou_wasu = 1 And Senzo_wasu=1 And Seikaku_wasu = 9) then
38350 Spirit_type$="順序型(タテ、ヨコ系)"
38360 Sa$="連続"
38370 endif
38380 endif
38390 endif
38400 '中順序型(上下系)
38410 if ((abs(Aijyou_wasu - Senzo_wasu) - 1 = 0) And abs(Koudou_wasu - Seikaku_wasu) - 2 = 0 ) then
38420 if ((Seikaku_wasu > Koudou_wasu)) then
38430 Sa_count = (Seikaku_wasu - Koudou_wasu) - 1
38440 else
38450 Sa_count = (Seikaku_wasu+9) - Koudou_wasu - 1
38460 endif
38470 'if Sa_count > 1 then
38480 Spirit_type$="中順序型(上下系)"
38490 Sa$ = Str$(Sa_count) + "差"
38500 endif
38510 '順序型(斜め、上下系)
38520 '数字が４つ連続してる場合
38530 if ((abs(Senzo_wasu - Koudou_wasu) = 1) And (abs(Aijyou_wasu - Senzo_wasu) = 1) And (abs(Seikaku_wasu - Aijyou_wasu) = 1) And (abs(Seikaku_wasu - Koudou_wasu) = 3)) then
38540 Spirit_type$ = "順序型(斜め、上下系)"
38550 Sa$="連続"
38560 endif
38570 'endif
38580 'endif
38590 '順序型(斜め、ヨコ系)
38600 '数字が４つ連続してる場合
38610 if ((abs(Senzo_wasu - Koudou_wasu - 1) = 1 And abs(Koudou_wasu - Seikaku_wasu - 1) = 1 And abs(Koudou_wasu - Aijyou_wasu - 1) = 1)) then
38620 Spirit_type$="順序型(斜め、ヨコ系)"
38630 Sa$="連続"
38640 endif
38650 '隔離型(タテ、上下系)
38660 '数字が1つおきに飛んでる場合
38670 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And ((abs(Aijyou_wasu-Senzo_wasu) = 2) or (Aijyou_wasu = 8 And Senzo_wasu = 1))) then
38680 Spirit_type$="隔離型(タテ、上下系)"
38690 Sa$="1差"
38700 endif
38710 '隔離型(タテ、ヨコ系)
38720 '数字が1つおきに飛んでる場合
38730 if (abs(Seikaku_wasu - Senzo_wasu) = 2 And abs(Aijyou_wasu - Koudou_wasu) = 2 And abs(Koudou_wasu - Seikaku_wasu) = 2) then
38740 Spirit_type$="隔離型(タテ、ヨコ系)"
38750 Sa$="1差"
38760 endif
38770 '隔離型(斜め、上下系)
38780 '数字が1つおきに飛んでる場合
38790 if ((abs(Koudou_wasu - Senzo_wasu) = 2) And ((Aijyou_wasu - Seikaku_wasu) = 2) and (((Senzo_wasu + 9) - Aijyou_wasu) = 2) and (Seikaku_wasu - Koudou_wasu = 3)) then
38800 Spirit_type$="隔離型(斜め、上下系)"
38810 Sa$="1差"
38820 endif
38830 '隔離型(斜め、ヨコ系)
38840 '数字が1つおきに飛んでる場合
38850 if (abs(Senzo_wasu - Koudou_wasu - 1) = 1 And abs(Koudou_wasu - Seikaku_wasu - 1) = 1 And (abs((Seikaku_wasu + 9) - Aijyou_wasu - 1 = 1))) then
38860 Spirit_type$="隔離型(斜め、ヨコ系)"
38870 Sa$="1差"
38880 endif
38890 '隔離型(タテ系)
38900 '数字が2つおきに飛んでる場合
38910 if ((Senzo_wasu - Seikaku_wasu) = 2 And (Aijyou_wasu-Koudou_wasu) > 1) then
38920 Spirit_type$="隔離型(タテ系)"
38930 if (Aijyou_wasu > Koudou_wasu) then
38940 Sa_count=(Koudou_wasu + 9) - Aijyou_wasu
38950 else
38960 Sa_count=abs(Koudou_wasu - Aijyou_wasu - 1)
38970 endif
38980 Sa$=str$(Sa_count)+"差"
38990 endif
39000 '隔離型(斜め系)
39010 '数字が2つおきに飛んでる場合
39020 if ((Koudou_wasu - Senzo_wasu) = 2 And (Aijyou_wasu - Seikaku_wasu) = 2 and (Seikaku_wasu-Koudou_wasu)-1=2) then
39030 Spirit_type$="隔離型(斜め系)"
39040 Sa$="1差"
39050 endif
39060 '隔離型(上下、ヨコ系)
39070 '数字が2つおきに飛んでる場合
39080 if ((abs(Senzo_wasu - Aijyou_wasu) = 2 or (Senzo_wasu=1 And Aijyou_wasu=9)) And  abs(Seikaku_wasu -Koudou_wasu) = 2) then
39090 Spirit_type$="隔離型(上下、ヨコ系)"
39100 Sa$="1差"
39110 'endif
39120 endif
39130 'ここに移動
39140 Kyoudai$ = buf_kyoudai$(sex_type,Sa$)
39150 if Sa$="0" then Sa$=""
39160 color rgb(255,0,255)
39170 print "●十二の基礎運" + chr$(13)
39180 print Spirit_type$ + Sa$;chr$(13)
39190 print "きょうだい：";Kyoudai$ + chr$(13)
39200 talk "あなたのきょうだいは、"+Kyoudai$+"です"
39210 color rgb(0,0,0)
39220 print"前の画面:ｂキー"+chr$(13)
39230 print"保存して、もう一度やる：スペースキー"+chr$(13)
39240 print"終了:エンターキー"+chr$(13)
39250 key$ = Input$(1)
39260 if key$ = chr$(13) then
39270 goto Main_Screen:
39280 else
39290 '保存して スペースキーでもう一度占う
39300 if key$ = " " then
39310 goto Save_Data1:
39320 else
39330 if key$="b" then
39340 goto Result_ReiIden1:
39350 endif
39360 endif
39370 endif
39380 'ファイル保存 占いデーターを一時保存
39390 Save_Data1:
39400 'Max40件までで保存できないようにする
39410 '1. 登録件数が４０件以下かを調査
39420 open "config/Parsonal_data/parsonal_data.dat" for input as #2
39430 while eof(2)=0
39440 line input #2,lines$:bN = bN + 1
39450 wend
39460 close #2
39470 '2. 41 件目なら保存しない処理
39480 if bN > Max then
39490 '41件以上ならとぶ
39500 goto Over_40count:
39510 else
39520 'count=0
39530 buf_male_female_name$ = buf_male_female_name1$ + buf_male_female_name2$
39540 open "config/Parsonal_data/parsonal_data.dat" for input as #1
39550 for i=0 to (bN * 10) - 1
39560 input #1,buflines$(i)
39570 Next i
39580 close #1
39590 for i=0 to (bN*10)-1 step 10
39600 if right$(buflines$(i),len(buf_male_female_name$)) = buf_male_female_name$ then
39610 acount = acount + 1
39620 endif
39630 next i
39640 '3. 40件以下なら以下を実行
39650 '同じ名前が無かったら保存する
39660 if acount = 0 then
39670 open "Config/Parsonal_data/parsonal_data.dat" for append as #3
39680 'print#3は末尾は、セミコロンはいらない
39690 '末尾にセミコロンをつけると改行しない
39700 print #3,"名前:" + buf_male_female_name$;",性別:"+str$(sex_type);",先祖和数:"+str$(Senzo_wasu);",先祖生数:"+str$(Senzo_seisu);",性格和数:"+str$(Seikaku_wasu);",性格生数:"+str$(Seikaku_seisu);",愛情和数:"+str$(Aijyou_wasu);",愛情生数:"+str$(Aijyou_seisu);",行動和数:"+str$(Koudou_wasu);",行動生数:"+str$(Koudou_seisu)
39710 ui_msg "保存しました"
39720 close #3
39730 '性別の選択に飛ぶ
39740 goto Reiden_Top_Input_Sextype:
39750 else
39760 '同じ名前があったら保存しない
39770 buf_overcount$="同じ名前があります。保存できません"
39780 ui_text buf_overcount$
39790 '性別の選択に飛ぶ
39800 goto Reiden_Top_Input_Sextype:
39810 endif
39820 endif
39830 '個人データーリスト  *parsonal_data
39840 Parsonal_data_top:
39850 cls 3
39860 line(0,0)-(800,60),rgb(0,0,255),bf
39870 pen 5:line(3,3)-(797,57),rgb(0,255,0),b
39880 line (0,60)-(800,440),rgb(127,255,212),bf
39890 pen 5:line (0, 63)-(797,443),rgb(0,0,255),b
39900 line (0,440)-(800,670),rgb(0,255,0),bf
39910 pen 5:line (0,443)-(797,673),rgb(0,0,0),b
39920 color rgb(255,255,255)
39930 print"◎個人データーリスト トップ画面" + chr$(13)
39940 color rgb(255,0,255)
39950 print "1.霊遺伝姓名学個人データー" + chr$(13)
39960 print "2.安斎流姓名判断個人データー" + chr$(13)
39970 print "3.九星姓名判断個人データー"+chr$(13)
39980 print "4.メインメニューへ行く"+chr$(13)
39990 color rgb(0,0,0)
40000 print "番号を入れてください"+chr$(13)
40010 Input "番号:",No
40020 if No = 1 then goto Parsonal_data_top_ReiIden:
40030 if No = 2 then goto Parsonal_data_top_Anzai:
40040 if No = 4 then goto Main_Screen:
40050 if No = 3 then goto Parsonal_data_top_Kyusei:
40060 if No > 4 then talk"数字を入れ直してください":ui_msg"入力値が範囲外です":goto Parsonal_data_top:
40070 '1.霊遺伝姓名判断　トップ画面
40080 Parsonal_data_top_ReiIden:
40090 cls 3
40100 line(0,0)-(850,60),rgb(0,0,255),bf
40110 pen 5:line(3,3)-(847,57),rgb(0,255,0),b
40120 line (0,60)-(850,540),rgb(127,255,212),bf
40130 pen 5:line (0,63)-(847,537),rgb(0,0,255),b
40140 line (0,540)-(850,780),rgb(0,255,0),bf
40150 pen 5:line (0,543)-(853,783),rgb(0,0,0),b
40160 color rgb(255,255,255)
40170 print"◎個人データーリスト 霊遺伝姓名学" + chr$(13)
40180 color rgb(255,0,255)
40190 print "1.霊遺伝姓名学リスト" + chr$(13)
40200 print "2.霊遺伝姓名学登録件数" + chr$(13)
40210 print "3.霊遺伝姓名学データー検索"+chr$(13)
40220 print "4.前の画面に戻る"  +  chr$(13)
40230 print "5.メインメニューへ行く"+chr$(13)
40240 color rgb(0,0,0)
40250 print "番号を入れてください"+chr$(13)
40260 Input "番号:",No
40270 if No = 1 then goto Parsonal_list1:
40280 if No = 2 then goto Entry_list_count:
40290 if No = 5 then goto Main_Screen:
40300 if No = 3 then goto Search_find:
40310 if No = 4 then goto Parsonal_data_top:
40320 if No > 5 then talk"数字を入れ直してください":ui_msg"入力値が範囲外です":goto Parsonal_data_top:
40330 '2.安斎流姓名判断　トップ画面
40340 Parsonal_data_top_Anzai:
40350 cls 3
40360 line(0,0)-(900,60),rgb(0,0,255),bf
40370 pen 5:line(0,3)-(897,57),rgb(0,255,0),b
40380 line (0,60)-(900,450),rgb(127,255,212),bf
40390 pen 5:line (0, 63)-(897,447),rgb(0,0,255),b
40400 line (0,450)-(900,650),rgb(0,255,0),bf
40410 pen 5:line (0,453)-(897,653),rgb(0,0,0),b
40420 color rgb(255,255,255)
40430 print"◎個人データーリスト　安斎流姓名判断" + chr$(13)
40440 color rgb(255,0,255)
40450 print "1.安斎流相性リスト" + chr$(13)
40460 print "2.安斎流改名リスト" + chr$(13)
40470 print "3.前の画面に戻る" + chr$(13)
40480 print "4.メインメニューへ行く" + chr$(13)
40490 color rgb(0,0,0)
40500 print "番号を入れてください"+chr$(13)
40510 Input "番号:",No
40520 if No = 2 then goto Anzai_Kaimei_List:
40530 if No = 1 then goto Anzai_Aisyou_EntrydataList:
40540 if No = 4 then goto Main_Screen:
40550 if No = 3 then goto Parsonal_data_top:
40560 if No
40570 > 4 then talk"数字を入れ直してください":ui_msg"入力値が範囲外です":goto Parsonal_data_top:
40580 '3.九星姓名判断　トップ画面
40590 Parsonal_data_top_Kyusei:
40600 cls 3
40610 line(0,0)-(900,60),rgb(0,0,255),bf
40620 pen 5:line(3,3)-(897,57),rgb(0,255,0),b
40630 line (0,60)-(900,450),rgb(127,255,212),bf
40640 pen 5:line (0, 63)-(897,443),rgb(0,0,255),b
40650 line (0,450)-(900,780),rgb(0,255,0),bf
40660 pen 5:line (0,453)-(897,783),rgb(0,0,0),b
40670 color rgb(255,255,255)
40680 print"◎個人データーリスト 九星姓名判断" + chr$(13)
40690 color rgb(255,0,255)
40700 print "1." + chr$(13)
40710 print "2." + chr$(13)
40720 print "3.前の画面に戻る"+chr$(13)
40730 print "4.メインメニューへ行く"+chr$(13)
40740 color rgb(0,0,0)
40750 print "番号を入れてください"+chr$(13)
40760 Input "番号:",No
40770 if No = 1 then end:
40780 if No = 2 then end:
40790 if No = 4 then goto Main_Screen:
40800 if No = 3 then goto Parsonal_data_top:
40810 if No> 4 then talk"数字を入れ直してください":ui_msg"入力値が範囲外です":goto Parsonal_data_top:
40820 '登録件数
40830 Entry_list_count:
40840 N = 0:
40850 open "Config/Parsonal_data/parsonal_data.dat" for input as #5
40860 'N=1
40870 while eof(5) = 0
40880 line input #5,line$:N = N + 1
40890 wend
40900 'c=N
40910 close #5
40920 c=N
40930 cls 3
40940 line (0,0)-(680,60),rgb(0,0,255),bf
40950 pen 3:line (0,0)-(683,63),rgb(0,255,0),b
40960 line (0,60)-(680,180),rgb(127,255,212),bf
40970 pen 3:line (0,63)-(683,183),rgb(0,255,0),b
40980 LINE (0,180)-(680,280),rgb(0,255,0),bf
40990 pen 3:line (0,183)-(683,283),rgb(0,0,0),b
41000 color rgb(255,255,255)
41010 talk "登録件数は"+str$(c)+"件です"
41020 print "◎霊遺伝姓名学登録件数"+chr$(13)
41030 color rgb(255,0,255)
41040 'N=B-1:C=N
41050 print "登録件数は";c;"件です"+chr$(13)
41060 color rgb(0,0,0)
41070 print "エンターキーを押してください"+chr$(13)
41080 a$ = Input$(1)
41090 if a$ = chr$(13) then goto Parsonal_data_top:
41100 'パーソナルリスト ここから
41110 Parsonal_list1:
41120 cls 3:bN=0:n=0:a=0
41130 'Title
41140 line (0,0)-(1100,60),rgb(0,0,255),bf
41150 line (0,0)-(1097,57),rgb(255,255,255),b
41160 '個人名
41170 line (0,60)-(1100,165),rgb(0,255,0),bf
41180 line (0,63)-(1103,162),rgb(255,0,255),b
41190 '数値リスト
41200 line (0,165)-(1100,550),rgb(255,212,212),bf
41210 line (0,168)-(1097,547),rgb(0,0,255),b
41220 'ボタンメッセージ
41230 line (0,550)-(1100,730),rgb(0,255,0),bf:
41240 line (0,553)-(1103,733),rgb(255,0,255),b
41250 'Parsonal_list2:
41260 'color rgb(255,255,255):
41270 'cls:print "霊遺伝姓名学 リスト" + chr$(13)
41280 'n=0
41290 open "config/Parsonal_data/parsonal_data.dat" for input as #7
41300 'bN=0
41310 while eof(7)=0
41320 line input #7,lines$:bN = bN + 1
41330 wend
41340 close #7
41350 'a=0
41360 open "config/Parsonal_data/parsonal_data.dat" for input as #8
41370 'while eof(8)=0
41380 for i=0 to (bN * 10)-1
41390 input #8,buflines$(i)
41400 Next i
41410 'wend
41420 close #8
41430 while n <= (bN * 10)-1
41440 'Title
41450 color rgb(255,255,255)
41460 print "霊遺伝姓名学 リスト";bN;"件中";n+1;"件目" + chr$(13)
41470 '性別を出す
41480 sex$ = show_sex_type$(buflines$((10*n) + 1))
41490 'n=0
41500 color rgb(0,0,0):
41510 print buflines$(10*(n)+0);" ";sex$  + chr$(13)
41520 '
41530 print buflines$((10*(n) + 2));buflines$((10*(n) +3))+chr$(13)
41540 print buflines$((10*(n) + 4));buflines$((10*(n) + 5))+chr$(13)
41550 print buflines$((10*(n) + 6));buflines$((10*(n) + 7))+chr$(13)
41560 print buflines$((10*(n) + 8));buflines$((10*(n) + 9))+chr$(13):
41570 print "スペースキー:次へ行く" + chr$(13)
41580 print "エンターキー：トップへ戻る" + chr$(13)
41590 key$ = Input$(1)
41600 if key$ = " " then n = ((n + 1) Mod bN)
41610 cls
41620 'else
41630 'エンターでトップに行く
41640 if key$ = chr$(13) then goto Main_Screen:
41650 wend
41660 Search_find:
41670 cls 3
41680 'グラフィック領域　ここから
41690 line (0,0)-(770,60),rgb(0,0,255),bf
41700 pen 5:line(0,0)-(767,57),rgb(0,255,0),b
41710 line (0,60)-(770,170),rgb(127,255,212),bf
41720 line(0,63)-(767,173),rgb(0,0,255),b
41730 line(0,170)-(770,370),rgb(0,255,0),bf
41740 pen 5:line(0,173)-(767,373),rgb(0,0,0),b
41750 'ファイル読み込み　ここから
41760 open "config/Parsonal_data/parsonal_data.dat" for input as #1
41770 while eof(1)=0
41780 line input #1,lines$:hit_count=hit_count + 1
41790 wend
41800 close #1
41810 open "config/Parsonal_data/parsonal_data.dat" for input as #2
41820 for i=0 to (10 * hit_count) - 1
41830 input #2,bufname$(i)
41840 next i
41850 close #2
41860 'ファイル読み込み　ここまで
41870 color rgb(255,255,255)
41880 print "霊遺伝姓名判断 データー検索" + chr$(13)
41890 color rgb(255,0,255)
41900 print "登録件数:";hit_count;"件です" + chr$(13)
41910 color rgb(0,0,0)
41920 print "調べたい人の名前を入れてください" + chr$(13)
41930 Input "名前:",name$
41940 for i=0 to ((hit_count) - 1)*10
41950 if name$=right$(bufname$(i),len(name$)) then
41960 hcount = hcount + 1:counter=i
41970 endif
41980 next i
41990 if hcount > 0 then
42000 cls 3
42010 '描画領域　ここから
42020 line (0,0)-(770,60),rgb(0,0,255),bf
42030 line (0,0)-(767,57),rgb(0,255,0),b
42040 line (0,60)-(770,250),rgb(127,255,212),bf
42050 line (0,63)-(767,173),rgb(0,0,255),b
42060 line (0,250)-(770,560),rgb(0,255,0),bf
42070 line (0,253)-(773,563),rgb(0,0,0),b
42080 '描画領域　ここまで
42090 color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索"+chr$(13)
42100 color rgb(0,0,0):print"調べたい名前:";name$+chr$(13)
42110 color rgb(0,0,0):print hcount;"件ヒットありました"+chr$(13)
42120 color rgb(255,0,255):print"スペース： もう一度調べる"+chr$(13)
42130 color rgb(255,0,255):print"H:ヒットしたデーターを見る"+chr$(13)
42140 color rgb(255,0,255):print"エンターキー:トップ画面"+chr$(13)
42150 a$ = input$(1)
42160 if a$ = " " then goto Search_find:
42170 if a$ = chr$(13) then goto Main_Screen:hit_count=0
42180 if a$ = "H" or a$="h" then goto Hit_list:
42190 else
42200 color rgb(255,255,255):print"霊遺伝姓名判断　メンバー検索" + chr$(13)
42210 color rgb(0,0,0):print"検索名:";name$ + chr$(13)
42220 color rgb(0,0,0):print"この人はヒットしませんでした" + chr$(13)
42230 color rgb(255,0,255):print"エンターキーを押してください" + chr$(13)
42240 a$ = input$(1)
42250 if a$ = chr$(13) then goto Main_Screen:
42260 endif
42270 'ヒットしたリストの表示する
42280 Hit_list:
42290 '描画領域　ここから
42300 cls 3:bN=0:n=0:a=0
42310 'Title
42320 line (0,0)-(850,60),rgb(0,0,255),bf
42330 line (0,0)-(850,57),rgb(255,255,255),b
42340 '個人名
42350 line (0,60)-(850,165),rgb(0,255,0),bf
42360 line (0,63)-(850,162),rgb(255,0,255),b
42370 '数値リスト
42380 line (0,165)-(850,550),rgb(255,212,212),bf
42390 line (0,168)-(850,547),rgb(0,0,255),b
42400 'ボタンメッセージ
42410 line (0,550)-(850,730),rgb(0,255,0),bf:
42420 line (0,553)-(853,733),rgb(255,0,255),b
42430 '描画領域　ここまで
42440 'Title
42450 color rgb(255,255,255)
42460 print "霊遺伝姓名学 ヒットリスト" + chr$(13)
42470 '性別を出す
42480 sex$ = show_sex_type$(bufname$(counter + 1))
42490 'n=0
42500 color rgb(0,0,0):
42510 print bufname$((counter) + 0);" ";sex$  + chr$(13)
42520 '
42530 print bufname$(((counter) + 2));bufname$(((counter) +3))+chr$(13)
42540 print bufname$(((counter) + 4));bufname$(((counter) +5))+chr$(13)
42550 print bufname$(((counter) + 6));bufname$(((counter) +7)) + chr$(13)
42560 print bufname$(((counter) + 8));bufname$(((counter) +9)) + chr$(13):
42570 print "エンターキー：トップへ戻る" + chr$(13)
42580 print "s:もう一度検索" + chr$(13)
42590 key$ = Input$(1)
42600 if key$=chr$(13) then counter=0:hcount=0:goto Main_Screen:
42610 if key$="S" or key$="s" then counter=0:hcount=0:goto Search_find:
42620 Over_40count:
42630 'データーの登録数が４０件になると、ここに飛ぶ
42640 cls 3
42650 color rgb(255,255,255)
42660 print "登録件数が";Max;"件になりました" + chr$(13)
42670 print "エンターキーを押してください"
42680 a$ = input$(1)
42690 if a$ = chr$(13) then goto Main_Screen:
42700 func swap(a,b)
42710 tmp = b
42720 b = a
42730 a = tmp
42740 endfunc
42750 Anzai_Aisyou_EntryList:
42760 cls 3
42770 'ぐらふぃっく ここから
42780 'Title
42790 line(0,0)-(1050,60),rgb(0,0,255),bf
42800 line(0,60)-(1050,265),rgb(0,255,0),bf
42810 line(0,265)-(1050,370),rgb(255,212,212),bf
42820 line(0,370)-(1050,460),rgb(0,255,0),bf
42830 'ぐらふぃっく ここまで
42840 color rgb(255,255,255)
42850 print "安斎流相性占い　登録リスト" + chr$(13)
42860 color rgb(0,0,0)
42870 print "男性:"+chr$(13)
42880 print "女性:"+chr$(13)
42890 COLOR rgb(255,0,255)
42900 print "あなたとの相性"+chr$(13)
42910 color rgb(0,0,0)
42920 print "エンターキーを押してください"+chr$(13)
42930 ReiIden_Seimeihandan_data_Save:
42940 'Dataを保存してメイン画面に行く
42950 'Data保存処理 ファイルの末尾にデーターを追加
42960 open "config/Parsonal_data/Anzai_Aisyou_couple_list.dat" for append  as #1
42970 print #1,"男性の名前:";name$+name2$;",";"女性の名前:";name3$+name4$;",";"2人の相性:";bufferAisyou$;",";"判定：";check$
42980 close #1
42990 'Data保存ここまで
43000 'Data保存完了メッセージ
43010 ui_msg"データーを保存しました"
43020 'メイン画面に行く
43030 goto Main_Screen:
43040 '安斎流姓名判断　改名データー保存
43050 Anzai_Save_data:
43060 '保存して　トップ画面に行く
43070 '保存処理
43080 open "config/Parsonal_data/Anzai_Kaimei_list.dat" for append as #2
43090 print #2,"名前:";name$;",";"この名前の総数:";str$(bufer_total);",";"この名前の吉凶:";buf_Kikkyo$
43100 close #2
43110 'Data 保存完了メッセージ
43120 ui_msg "データーを保存しました"
43130 'メイン画面に飛ぶ
43140 goto Main_Screen:
43150 '安斎流姓名判断　改名リスト
43160 Anzai_Kaimei_List:
43170 cls 3
43180 '描画領域　ここから
43190 line (0,0)-(800,80),rgb(0,0,255),bf
43200 line (0,80)-(800,160),rgb(127,255,212),bf
43210 line (0,160)-(800,240),rgb(0,255,0),bf
43220 '描画領域　ここまで
43230 N=0
43240 open "config/Parsonal_data/Anzai_Kaimei_list.dat" for input as #1
43250 while eof(1)=0
43260 line input #1,lines$:N=N+1
43270 wend
43280 close #1
43290 color rgb(255,255,255)
43300 print "安斎流姓名判断　改名リスト　件数"+chr$(13)
43310 color rgb(255,0,255)
43320 print "登録件数:";N;"件です"+chr$(13)
43330 color rgb(0,0,0)
43340 print "エンターキーを押してください"+chr$(13)
43350 key$=input$(1)
43360 if key$=chr$(13) then goto Anzai_Kaimei_data_List:
43370 '安斎流姓名判断　改名リストの表示
43380 Anzai_Kaimei_data_List:
43390 open "config/Parsonal_data/Anzai_Kaimei_list.dat" for input as #2
43400 for i=0 to (N*3)-1
43410 input #2,kaimei_list_count$(i)
43420 next i
43430 close #2
43440 cls 3:n=0
43450 'グラフィック領域　ここから
43460 line (0,0)-(1000,80),rgb(0,0,255),bf
43470 line (3,3)-(1003,77),rgb(255,255,255),b
43480 line (0,80)-(1000,375),rgb(127,255,212),bf
43490 line (0,83)-(1003,378),rgb(0,0,0),b
43500 line (0,375)-(1000,540),rgb(0,255,0),bf
43510 line (0,372)-(1003,537),rgb(0,0,255),b
43520 'グラフィック領域　ここまで
43530 while n<=(N*3)-1
43540 cls
43550 color rgb(255,255,255)
43560 print "登録件数:";N;"件中";n+1;"件"+chr$(13)
43570 color rgb(255,0,255)
43580 print kaimei_list_count$(3*n);chr$(13)
43590 print "名前の総数:";kaimei_list_count$(3*n+1);chr$(13)
43600 print "名前の吉凶:";kaimei_list_count$(3*n+2);chr$(13)
43610 color rgb(0,0,0)
43620 print "エンターキー:トップ画面"+chr$(13)
43630 print "スペースキー:次へ"+chr$(13)
43640 a$ = input$(1)
43650 if a$ = chr$(13) then goto Main_Screen:
43660 if a$ = " " then n=((n+1) Mod N)
43670 wend
43680 '安斎流姓名判断　相性リスト
43690 Anzai_Aisyou_EntrydataList:
43700 cls 3
43710 '描画領域　ここから
43720 line (0,0)-(1000,80),rgb(0,0,255),bf
43730 line (0,80)-(1000,160),rgb(127,255,212),bf
43740 line (0,160)-(1000,300),rgb(0,255,0),bf
43750 '描画領域　ここまで
43760 N=0
43770 open "config/Parsonal_data/Anzai_Aisyou_couple_list.dat" for input as #1
43780 while eof(1) = 0
43790 line input #1,line$:N = N + 1
43800 wend
43810 close #1
43820 cls
43830 color rgb(255,255,255)
43840 print "安斎流姓名判断　相性リスト 登録件数" + chr$(13)
43850 color rgb(255,0,255)
43860 print "登録件数は";N;"件あります"  + chr$(13)
43870 color rgb(0,0,0)
43880 print "エンターキーを押してください" + chr$(13)
43890 key$=input$(1)
43900 if key$=chr$(13) then goto show_Anzai_Entrydatalist:
43910 '安斎流姓名判断　相性リスト　表示
43920 show_Anzai_Entrydatalist:
43930 n=0
43940 open "config/Parsonal_data/Anzai_Aisyou_couple_list.dat" for input as #2
43950 'while eof(2)=0
43960 for i=0 to (N*4) - 1
43970 input #2,buf_Anzai_Aisyou_data$(i)
43980 next i
43990 'wend
44000 close #2
44010 cls 3
44020 '描画領域　ここから
44030 line (0,0)-(1200,80),rgb(0,0,255),bf
44040 line (0,80)-(1200,100*4+60),rgb(127,255,212),bf
44050 line (0,100*4+60)-(1200,80*2+100*4+60),rgb(0,255,0),bf
44060 '描画領域　ここまで
44070 while n<=(N*4) - 1
44080 cls
44090 color rgb(255,255,255)
44100 print "安斎流姓名判断　相性リスト";N;"件中";n+1;" 件目" + chr$(13)
44110 color rgb(255,0,255)
44120 print buf_Anzai_Aisyou_data$(4*n);chr$(13)
44130 print buf_Anzai_Aisyou_data$(4*n+1);chr$(13)
44140 print buf_Anzai_Aisyou_data$(4*n+2);chr$(13)
44150 print buf_Anzai_Aisyou_data$(4*n+3);chr$(13)
44160 color rgb(0,0,0)
44170 print "次へ:スペースキー"+chr$(13)
44180 print "メイン画面:エンターキー"+chr$(13)
44190 key$=input$(1)
44200 if key$=" " then n=((n+1) mod N)
44210 if key$ = chr$(13) then goto Main_Screen:
44220 wend
