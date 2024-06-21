declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
%my_struct_1 = type { [7 x i32 ] }
%my_struct_2 = type { [8 x %my_struct_1 ] }
%my_struct_3 = type { [5 x %my_struct_2 ] }
%my_struct_4 = type { [4 x %my_struct_3 ] }
%my_struct_5 = type { [3 x %my_struct_4 ] }
%my_struct_6 = type { [2 x %my_struct_5 ] }
@arr1 = global [ 10 x %my_struct_6 ] zeroinitializer
@arr2 = global [ 10 x %my_struct_6 ] zeroinitializer
define i32 @loop1( i32 %r100, i32 %r102 ) {
bb2:
  %r110 = alloca i32
  %r109 = alloca i32
  %r108 = alloca i32
  %r107 = alloca i32
  %r106 = alloca i32
  %r105 = alloca i32
  %r104 = alloca i32
  %r101 = alloca i32
  store i32 %r100, i32* %r101
  %r103 = alloca i32
  store i32 %r102, i32* %r103
  br label %bb1

bb1:
  store i32 0, i32* %r104
  br label %bb3

bb3:
  %r112 = load i32, i32* %r104
  %r113 = load i32, i32* %r101
  %r114 = icmp slt i32 %r112, %r113
  br i1 %r114, label %bb6, label %bb5

bb6:
  %r115 = load i32, i32* %r104
  %r116 = load i32, i32* %r103
  %r117 = icmp slt i32 %r115, %r116
  br i1 %r117, label %bb4, label %bb5

bb4:
  store i32 0, i32* %r105
  br label %bb7

bb7:
  %r118 = load i32, i32* %r105
  %r119 = icmp slt i32 %r118, 2
  br i1 %r119, label %bb8, label %bb9

bb8:
  store i32 0, i32* %r106
  br label %bb10

bb10:
  %r120 = load i32, i32* %r106
  %r121 = icmp slt i32 %r120, 3
  br i1 %r121, label %bb11, label %bb12

bb11:
  store i32 0, i32* %r107
  br label %bb13

bb13:
  %r122 = load i32, i32* %r107
  %r123 = icmp slt i32 %r122, 4
  br i1 %r123, label %bb14, label %bb15

bb14:
  store i32 0, i32* %r108
  br label %bb16

bb16:
  %r124 = load i32, i32* %r108
  %r125 = icmp slt i32 %r124, 5
  br i1 %r125, label %bb17, label %bb18

bb17:
  store i32 0, i32* %r109
  br label %bb19

bb19:
  %r126 = load i32, i32* %r109
  %r127 = icmp slt i32 %r126, 6
  br i1 %r127, label %bb20, label %bb21

bb20:
  store i32 0, i32* %r110
  br label %bb22

bb22:
  %r128 = load i32, i32* %r110
  %r129 = icmp slt i32 %r128, 2
  br i1 %r129, label %bb23, label %bb24

bb23:
  %r130 = load i32, i32* %r104
  %r131 = load i32, i32* %r105
  %r132 = add i32 %r130, %r131
  %r133 = load i32, i32* %r106
  %r134 = add i32 %r132, %r133
  %r135 = load i32, i32* %r107
  %r136 = add i32 %r134, %r135
  %r137 = load i32, i32* %r108
  %r138 = add i32 %r136, %r137
  %r139 = load i32, i32* %r109
  %r140 = add i32 %r138, %r139
  %r141 = load i32, i32* %r110
  %r142 = add i32 %r140, %r141
  %r143 = load i32, i32* %r101
  %r144 = add i32 %r142, %r143
  %r145 = load i32, i32* %r103
  %r146 = add i32 %r144, %r145
  %r147 = load i32, i32* %r110
  %r148 = load i32, i32* %r109
  %r149 = load i32, i32* %r108
  %r150 = load i32, i32* %r107
  %r151 = load i32, i32* %r106
  %r152 = load i32, i32* %r105
  %r153 = load i32, i32* %r104
  %r154 = getelementptr [10 x %my_struct_6 ], [10 x %my_struct_6 ]* @arr1, i32 0, i32 %r153
  %r155 = getelementptr %my_struct_6, %my_struct_6* %r154, i32 0, i32 0
  %r156 = getelementptr [2 x %my_struct_5 ], [2 x %my_struct_5 ]* %r155, i32 0, i32 %r152
  %r157 = getelementptr %my_struct_5, %my_struct_5* %r156, i32 0, i32 0
  %r158 = getelementptr [3 x %my_struct_4 ], [3 x %my_struct_4 ]* %r157, i32 0, i32 %r151
  %r159 = getelementptr %my_struct_4, %my_struct_4* %r158, i32 0, i32 0
  %r160 = getelementptr [4 x %my_struct_3 ], [4 x %my_struct_3 ]* %r159, i32 0, i32 %r150
  %r161 = getelementptr %my_struct_3, %my_struct_3* %r160, i32 0, i32 0
  %r162 = getelementptr [5 x %my_struct_2 ], [5 x %my_struct_2 ]* %r161, i32 0, i32 %r149
  %r163 = getelementptr %my_struct_2, %my_struct_2* %r162, i32 0, i32 0
  %r164 = getelementptr [8 x %my_struct_1 ], [8 x %my_struct_1 ]* %r163, i32 0, i32 %r148
  %r165 = getelementptr %my_struct_1, %my_struct_1* %r164, i32 0, i32 0
  %r166 = getelementptr [7 x i32 ], [7 x i32 ]* %r165, i32 0, i32 %r147
  store i32 %r146, i32* %r166
  %r167 = load i32, i32* %r110
  %r168 = add i32 %r167, 1
  store i32 %r168, i32* %r110
  br label %bb22

bb24:
  %r169 = load i32, i32* %r109
  %r170 = add i32 %r169, 1
  store i32 %r170, i32* %r109
  br label %bb19

bb21:
  %r171 = load i32, i32* %r108
  %r172 = add i32 %r171, 1
  store i32 %r172, i32* %r108
  br label %bb16

bb18:
  %r173 = load i32, i32* %r107
  %r174 = add i32 %r173, 1
  store i32 %r174, i32* %r107
  br label %bb13

bb15:
  %r175 = load i32, i32* %r106
  %r176 = add i32 %r175, 1
  store i32 %r176, i32* %r106
  br label %bb10

bb12:
  %r177 = load i32, i32* %r105
  %r178 = add i32 %r177, 1
  store i32 %r178, i32* %r105
  br label %bb7

bb9:
  %r179 = load i32, i32* %r104
  %r180 = add i32 %r179, 1
  store i32 %r180, i32* %r104
  br label %bb3

bb5:
  ret i32 0
}

define i32 @loop2( ) {
bb25:
  %r181 = alloca i32
  %r182 = alloca i32
  %r183 = alloca i32
  %r184 = alloca i32
  %r185 = alloca i32
  %r186 = alloca i32
  %r187 = alloca i32
  store i32 0, i32* %r181
  br label %bb26

bb26:
  %r188 = load i32, i32* %r181
  %r189 = icmp slt i32 %r188, 10
  br i1 %r189, label %bb27, label %bb28

bb27:
  store i32 0, i32* %r182
  br label %bb29

bb29:
  %r190 = load i32, i32* %r182
  %r191 = icmp slt i32 %r190, 2
  br i1 %r191, label %bb30, label %bb31

bb30:
  store i32 0, i32* %r183
  br label %bb32

bb32:
  %r192 = load i32, i32* %r183
  %r193 = icmp slt i32 %r192, 3
  br i1 %r193, label %bb33, label %bb34

bb33:
  store i32 0, i32* %r184
  br label %bb35

bb35:
  %r194 = load i32, i32* %r184
  %r195 = icmp slt i32 %r194, 2
  br i1 %r195, label %bb36, label %bb37

bb36:
  store i32 0, i32* %r185
  br label %bb38

bb38:
  %r196 = load i32, i32* %r185
  %r197 = icmp slt i32 %r196, 4
  br i1 %r197, label %bb39, label %bb40

bb39:
  store i32 0, i32* %r186
  br label %bb41

bb41:
  %r198 = load i32, i32* %r186
  %r199 = icmp slt i32 %r198, 8
  br i1 %r199, label %bb42, label %bb43

bb42:
  store i32 0, i32* %r187
  br label %bb44

bb44:
  %r200 = load i32, i32* %r187
  %r201 = icmp slt i32 %r200, 7
  br i1 %r201, label %bb45, label %bb46

bb45:
  %r202 = load i32, i32* %r181
  %r203 = load i32, i32* %r182
  %r204 = add i32 %r202, %r203
  %r205 = load i32, i32* %r184
  %r206 = add i32 %r204, %r205
  %r207 = load i32, i32* %r187
  %r208 = add i32 %r206, %r207
  %r209 = load i32, i32* %r187
  %r210 = load i32, i32* %r186
  %r211 = load i32, i32* %r185
  %r212 = load i32, i32* %r184
  %r213 = load i32, i32* %r183
  %r214 = load i32, i32* %r182
  %r215 = load i32, i32* %r181
  %r216 = getelementptr [10 x %my_struct_6 ], [10 x %my_struct_6 ]* @arr2, i32 0, i32 %r215
  %r217 = getelementptr %my_struct_6, %my_struct_6* %r216, i32 0, i32 0
  %r218 = getelementptr [2 x %my_struct_5 ], [2 x %my_struct_5 ]* %r217, i32 0, i32 %r214
  %r219 = getelementptr %my_struct_5, %my_struct_5* %r218, i32 0, i32 0
  %r220 = getelementptr [3 x %my_struct_4 ], [3 x %my_struct_4 ]* %r219, i32 0, i32 %r213
  %r221 = getelementptr %my_struct_4, %my_struct_4* %r220, i32 0, i32 0
  %r222 = getelementptr [4 x %my_struct_3 ], [4 x %my_struct_3 ]* %r221, i32 0, i32 %r212
  %r223 = getelementptr %my_struct_3, %my_struct_3* %r222, i32 0, i32 0
  %r224 = getelementptr [5 x %my_struct_2 ], [5 x %my_struct_2 ]* %r223, i32 0, i32 %r211
  %r225 = getelementptr %my_struct_2, %my_struct_2* %r224, i32 0, i32 0
  %r226 = getelementptr [8 x %my_struct_1 ], [8 x %my_struct_1 ]* %r225, i32 0, i32 %r210
  %r227 = getelementptr %my_struct_1, %my_struct_1* %r226, i32 0, i32 0
  %r228 = getelementptr [7 x i32 ], [7 x i32 ]* %r227, i32 0, i32 %r209
  store i32 %r208, i32* %r228
  %r229 = load i32, i32* %r187
  %r230 = add i32 %r229, 1
  store i32 %r230, i32* %r187
  br label %bb44

bb46:
  %r231 = load i32, i32* %r186
  %r232 = add i32 %r231, 1
  store i32 %r232, i32* %r186
  br label %bb41

bb43:
  %r233 = load i32, i32* %r185
  %r234 = add i32 %r233, 1
  store i32 %r234, i32* %r185
  br label %bb38

bb40:
  %r235 = load i32, i32* %r184
  %r236 = add i32 %r235, 1
  store i32 %r236, i32* %r184
  br label %bb35

bb37:
  %r237 = load i32, i32* %r183
  %r238 = add i32 %r237, 1
  store i32 %r238, i32* %r183
  br label %bb32

bb34:
  %r239 = load i32, i32* %r182
  %r240 = add i32 %r239, 1
  store i32 %r240, i32* %r182
  br label %bb29

bb31:
  %r241 = load i32, i32* %r181
  %r242 = add i32 %r241, 1
  store i32 %r242, i32* %r181
  br label %bb26

bb28:
  ret i32 0
}

define i32 @loop3( i32 %r243, i32 %r245, i32 %r247, i32 %r249, i32 %r251, i32 %r253, i32 %r255 ) {
bb48:
  %r264 = alloca i32
  %r263 = alloca i32
  %r262 = alloca i32
  %r261 = alloca i32
  %r260 = alloca i32
  %r259 = alloca i32
  %r258 = alloca i32
  %r257 = alloca i32
  %r244 = alloca i32
  store i32 %r243, i32* %r244
  %r246 = alloca i32
  store i32 %r245, i32* %r246
  %r248 = alloca i32
  store i32 %r247, i32* %r248
  %r250 = alloca i32
  store i32 %r249, i32* %r250
  %r252 = alloca i32
  store i32 %r251, i32* %r252
  %r254 = alloca i32
  store i32 %r253, i32* %r254
  %r256 = alloca i32
  store i32 %r255, i32* %r256
  br label %bb47

bb47:
  store i32 0, i32* %r264
  store i32 0, i32* %r257
  br label %bb49

bb49:
  %r265 = load i32, i32* %r257
  %r266 = icmp slt i32 %r265, 10
  br i1 %r266, label %bb50, label %bb51

bb50:
  store i32 0, i32* %r258
  br label %bb52

bb52:
  %r267 = load i32, i32* %r258
  %r268 = icmp slt i32 %r267, 100
  br i1 %r268, label %bb53, label %bb54

bb53:
  store i32 0, i32* %r259
  br label %bb55

bb55:
  %r269 = load i32, i32* %r259
  %r270 = icmp slt i32 %r269, 1000
  br i1 %r270, label %bb56, label %bb57

bb56:
  store i32 0, i32* %r260
  br label %bb58

bb58:
  %r271 = load i32, i32* %r260
  %r272 = icmp slt i32 %r271, 10000
  br i1 %r272, label %bb59, label %bb60

bb59:
  store i32 0, i32* %r261
  br label %bb61

bb61:
  %r273 = load i32, i32* %r261
  %r274 = icmp slt i32 %r273, 100000
  br i1 %r274, label %bb62, label %bb63

bb62:
  store i32 0, i32* %r262
  br label %bb64

bb64:
  %r275 = load i32, i32* %r262
  %r276 = icmp slt i32 %r275, 1000000
  br i1 %r276, label %bb65, label %bb66

bb65:
  store i32 0, i32* %r263
  br label %bb67

bb67:
  %r277 = load i32, i32* %r263
  %r278 = icmp slt i32 %r277, 10000000
  br i1 %r278, label %bb68, label %bb69

bb68:
  %r279 = load i32, i32* %r264
  %r280 = load i32, i32* %r264
  %r281 = sdiv i32 %r280, 817
  %r282 = mul i32 %r281, 817
  %r283 = sub i32 %r279, %r282
  %r284 = load i32, i32* %r263
  %r285 = load i32, i32* %r262
  %r286 = load i32, i32* %r261
  %r287 = load i32, i32* %r260
  %r288 = load i32, i32* %r259
  %r289 = load i32, i32* %r258
  %r290 = load i32, i32* %r257
  %r291 = getelementptr [10 x %my_struct_6 ], [10 x %my_struct_6 ]* @arr1, i32 0, i32 %r290
  %r292 = getelementptr %my_struct_6, %my_struct_6* %r291, i32 0, i32 0
  %r293 = getelementptr [2 x %my_struct_5 ], [2 x %my_struct_5 ]* %r292, i32 0, i32 %r289
  %r294 = getelementptr %my_struct_5, %my_struct_5* %r293, i32 0, i32 0
  %r295 = getelementptr [3 x %my_struct_4 ], [3 x %my_struct_4 ]* %r294, i32 0, i32 %r288
  %r296 = getelementptr %my_struct_4, %my_struct_4* %r295, i32 0, i32 0
  %r297 = getelementptr [4 x %my_struct_3 ], [4 x %my_struct_3 ]* %r296, i32 0, i32 %r287
  %r298 = getelementptr %my_struct_3, %my_struct_3* %r297, i32 0, i32 0
  %r299 = getelementptr [5 x %my_struct_2 ], [5 x %my_struct_2 ]* %r298, i32 0, i32 %r286
  %r300 = getelementptr %my_struct_2, %my_struct_2* %r299, i32 0, i32 0
  %r301 = getelementptr [8 x %my_struct_1 ], [8 x %my_struct_1 ]* %r300, i32 0, i32 %r285
  %r302 = getelementptr %my_struct_1, %my_struct_1* %r301, i32 0, i32 0
  %r303 = getelementptr [7 x i32 ], [7 x i32 ]* %r302, i32 0, i32 %r284
  %r304 = load i32, i32* %r303
  %r305 = add i32 %r283, %r304
  %r306 = load i32, i32* %r263
  %r307 = load i32, i32* %r262
  %r308 = load i32, i32* %r261
  %r309 = load i32, i32* %r260
  %r310 = load i32, i32* %r259
  %r311 = load i32, i32* %r258
  %r312 = load i32, i32* %r257
  %r313 = getelementptr [10 x %my_struct_6 ], [10 x %my_struct_6 ]* @arr2, i32 0, i32 %r312
  %r314 = getelementptr %my_struct_6, %my_struct_6* %r313, i32 0, i32 0
  %r315 = getelementptr [2 x %my_struct_5 ], [2 x %my_struct_5 ]* %r314, i32 0, i32 %r311
  %r316 = getelementptr %my_struct_5, %my_struct_5* %r315, i32 0, i32 0
  %r317 = getelementptr [3 x %my_struct_4 ], [3 x %my_struct_4 ]* %r316, i32 0, i32 %r310
  %r318 = getelementptr %my_struct_4, %my_struct_4* %r317, i32 0, i32 0
  %r319 = getelementptr [4 x %my_struct_3 ], [4 x %my_struct_3 ]* %r318, i32 0, i32 %r309
  %r320 = getelementptr %my_struct_3, %my_struct_3* %r319, i32 0, i32 0
  %r321 = getelementptr [5 x %my_struct_2 ], [5 x %my_struct_2 ]* %r320, i32 0, i32 %r308
  %r322 = getelementptr %my_struct_2, %my_struct_2* %r321, i32 0, i32 0
  %r323 = getelementptr [8 x %my_struct_1 ], [8 x %my_struct_1 ]* %r322, i32 0, i32 %r307
  %r324 = getelementptr %my_struct_1, %my_struct_1* %r323, i32 0, i32 0
  %r325 = getelementptr [7 x i32 ], [7 x i32 ]* %r324, i32 0, i32 %r306
  %r326 = load i32, i32* %r325
  %r327 = add i32 %r305, %r326
  store i32 %r327, i32* %r264
  %r328 = load i32, i32* %r263
  %r329 = add i32 %r328, 1
  store i32 %r329, i32* %r263
  %r330 = load i32, i32* %r263
  %r331 = load i32, i32* %r256
  %r332 = icmp sge i32 %r330, %r331
  br i1 %r332, label %bb70, label %bb71

bb70:
  br label %bb69

bb71:
  br label %bb72

bb72:
  br label %bb67

bb69:
  %r333 = load i32, i32* %r262
  %r334 = add i32 %r333, 1
  store i32 %r334, i32* %r262
  %r335 = load i32, i32* %r262
  %r336 = load i32, i32* %r254
  %r337 = icmp sge i32 %r335, %r336
  br i1 %r337, label %bb73, label %bb74

bb73:
  br label %bb66

bb74:
  br label %bb75

bb75:
  br label %bb64

bb66:
  %r338 = load i32, i32* %r261
  %r339 = add i32 %r338, 1
  store i32 %r339, i32* %r261
  %r340 = load i32, i32* %r261
  %r341 = load i32, i32* %r252
  %r342 = icmp sge i32 %r340, %r341
  br i1 %r342, label %bb76, label %bb77

bb76:
  br label %bb63

bb77:
  br label %bb78

bb78:
  br label %bb61

bb63:
  %r343 = load i32, i32* %r260
  %r344 = add i32 %r343, 1
  store i32 %r344, i32* %r260
  %r345 = load i32, i32* %r260
  %r346 = load i32, i32* %r250
  %r347 = icmp sge i32 %r345, %r346
  br i1 %r347, label %bb79, label %bb80

bb79:
  br label %bb60

bb80:
  br label %bb81

bb81:
  br label %bb58

bb60:
  %r348 = load i32, i32* %r259
  %r349 = add i32 %r348, 1
  store i32 %r349, i32* %r259
  %r350 = load i32, i32* %r259
  %r351 = load i32, i32* %r248
  %r352 = icmp sge i32 %r350, %r351
  br i1 %r352, label %bb82, label %bb83

bb82:
  br label %bb57

bb83:
  br label %bb84

bb84:
  br label %bb55

bb57:
  %r353 = load i32, i32* %r258
  %r354 = add i32 %r353, 1
  store i32 %r354, i32* %r258
  %r355 = load i32, i32* %r258
  %r356 = load i32, i32* %r246
  %r357 = icmp sge i32 %r355, %r356
  br i1 %r357, label %bb85, label %bb86

bb85:
  br label %bb54

bb86:
  br label %bb87

bb87:
  br label %bb52

bb54:
  %r358 = load i32, i32* %r257
  %r359 = add i32 %r358, 1
  store i32 %r359, i32* %r257
  %r360 = load i32, i32* %r257
  %r361 = load i32, i32* %r244
  %r362 = icmp sge i32 %r360, %r361
  br i1 %r362, label %bb88, label %bb89

bb88:
  br label %bb51

bb89:
  br label %bb90

bb90:
  br label %bb49

bb51:
  %r363 = load i32, i32* %r264
  ret i32 %r363
}

define i32 @main( ) {
bb91:
  call void @_sysy_starttime(i32 97)
  %r365 = call i32 @getint()
  %r364 = alloca i32
  store i32 %r365, i32* %r364
  %r367 = call i32 @getint()
  %r366 = alloca i32
  store i32 %r367, i32* %r366
  %r369 = call i32 @getint()
  %r368 = alloca i32
  store i32 %r369, i32* %r368
  %r371 = call i32 @getint()
  %r370 = alloca i32
  store i32 %r371, i32* %r370
  %r373 = call i32 @getint()
  %r372 = alloca i32
  store i32 %r373, i32* %r372
  %r375 = call i32 @getint()
  %r374 = alloca i32
  store i32 %r375, i32* %r374
  %r377 = call i32 @getint()
  %r376 = alloca i32
  store i32 %r377, i32* %r376
  %r379 = call i32 @getint()
  %r378 = alloca i32
  store i32 %r379, i32* %r378
  %r381 = call i32 @getint()
  %r380 = alloca i32
  store i32 %r381, i32* %r380
  %r382 = load i32, i32* %r364
  %r383 = load i32, i32* %r364
  %r384 = load i32, i32* %r366
  %r385 = load i32, i32* %r366
  %r386 = call i32 @loop1(i32 %r383, i32 %r385)
  %r387 = call i32 @loop2()
  %r388 = load i32, i32* %r368
  %r389 = load i32, i32* %r370
  %r390 = load i32, i32* %r372
  %r391 = load i32, i32* %r374
  %r392 = load i32, i32* %r376
  %r393 = load i32, i32* %r378
  %r394 = load i32, i32* %r380
  %r395 = call i32 @loop3(i32 %r388, i32 %r389, i32 %r390, i32 %r391, i32 %r392, i32 %r393, i32 %r394)
  store i32 %r395, i32* %r380
  call void @_sysy_stoptime(i32 117)
  %r396 = load i32, i32* %r380
  ret i32 %r396
}

