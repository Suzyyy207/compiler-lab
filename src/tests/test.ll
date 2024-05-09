declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@max = global i32 1073741824
@a = global [ 10000000 x i32 ] zeroinitializer
@b = global [ 10000000 x i32 ] zeroinitializer
@kernelid = global [ 10000 x i32 ] zeroinitializer
define i32 @checkrange( i32 %r100 ) {
bb2:
  %r101 = alloca i32
  store i32 %r100, i32* %r101
  br label %bb1

bb1:
  br label %bb3

bb3:
  %r102 = load i32, i32* %r101
  %r103 = load i32, i32* @max
  %r104 = icmp sgt i32 %r102, %r103
  br i1 %r104, label %bb4, label %bb5

bb4:
  %r105 = load i32, i32* %r101
  %r106 = load i32, i32* @max
  %r107 = sub i32 %r105, %r106
  store i32 %r107, i32* %r101
  br label %bb3

bb5:
  br label %bb6

bb6:
  %r108 = load i32, i32* %r101
  %r109 = icmp slt i32 %r108, 0
  br i1 %r109, label %bb7, label %bb8

bb7:
  %r110 = load i32, i32* %r101
  %r111 = load i32, i32* @max
  %r112 = add i32 %r110, %r111
  store i32 %r112, i32* %r101
  br label %bb6

bb8:
  %r113 = load i32, i32* %r101
  ret i32 %r113
}

define i32 @mod( i32 %r114, i32 %r116 ) {
bb10:
  %r115 = alloca i32
  store i32 %r114, i32* %r115
  %r117 = alloca i32
  store i32 %r116, i32* %r117
  br label %bb9

bb9:
  %r118 = load i32, i32* %r115
  %r119 = load i32, i32* %r115
  %r120 = load i32, i32* %r117
  %r121 = sdiv i32 %r119, %r120
  %r122 = load i32, i32* %r117
  %r123 = mul i32 %r121, %r122
  %r124 = sub i32 %r118, %r123
  ret i32 %r124
}

define i32 @reduce( i32 %r125, i32 %r127, i32 %r129 ) {
bb12:
  %r197 = alloca i32
  %r196 = alloca i32
  %r171 = alloca i32
  %r170 = alloca i32
  %r140 = alloca i32
  %r139 = alloca i32
  %r126 = alloca i32
  store i32 %r125, i32* %r126
  %r128 = alloca i32
  store i32 %r127, i32* %r128
  %r130 = alloca i32
  store i32 %r129, i32* %r130
  br label %bb11

bb11:
  %r131 = load i32, i32* %r126
  %r132 = icmp eq i32 %r131, 0
  br i1 %r132, label %bb13, label %bb14

bb13:
  %r133 = load i32, i32* %r128
  %r134 = load i32, i32* %r130
  %r135 = add i32 %r133, %r134
  %r136 = call i32 @checkrange(i32 %r135)
  ret i32 %r136
  br label %bb15

bb14:
  br label %bb15

bb15:
  %r137 = load i32, i32* %r126
  %r138 = icmp eq i32 %r137, 1
  br i1 %r138, label %bb16, label %bb17

bb16:
  store i32 0, i32* %r139
  store i32 1, i32* %r140
  br label %bb19

bb19:
  %r141 = load i32, i32* %r140
  %r142 = load i32, i32* @max
  %r143 = icmp slt i32 %r141, %r142
  br i1 %r143, label %bb20, label %bb21

bb20:
  %r144 = load i32, i32* %r128
  %r145 = load i32, i32* %r140
  %r146 = sdiv i32 %r144, %r145
  %r147 = call i32 @mod(i32 %r146, i32 2)
  %r148 = load i32, i32* %r130
  %r149 = load i32, i32* %r140
  %r150 = sdiv i32 %r148, %r149
  %r151 = call i32 @mod(i32 %r150, i32 2)
  %r152 = icmp eq i32 %r147, %r151
  br i1 %r152, label %bb22, label %bb23

bb22:
  %r153 = load i32, i32* %r139
  %r154 = mul i32 %r153, 2
  store i32 %r154, i32* %r139
  br label %bb24

bb23:
  %r155 = load i32, i32* %r139
  %r156 = mul i32 %r155, 2
  %r157 = add i32 %r156, 1
  store i32 %r157, i32* %r139
  br label %bb24

bb24:
  %r158 = load i32, i32* %r140
  %r159 = mul i32 %r158, 2
  store i32 %r159, i32* %r140
  br label %bb19

bb21:
  %r160 = load i32, i32* %r139
  ret i32 %r160
  br label %bb18

bb17:
  br label %bb18

bb18:
  %r161 = load i32, i32* %r126
  %r162 = icmp eq i32 %r161, 2
  br i1 %r162, label %bb25, label %bb26

bb25:
  %r163 = load i32, i32* %r128
  %r164 = load i32, i32* %r130
  %r165 = icmp sgt i32 %r163, %r164
  br i1 %r165, label %bb28, label %bb29

bb28:
  %r166 = load i32, i32* %r128
  ret i32 %r166
  br label %bb30

bb29:
  %r167 = load i32, i32* %r130
  ret i32 %r167
  br label %bb30

bb30:
  br label %bb27

bb26:
  br label %bb27

bb27:
  %r168 = load i32, i32* %r126
  %r169 = icmp eq i32 %r168, 3
  br i1 %r169, label %bb31, label %bb32

bb31:
  store i32 0, i32* %r170
  store i32 1, i32* %r171
  br label %bb34

bb34:
  %r172 = load i32, i32* %r140
  %r173 = load i32, i32* @max
  %r174 = icmp slt i32 %r172, %r173
  br i1 %r174, label %bb35, label %bb36

bb35:
  %r176 = load i32, i32* %r128
  %r177 = load i32, i32* %r140
  %r178 = sdiv i32 %r176, %r177
  %r179 = call i32 @mod(i32 %r178, i32 2)
  %r180 = icmp eq i32 %r179, 1
  br i1 %r180, label %bb37, label %bb40

bb40:
  %r181 = load i32, i32* %r130
  %r182 = load i32, i32* %r140
  %r183 = sdiv i32 %r181, %r182
  %r184 = call i32 @mod(i32 %r183, i32 2)
  %r185 = icmp eq i32 %r184, 1
  br i1 %r185, label %bb37, label %bb38

bb37:
  %r186 = load i32, i32* %r139
  %r187 = mul i32 %r186, 2
  %r188 = add i32 %r187, 1
  store i32 %r188, i32* %r139
  br label %bb39

bb38:
  %r189 = load i32, i32* %r139
  %r190 = mul i32 %r189, 2
  store i32 %r190, i32* %r139
  br label %bb39

bb39:
  %r191 = load i32, i32* %r140
  %r192 = mul i32 %r191, 2
  store i32 %r192, i32* %r140
  br label %bb34

bb36:
  %r193 = load i32, i32* %r139
  ret i32 %r193
  br label %bb33

bb32:
  br label %bb33

bb33:
  %r194 = load i32, i32* %r126
  %r195 = icmp eq i32 %r194, 4
  br i1 %r195, label %bb41, label %bb42

bb41:
  store i32 0, i32* %r196
  store i32 1, i32* %r197
  br label %bb44

bb44:
  %r198 = load i32, i32* %r140
  %r199 = load i32, i32* @max
  %r200 = icmp slt i32 %r198, %r199
  br i1 %r200, label %bb45, label %bb46

bb45:
  %r202 = load i32, i32* %r128
  %r203 = load i32, i32* %r140
  %r204 = sdiv i32 %r202, %r203
  %r205 = call i32 @mod(i32 %r204, i32 2)
  %r206 = icmp eq i32 %r205, 1
  br i1 %r206, label %bb50, label %bb48

bb50:
  %r207 = load i32, i32* %r130
  %r208 = load i32, i32* %r140
  %r209 = sdiv i32 %r207, %r208
  %r210 = call i32 @mod(i32 %r209, i32 2)
  %r211 = icmp eq i32 %r210, 1
  br i1 %r211, label %bb47, label %bb48

bb47:
  %r212 = load i32, i32* %r139
  %r213 = mul i32 %r212, 2
  %r214 = add i32 %r213, 1
  store i32 %r214, i32* %r139
  br label %bb49

bb48:
  %r215 = load i32, i32* %r139
  %r216 = mul i32 %r215, 2
  store i32 %r216, i32* %r139
  br label %bb49

bb49:
  %r217 = load i32, i32* %r140
  %r218 = mul i32 %r217, 2
  store i32 %r218, i32* %r140
  br label %bb44

bb46:
  %r219 = load i32, i32* %r139
  ret i32 %r219
  br label %bb43

bb42:
  br label %bb43

bb43:
  ret i32 0
}

define i32 @getvalue( i32* %r220, i32 %r221, i32 %r223, i32 %r225, i32 %r227 ) {
bb52:
  %r242 = alloca i32
  %r222 = alloca i32
  store i32 %r221, i32* %r222
  %r224 = alloca i32
  store i32 %r223, i32* %r224
  %r226 = alloca i32
  store i32 %r225, i32* %r226
  %r228 = alloca i32
  store i32 %r227, i32* %r228
  br label %bb51

bb51:
  %r232 = load i32, i32* %r226
  %r233 = icmp slt i32 %r232, 0
  br i1 %r233, label %bb53, label %bb58

bb58:
  %r234 = load i32, i32* %r228
  %r235 = icmp slt i32 %r234, 0
  br i1 %r235, label %bb53, label %bb57

bb57:
  %r236 = load i32, i32* %r226
  %r237 = load i32, i32* %r222
  %r238 = icmp sge i32 %r236, %r237
  br i1 %r238, label %bb53, label %bb56

bb56:
  %r239 = load i32, i32* %r228
  %r240 = load i32, i32* %r224
  %r241 = icmp sge i32 %r239, %r240
  br i1 %r241, label %bb53, label %bb54

bb53:
  ret i32 0
  br label %bb55

bb54:
  br label %bb55

bb55:
  %r243 = load i32, i32* %r226
  %r244 = load i32, i32* %r224
  %r245 = mul i32 %r243, %r244
  %r246 = load i32, i32* %r228
  %r247 = add i32 %r245, %r246
  store i32 %r247, i32* %r242
  %r248 = load i32, i32* %r242
  %r249 = getelementptr i32, i32* %r220, i32 %r248
  %r250 = load i32, i32* %r249
  ret i32 %r250
}

define i32 @convn( i32 %r251, i32* %r253, i32* %r254, i32 %r255, i32 %r257, i32 %r259 ) {
bb60:
  %r311 = alloca i32
  %r266 = alloca i32
  %r265 = alloca i32
  %r264 = alloca i32
  %r263 = alloca i32
  %r262 = alloca i32
  %r261 = alloca i32
  %r252 = alloca i32
  store i32 %r251, i32* %r252
  %r256 = alloca i32
  store i32 %r255, i32* %r256
  %r258 = alloca i32
  store i32 %r257, i32* %r258
  %r260 = alloca i32
  store i32 %r259, i32* %r260
  br label %bb59

bb59:
  store i32 0, i32* %r261
  store i32 0, i32* %r262
  store i32 1, i32* %r266
  br label %bb61

bb61:
  %r267 = load i32, i32* %r266
  %r268 = load i32, i32* %r266
  %r269 = icmp eq i32 %r267, %r268
  br i1 %r269, label %bb62, label %bb63

bb62:
  store i32 0, i32* %r262
  br label %bb64

bb64:
  %r270 = load i32, i32* %r266
  %r271 = load i32, i32* %r266
  %r272 = icmp eq i32 %r270, %r271
  br i1 %r272, label %bb65, label %bb66

bb65:
  store i32 0, i32* %r265
  %r273 = load i32, i32* %r261
  %r274 = load i32, i32* %r260
  %r275 = sdiv i32 %r274, 2
  %r276 = sub i32 %r273, %r275
  store i32 %r276, i32* %r263
  br label %bb67

bb67:
  %r277 = load i32, i32* %r266
  %r278 = load i32, i32* %r266
  %r279 = icmp eq i32 %r277, %r278
  br i1 %r279, label %bb68, label %bb69

bb68:
  %r280 = load i32, i32* %r262
  %r281 = load i32, i32* %r260
  %r282 = sdiv i32 %r281, 2
  %r283 = sub i32 %r280, %r282
  store i32 %r283, i32* %r264
  br label %bb70

bb70:
  %r284 = load i32, i32* %r266
  %r285 = load i32, i32* %r266
  %r286 = icmp eq i32 %r284, %r285
  br i1 %r286, label %bb71, label %bb72

bb71:
  %r287 = load i32, i32* %r252
  %r288 = load i32, i32* %r265
  %r289 = load i32, i32* %r256
  %r290 = load i32, i32* %r258
  %r291 = load i32, i32* %r263
  %r292 = load i32, i32* %r264
  %r293 = call i32 @getvalue(i32* %r253, i32 %r289, i32 %r290, i32 %r291, i32 %r292)
  %r294 = call i32 @reduce(i32 %r287, i32 %r288, i32 %r293)
  store i32 %r294, i32* %r265
  %r295 = load i32, i32* %r264
  %r296 = add i32 %r295, 1
  store i32 %r296, i32* %r264
  %r297 = load i32, i32* %r264
  %r298 = load i32, i32* %r262
  %r299 = load i32, i32* %r260
  %r300 = sdiv i32 %r299, 2
  %r301 = add i32 %r298, %r300
  %r302 = icmp sge i32 %r297, %r301
  br i1 %r302, label %bb73, label %bb74

bb73:
  br label %bb72

  br label %bb75

bb74:
  br label %bb75

bb75:
  br label %bb70

bb72:
  %r303 = load i32, i32* %r263
  %r304 = add i32 %r303, 1
  store i32 %r304, i32* %r263
  %r305 = load i32, i32* %r263
  %r306 = load i32, i32* %r261
  %r307 = load i32, i32* %r260
  %r308 = sdiv i32 %r307, 2
  %r309 = add i32 %r306, %r308
  %r310 = icmp sge i32 %r305, %r309
  br i1 %r310, label %bb76, label %bb77

bb76:
  br label %bb69

  br label %bb78

bb77:
  br label %bb78

bb78:
  br label %bb67

bb69:
  %r312 = load i32, i32* %r261
  %r313 = load i32, i32* %r258
  %r314 = mul i32 %r312, %r313
  %r315 = load i32, i32* %r262
  %r316 = add i32 %r314, %r315
  store i32 %r316, i32* %r311
  %r317 = load i32, i32* %r265
  %r318 = load i32, i32* %r311
  %r319 = getelementptr i32, i32* %r254, i32 %r318
  store i32 %r317, i32* %r319
  %r320 = load i32, i32* %r262
  %r321 = add i32 %r320, 1
  store i32 %r321, i32* %r262
  %r322 = load i32, i32* %r262
  %r323 = load i32, i32* %r258
  %r324 = icmp sge i32 %r322, %r323
  br i1 %r324, label %bb79, label %bb80

bb79:
  br label %bb66

  br label %bb81

bb80:
  br label %bb81

bb81:
  br label %bb64

bb66:
  %r325 = load i32, i32* %r261
  %r326 = add i32 %r325, 1
  store i32 %r326, i32* %r261
  %r327 = load i32, i32* %r261
  %r328 = load i32, i32* %r256
  %r329 = icmp sge i32 %r327, %r328
  br i1 %r329, label %bb82, label %bb83

bb82:
  br label %bb63

  br label %bb84

bb83:
  br label %bb84

bb84:
  br label %bb61

bb63:
  ret i32 0
}

define void @memmove( i32* %r330, i32* %r331, i32 %r332 ) {
bb86:
  %r334 = alloca i32
  %r333 = alloca i32
  store i32 %r332, i32* %r333
  br label %bb85

bb85:
  store i32 0, i32* %r334
  br label %bb87

bb87:
  %r335 = load i32, i32* %r334
  %r336 = load i32, i32* %r333
  %r337 = icmp slt i32 %r335, %r336
  br i1 %r337, label %bb88, label %bb89

bb88:
  %r338 = load i32, i32* %r334
  %r339 = getelementptr i32, i32* %r331, i32 %r338
  %r340 = load i32, i32* %r339
  %r341 = load i32, i32* %r334
  %r342 = getelementptr i32, i32* %r330, i32 %r341
  store i32 %r340, i32* %r342
  %r343 = load i32, i32* %r334
  %r344 = add i32 %r343, 1
  store i32 %r344, i32* %r334
  br label %bb87

bb89:
  ret void
}

define i32 @main( ) {
bb90:
  %r373 = alloca i32
  %r371 = alloca i32
  %r346 = call i32 @getint()
  %r345 = alloca i32
  store i32 %r346, i32* %r345
  %r348 = call i32 @getint()
  %r347 = alloca i32
  store i32 %r348, i32* %r347
  %r350 = call i32 @getint()
  %r349 = alloca i32
  store i32 %r350, i32* %r349
  %r351 = alloca i32
  %r352 = call i32 @getint()
  store i32 %r352, i32* %r351
  %r353 = alloca i32
  store i32 0, i32* %r353
  br label %bb91

bb91:
  %r354 = load i32, i32* %r353
  %r355 = load i32, i32* %r351
  %r356 = icmp slt i32 %r354, %r355
  br i1 %r356, label %bb92, label %bb93

bb92:
  %r357 = call i32 @getint()
  %r358 = load i32, i32* %r353
  %r359 = getelementptr [10000000 x i32 ], [10000000 x i32 ]* @a, i32 0, i32 %r358
  store i32 %r357, i32* %r359
  %r360 = load i32, i32* %r353
  %r361 = add i32 %r360, 1
  store i32 %r361, i32* %r353
  br label %bb91

bb93:
  %r362 = call i32 @getint()
  store i32 %r362, i32* %r351
  store i32 0, i32* %r353
  br label %bb94

bb94:
  %r363 = load i32, i32* %r353
  %r364 = load i32, i32* %r351
  %r365 = icmp slt i32 %r363, %r364
  br i1 %r365, label %bb95, label %bb96

bb95:
  %r366 = call i32 @getint()
  %r367 = load i32, i32* %r353
  %r368 = getelementptr [10000 x i32 ], [10000 x i32 ]* @kernelid, i32 0, i32 %r367
  store i32 %r366, i32* %r368
  %r369 = load i32, i32* %r353
  %r370 = add i32 %r369, 1
  store i32 %r370, i32* %r353
  br label %bb94

bb96:
  %r372 = load i32, i32* %r351
  store i32 %r372, i32* %r371
  call void @_sysy_starttime(i32 209)
  store i32 0, i32* %r373
  br label %bb97

bb97:
  %r374 = load i32, i32* %r373
  %r375 = load i32, i32* %r371
  %r376 = icmp slt i32 %r374, %r375
  br i1 %r376, label %bb98, label %bb99

bb98:
  %r377 = load i32, i32* %r373
  %r378 = getelementptr [10000 x i32 ], [10000 x i32 ]* @kernelid, i32 0, i32 %r377
  %r379 = load i32, i32* %r378
  %r380 = getelementptr [10000000 x i32 ], [10000000 x i32 ]* @a, i32 0, i32 0
  %r381 = getelementptr [10000000 x i32 ], [10000000 x i32 ]* @b, i32 0, i32 0
  %r382 = load i32, i32* %r347
  %r383 = load i32, i32* %r349
  %r384 = load i32, i32* %r345
  %r385 = call i32 @convn(i32 %r379, i32* %r380, i32* %r381, i32 %r382, i32 %r383, i32 %r384)
  %r386 = getelementptr [10000000 x i32 ], [10000000 x i32 ]* @a, i32 0, i32 0
  %r387 = getelementptr [10000000 x i32 ], [10000000 x i32 ]* @b, i32 0, i32 0
  %r388 = load i32, i32* %r347
  %r389 = load i32, i32* %r349
  %r390 = mul i32 %r388, %r389
  call void @memmove(i32* %r386, i32* %r387, i32 %r390)
  %r391 = load i32, i32* %r373
  %r392 = add i32 %r391, 1
  store i32 %r392, i32* %r373
  br label %bb97

bb99:
  call void @_sysy_stoptime(i32 312)
  %r393 = load i32, i32* %r347
  %r394 = load i32, i32* %r349
  %r395 = mul i32 %r393, %r394
  %r396 = getelementptr [10000000 x i32 ], [10000000 x i32 ]* @a, i32 0, i32 0
  call void @putarray(i32 %r395, i32* %r396)
  ret i32 0
}

