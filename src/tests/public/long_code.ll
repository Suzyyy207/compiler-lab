declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @bubblesort( i32* %r100 ) {
bb1:
  %r124 = alloca i32
  %r123 = alloca i32
  %r113 = alloca i32
  %r101 = alloca i32
  %r102 = alloca i32
  store i32 0, i32* %r101
  br label %bb2

bb2:
  %r103 = load i32, i32* %r101
  %r104 = load i32, i32* @n
  %r105 = sub i32 %r104, 1
  %r106 = icmp slt i32 %r103, %r105
  br i1 %r106, label %bb3, label %bb4

bb3:
  store i32 0, i32* %r102
  br label %bb5

bb5:
  %r107 = load i32, i32* %r102
  %r108 = load i32, i32* @n
  %r109 = load i32, i32* %r101
  %r110 = sub i32 %r108, %r109
  %r111 = sub i32 %r110, 1
  %r112 = icmp slt i32 %r107, %r111
  br i1 %r112, label %bb6, label %bb7

bb6:
  %r114 = load i32, i32* %r102
  %r115 = add i32 %r114, 1
  store i32 %r115, i32* %r113
  %r116 = load i32, i32* %r102
  %r117 = getelementptr i32, i32* %r100, i32 %r116
  %r118 = load i32, i32* %r117
  %r119 = load i32, i32* %r113
  %r120 = getelementptr i32, i32* %r100, i32 %r119
  %r121 = load i32, i32* %r120
  %r122 = icmp sgt i32 %r118, %r121
  br i1 %r122, label %bb8, label %bb9

bb8:
  %r125 = load i32, i32* %r102
  %r126 = add i32 %r125, 1
  store i32 %r126, i32* %r124
  %r127 = load i32, i32* %r124
  %r128 = getelementptr i32, i32* %r100, i32 %r127
  %r129 = load i32, i32* %r128
  store i32 %r129, i32* %r123
  %r130 = load i32, i32* %r102
  %r131 = getelementptr i32, i32* %r100, i32 %r130
  %r132 = load i32, i32* %r131
  %r133 = load i32, i32* %r124
  %r134 = getelementptr i32, i32* %r100, i32 %r133
  store i32 %r132, i32* %r134
  %r135 = load i32, i32* %r123
  %r136 = load i32, i32* %r102
  %r137 = getelementptr i32, i32* %r100, i32 %r136
  store i32 %r135, i32* %r137
  br label %bb10

bb9:
  br label %bb10

bb10:
  %r138 = load i32, i32* %r102
  %r139 = add i32 %r138, 1
  store i32 %r139, i32* %r102
  br label %bb5

bb7:
  %r140 = load i32, i32* %r101
  %r141 = add i32 %r140, 1
  store i32 %r141, i32* %r101
  br label %bb2

bb4:
  ret i32 0
}

define i32 @insertsort( i32* %r142 ) {
bb11:
  %r173 = alloca i32
  %r163 = alloca i32
  %r151 = alloca i32
  %r147 = alloca i32
  %r143 = alloca i32
  store i32 1, i32* %r143
  br label %bb12

bb12:
  %r144 = load i32, i32* %r143
  %r145 = load i32, i32* @n
  %r146 = icmp slt i32 %r144, %r145
  br i1 %r146, label %bb13, label %bb14

bb13:
  %r148 = load i32, i32* %r143
  %r149 = getelementptr i32, i32* %r142, i32 %r148
  %r150 = load i32, i32* %r149
  store i32 %r150, i32* %r147
  %r152 = load i32, i32* %r143
  %r153 = sub i32 %r152, 1
  store i32 %r153, i32* %r151
  br label %bb15

bb15:
  %r155 = load i32, i32* %r151
  %r156 = sub i32 0, 1
  %r157 = icmp sgt i32 %r155, %r156
  br i1 %r157, label %bb18, label %bb17

bb18:
  %r158 = load i32, i32* %r147
  %r159 = load i32, i32* %r151
  %r160 = getelementptr i32, i32* %r142, i32 %r159
  %r161 = load i32, i32* %r160
  %r162 = icmp slt i32 %r158, %r161
  br i1 %r162, label %bb16, label %bb17

bb16:
  %r164 = load i32, i32* %r151
  %r165 = add i32 %r164, 1
  store i32 %r165, i32* %r163
  %r166 = load i32, i32* %r151
  %r167 = getelementptr i32, i32* %r142, i32 %r166
  %r168 = load i32, i32* %r167
  %r169 = load i32, i32* %r163
  %r170 = getelementptr i32, i32* %r142, i32 %r169
  store i32 %r168, i32* %r170
  %r171 = load i32, i32* %r151
  %r172 = sub i32 %r171, 1
  store i32 %r172, i32* %r151
  br label %bb15

bb17:
  %r174 = load i32, i32* %r151
  %r175 = add i32 %r174, 1
  store i32 %r175, i32* %r173
  %r176 = load i32, i32* %r147
  %r177 = load i32, i32* %r173
  %r178 = getelementptr i32, i32* %r142, i32 %r177
  store i32 %r176, i32* %r178
  %r179 = load i32, i32* %r143
  %r180 = add i32 %r179, 1
  store i32 %r180, i32* %r143
  br label %bb12

bb14:
  ret i32 0
}

define i32 @QuickSort( i32* %r181, i32 %r182, i32 %r184 ) {
bb20:
  %r246 = alloca i32
  %r193 = alloca i32
  %r191 = alloca i32
  %r189 = alloca i32
  %r183 = alloca i32
  store i32 %r182, i32* %r183
  %r185 = alloca i32
  store i32 %r184, i32* %r185
  br label %bb19

bb19:
  %r186 = load i32, i32* %r183
  %r187 = load i32, i32* %r185
  %r188 = icmp slt i32 %r186, %r187
  br i1 %r188, label %bb21, label %bb22

bb21:
  %r190 = load i32, i32* %r183
  store i32 %r190, i32* %r189
  %r192 = load i32, i32* %r185
  store i32 %r192, i32* %r191
  %r194 = load i32, i32* %r183
  %r195 = getelementptr i32, i32* %r181, i32 %r194
  %r196 = load i32, i32* %r195
  store i32 %r196, i32* %r193
  br label %bb24

bb24:
  %r197 = load i32, i32* %r189
  %r198 = load i32, i32* %r191
  %r199 = icmp slt i32 %r197, %r198
  br i1 %r199, label %bb25, label %bb26

bb25:
  br label %bb27

bb27:
  %r201 = load i32, i32* %r189
  %r202 = load i32, i32* %r191
  %r203 = icmp slt i32 %r201, %r202
  br i1 %r203, label %bb30, label %bb29

bb30:
  %r204 = load i32, i32* %r191
  %r205 = getelementptr i32, i32* %r181, i32 %r204
  %r206 = load i32, i32* %r205
  %r207 = load i32, i32* %r193
  %r208 = sub i32 %r207, 1
  %r209 = icmp sgt i32 %r206, %r208
  br i1 %r209, label %bb28, label %bb29

bb28:
  %r210 = load i32, i32* %r191
  %r211 = sub i32 %r210, 1
  store i32 %r211, i32* %r191
  br label %bb27

bb29:
  %r212 = load i32, i32* %r189
  %r213 = load i32, i32* %r191
  %r214 = icmp slt i32 %r212, %r213
  br i1 %r214, label %bb31, label %bb32

bb31:
  %r215 = load i32, i32* %r191
  %r216 = getelementptr i32, i32* %r181, i32 %r215
  %r217 = load i32, i32* %r216
  %r218 = load i32, i32* %r189
  %r219 = getelementptr i32, i32* %r181, i32 %r218
  store i32 %r217, i32* %r219
  %r220 = load i32, i32* %r189
  %r221 = add i32 %r220, 1
  store i32 %r221, i32* %r189
  br label %bb33

bb32:
  br label %bb33

bb33:
  br label %bb34

bb34:
  %r223 = load i32, i32* %r189
  %r224 = load i32, i32* %r191
  %r225 = icmp slt i32 %r223, %r224
  br i1 %r225, label %bb37, label %bb36

bb37:
  %r226 = load i32, i32* %r189
  %r227 = getelementptr i32, i32* %r181, i32 %r226
  %r228 = load i32, i32* %r227
  %r229 = load i32, i32* %r193
  %r230 = icmp slt i32 %r228, %r229
  br i1 %r230, label %bb35, label %bb36

bb35:
  %r231 = load i32, i32* %r189
  %r232 = add i32 %r231, 1
  store i32 %r232, i32* %r189
  br label %bb34

bb36:
  %r233 = load i32, i32* %r189
  %r234 = load i32, i32* %r191
  %r235 = icmp slt i32 %r233, %r234
  br i1 %r235, label %bb38, label %bb39

bb38:
  %r236 = load i32, i32* %r189
  %r237 = getelementptr i32, i32* %r181, i32 %r236
  %r238 = load i32, i32* %r237
  %r239 = load i32, i32* %r191
  %r240 = getelementptr i32, i32* %r181, i32 %r239
  store i32 %r238, i32* %r240
  %r241 = load i32, i32* %r191
  %r242 = sub i32 %r241, 1
  store i32 %r242, i32* %r191
  br label %bb40

bb39:
  br label %bb40

bb40:
  br label %bb24

bb26:
  %r243 = load i32, i32* %r193
  %r244 = load i32, i32* %r189
  %r245 = getelementptr i32, i32* %r181, i32 %r244
  store i32 %r243, i32* %r245
  %r247 = load i32, i32* %r189
  %r248 = sub i32 %r247, 1
  store i32 %r248, i32* %r246
  %r249 = load i32, i32* %r183
  %r250 = load i32, i32* %r246
  %r251 = call i32 @QuickSort(i32* %r181, i32 %r249, i32 %r250)
  store i32 %r251, i32* %r246
  %r252 = load i32, i32* %r189
  %r253 = add i32 %r252, 1
  store i32 %r253, i32* %r246
  %r254 = load i32, i32* %r246
  %r255 = load i32, i32* %r185
  %r256 = call i32 @QuickSort(i32* %r181, i32 %r254, i32 %r255)
  store i32 %r256, i32* %r246
  br label %bb23

bb22:
  br label %bb23

bb23:
  ret i32 0
}

define i32 @getMid( i32* %r257 ) {
bb41:
  %r266 = alloca i32
  %r258 = alloca i32
  %r259 = load i32, i32* @n
  %r260 = sdiv i32 %r259, 2
  %r261 = mul i32 %r260, 2
  %r262 = load i32, i32* @n
  %r263 = icmp eq i32 %r261, %r262
  br i1 %r263, label %bb42, label %bb43

bb42:
  %r264 = load i32, i32* @n
  %r265 = sdiv i32 %r264, 2
  store i32 %r265, i32* %r258
  %r267 = load i32, i32* %r258
  %r268 = sub i32 %r267, 1
  store i32 %r268, i32* %r266
  %r269 = load i32, i32* %r258
  %r270 = getelementptr i32, i32* %r257, i32 %r269
  %r271 = load i32, i32* %r270
  %r272 = load i32, i32* %r266
  %r273 = getelementptr i32, i32* %r257, i32 %r272
  %r274 = load i32, i32* %r273
  %r275 = add i32 %r271, %r274
  %r276 = sdiv i32 %r275, 2
  ret i32 %r276
bb43:
  %r277 = load i32, i32* @n
  %r278 = sdiv i32 %r277, 2
  store i32 %r278, i32* %r258
  %r279 = load i32, i32* %r258
  %r280 = getelementptr i32, i32* %r257, i32 %r279
  %r281 = load i32, i32* %r280
  ret i32 %r281
bb44:
  ret i32 0
}

define i32 @getMost( i32* %r282 ) {
bb45:
  %r296 = alloca i32
  %r292 = alloca i32
  %r291 = alloca i32
  %r283 = alloca [ 1000 x i32 ]
  %r284 = alloca i32
  store i32 0, i32* %r284
  br label %bb46

bb46:
  %r285 = load i32, i32* %r284
  %r286 = icmp slt i32 %r285, 1000
  br i1 %r286, label %bb47, label %bb48

bb47:
  %r287 = load i32, i32* %r284
  %r288 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r287
  store i32 0, i32* %r288
  %r289 = load i32, i32* %r284
  %r290 = add i32 %r289, 1
  store i32 %r290, i32* %r284
  br label %bb46

bb48:
  store i32 0, i32* %r284
  store i32 0, i32* %r291
  br label %bb49

bb49:
  %r293 = load i32, i32* %r284
  %r294 = load i32, i32* @n
  %r295 = icmp slt i32 %r293, %r294
  br i1 %r295, label %bb50, label %bb51

bb50:
  %r297 = load i32, i32* %r284
  %r298 = getelementptr i32, i32* %r282, i32 %r297
  %r299 = load i32, i32* %r298
  store i32 %r299, i32* %r296
  %r300 = load i32, i32* %r296
  %r301 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r300
  %r302 = load i32, i32* %r301
  %r303 = add i32 %r302, 1
  %r304 = load i32, i32* %r296
  %r305 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r304
  store i32 %r303, i32* %r305
  %r306 = load i32, i32* %r296
  %r307 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r306
  %r308 = load i32, i32* %r307
  %r309 = load i32, i32* %r291
  %r310 = icmp sgt i32 %r308, %r309
  br i1 %r310, label %bb52, label %bb53

bb52:
  %r311 = load i32, i32* %r296
  %r312 = getelementptr [1000 x i32 ], [1000 x i32 ]* %r283, i32 0, i32 %r311
  %r313 = load i32, i32* %r312
  store i32 %r313, i32* %r291
  %r314 = load i32, i32* %r296
  store i32 %r314, i32* %r292
  br label %bb54

bb53:
  br label %bb54

bb54:
  %r315 = load i32, i32* %r284
  %r316 = add i32 %r315, 1
  store i32 %r316, i32* %r284
  br label %bb49

bb51:
  %r317 = load i32, i32* %r292
  ret i32 %r317
}

define i32 @revert( i32* %r318 ) {
bb55:
  %r319 = alloca i32
  %r320 = alloca i32
  %r321 = alloca i32
  store i32 0, i32* %r320
  store i32 0, i32* %r321
  br label %bb56

bb56:
  %r322 = load i32, i32* %r320
  %r323 = load i32, i32* %r321
  %r324 = icmp slt i32 %r322, %r323
  br i1 %r324, label %bb57, label %bb58

bb57:
  %r325 = load i32, i32* %r320
  %r326 = getelementptr i32, i32* %r318, i32 %r325
  %r327 = load i32, i32* %r326
  store i32 %r327, i32* %r319
  %r328 = load i32, i32* %r321
  %r329 = getelementptr i32, i32* %r318, i32 %r328
  %r330 = load i32, i32* %r329
  %r331 = load i32, i32* %r320
  %r332 = getelementptr i32, i32* %r318, i32 %r331
  store i32 %r330, i32* %r332
  %r333 = load i32, i32* %r319
  %r334 = load i32, i32* %r321
  %r335 = getelementptr i32, i32* %r318, i32 %r334
  store i32 %r333, i32* %r335
  %r336 = load i32, i32* %r320
  %r337 = add i32 %r336, 1
  store i32 %r337, i32* %r320
  %r338 = load i32, i32* %r321
  %r339 = sub i32 %r338, 1
  store i32 %r339, i32* %r321
  br label %bb56

bb58:
  ret i32 0
}

define i32 @arrCopy( i32* %r340, i32* %r341 ) {
bb59:
  %r342 = alloca i32
  store i32 0, i32* %r342
  br label %bb60

bb60:
  %r343 = load i32, i32* %r342
  %r344 = load i32, i32* @n
  %r345 = icmp slt i32 %r343, %r344
  br i1 %r345, label %bb61, label %bb62

bb61:
  %r346 = load i32, i32* %r342
  %r347 = getelementptr i32, i32* %r340, i32 %r346
  %r348 = load i32, i32* %r347
  %r349 = load i32, i32* %r342
  %r350 = getelementptr i32, i32* %r341, i32 %r349
  store i32 %r348, i32* %r350
  %r351 = load i32, i32* %r342
  %r352 = add i32 %r351, 1
  store i32 %r352, i32* %r342
  br label %bb60

bb62:
  ret i32 0
}

define i32 @calSum( i32* %r353, i32 %r354 ) {
bb64:
  %r357 = alloca i32
  %r356 = alloca i32
  %r355 = alloca i32
  store i32 %r354, i32* %r355
  br label %bb63

bb63:
  store i32 0, i32* %r356
  store i32 0, i32* %r357
  br label %bb65

bb65:
  %r358 = load i32, i32* %r357
  %r359 = load i32, i32* @n
  %r360 = icmp slt i32 %r358, %r359
  br i1 %r360, label %bb66, label %bb67

bb66:
  %r361 = load i32, i32* %r356
  %r362 = load i32, i32* %r357
  %r363 = getelementptr i32, i32* %r353, i32 %r362
  %r364 = load i32, i32* %r363
  %r365 = add i32 %r361, %r364
  store i32 %r365, i32* %r356
  %r366 = load i32, i32* %r357
  %r367 = load i32, i32* %r357
  %r368 = load i32, i32* %r355
  %r369 = sdiv i32 %r367, %r368
  %r370 = load i32, i32* %r355
  %r371 = mul i32 %r369, %r370
  %r372 = sub i32 %r366, %r371
  %r373 = load i32, i32* %r355
  %r374 = sub i32 %r373, 1
  %r375 = icmp ne i32 %r372, %r374
  br i1 %r375, label %bb68, label %bb69

bb68:
  %r376 = load i32, i32* %r357
  %r377 = getelementptr i32, i32* %r353, i32 %r376
  store i32 0, i32* %r377
  br label %bb70

bb69:
  %r378 = load i32, i32* %r356
  %r379 = load i32, i32* %r357
  %r380 = getelementptr i32, i32* %r353, i32 %r379
  store i32 %r378, i32* %r380
  store i32 0, i32* %r356
  br label %bb70

bb70:
  %r381 = load i32, i32* %r357
  %r382 = add i32 %r381, 1
  store i32 %r382, i32* %r357
  br label %bb65

bb67:
  ret i32 0
}

define i32 @avgPooling( i32* %r383, i32 %r384 ) {
bb72:
  %r418 = alloca i32
  %r388 = alloca i32
  %r387 = alloca i32
  %r386 = alloca i32
  %r385 = alloca i32
  store i32 %r384, i32* %r385
  br label %bb71

bb71:
  store i32 0, i32* %r387
  store i32 0, i32* %r386
  br label %bb73

bb73:
  %r389 = load i32, i32* %r387
  %r390 = load i32, i32* @n
  %r391 = icmp slt i32 %r389, %r390
  br i1 %r391, label %bb74, label %bb75

bb74:
  %r392 = load i32, i32* %r387
  %r393 = load i32, i32* %r385
  %r394 = sub i32 %r393, 1
  %r395 = icmp slt i32 %r392, %r394
  br i1 %r395, label %bb76, label %bb77

bb76:
  %r396 = load i32, i32* %r386
  %r397 = load i32, i32* %r387
  %r398 = getelementptr i32, i32* %r383, i32 %r397
  %r399 = load i32, i32* %r398
  %r400 = add i32 %r396, %r399
  store i32 %r400, i32* %r386
  br label %bb78

bb77:
  %r401 = load i32, i32* %r387
  %r402 = load i32, i32* %r385
  %r403 = sub i32 %r402, 1
  %r404 = icmp eq i32 %r401, %r403
  br i1 %r404, label %bb79, label %bb80

bb79:
  %r405 = getelementptr i32, i32* %r383, i32 0
  %r406 = load i32, i32* %r405
  store i32 %r406, i32* %r388
  %r407 = load i32, i32* %r386
  %r408 = load i32, i32* %r385
  %r409 = sdiv i32 %r407, %r408
  %r410 = getelementptr i32, i32* %r383, i32 0
  store i32 %r409, i32* %r410
  br label %bb81

bb80:
  %r411 = load i32, i32* %r386
  %r412 = load i32, i32* %r387
  %r413 = getelementptr i32, i32* %r383, i32 %r412
  %r414 = load i32, i32* %r413
  %r415 = add i32 %r411, %r414
  %r416 = load i32, i32* %r388
  %r417 = sub i32 %r415, %r416
  store i32 %r417, i32* %r386
  %r419 = load i32, i32* %r387
  %r420 = load i32, i32* %r385
  %r421 = sub i32 %r419, %r420
  %r422 = add i32 %r421, 1
  store i32 %r422, i32* %r418
  %r423 = load i32, i32* %r418
  %r424 = getelementptr i32, i32* %r383, i32 %r423
  %r425 = load i32, i32* %r424
  store i32 %r425, i32* %r388
  %r426 = load i32, i32* %r386
  %r427 = load i32, i32* %r385
  %r428 = sdiv i32 %r426, %r427
  %r429 = load i32, i32* %r418
  %r430 = getelementptr i32, i32* %r383, i32 %r429
  store i32 %r428, i32* %r430
  br label %bb81

bb81:
  br label %bb78

bb78:
  %r431 = load i32, i32* %r387
  %r432 = add i32 %r431, 1
  store i32 %r432, i32* %r387
  br label %bb73

bb75:
  %r433 = load i32, i32* @n
  %r434 = load i32, i32* %r385
  %r435 = sub i32 %r433, %r434
  %r436 = add i32 %r435, 1
  store i32 %r436, i32* %r387
  br label %bb82

bb82:
  %r437 = load i32, i32* %r387
  %r438 = load i32, i32* @n
  %r439 = icmp slt i32 %r437, %r438
  br i1 %r439, label %bb83, label %bb84

bb83:
  %r440 = load i32, i32* %r387
  %r441 = getelementptr i32, i32* %r383, i32 %r440
  store i32 0, i32* %r441
  %r442 = load i32, i32* %r387
  %r443 = add i32 %r442, 1
  store i32 %r443, i32* %r387
  br label %bb82

bb84:
  ret i32 0
}

define i32 @main( ) {
bb85:
  call void @_sysy_starttime(i32 209)
  store i32 32, i32* @n
  %r444 = alloca [ 32 x i32 ]
  %r445 = alloca [ 32 x i32 ]
  %r446 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 0
  store i32 7, i32* %r446
  %r447 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 1
  store i32 23, i32* %r447
  %r448 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 2
  store i32 89, i32* %r448
  %r449 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 3
  store i32 26, i32* %r449
  %r450 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 4
  store i32 282, i32* %r450
  %r451 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 5
  store i32 254, i32* %r451
  %r452 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 6
  store i32 27, i32* %r452
  %r453 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 7
  store i32 5, i32* %r453
  %r454 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 8
  store i32 83, i32* %r454
  %r455 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 9
  store i32 273, i32* %r455
  %r456 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 10
  store i32 574, i32* %r456
  %r457 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 11
  store i32 905, i32* %r457
  %r458 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 12
  store i32 354, i32* %r458
  %r459 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 13
  store i32 657, i32* %r459
  %r460 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 14
  store i32 935, i32* %r460
  %r461 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 15
  store i32 264, i32* %r461
  %r462 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 16
  store i32 639, i32* %r462
  %r463 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 17
  store i32 459, i32* %r463
  %r464 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 18
  store i32 29, i32* %r464
  %r465 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 19
  store i32 68, i32* %r465
  %r466 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 20
  store i32 929, i32* %r466
  %r467 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 21
  store i32 756, i32* %r467
  %r468 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 22
  store i32 452, i32* %r468
  %r469 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 23
  store i32 279, i32* %r469
  %r470 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 24
  store i32 58, i32* %r470
  %r471 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 25
  store i32 87, i32* %r471
  %r472 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 26
  store i32 96, i32* %r472
  %r473 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 27
  store i32 36, i32* %r473
  %r474 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 28
  store i32 39, i32* %r474
  %r475 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 29
  store i32 28, i32* %r475
  %r476 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 30
  store i32 1, i32* %r476
  %r477 = getelementptr [32 x i32 ], [32 x i32 ]* %r444, i32 0, i32 31
  store i32 290, i32* %r477
  %r478 = alloca i32
  %r479 = call i32 @arrCopy(i32* %r444, i32* %r445)
  store i32 %r479, i32* %r478
  %r480 = call i32 @revert(i32* %r445)
  store i32 %r480, i32* %r478
  %r481 = alloca i32
  store i32 0, i32* %r481
  br label %bb86

bb86:
  %r482 = load i32, i32* %r481
  %r483 = icmp slt i32 %r482, 32
  br i1 %r483, label %bb87, label %bb88

bb87:
  %r484 = load i32, i32* %r481
  %r485 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r484
  %r486 = load i32, i32* %r485
  store i32 %r486, i32* %r478
  %r487 = load i32, i32* %r478
  %r488 = load i32, i32* %r478
  call void @putint(i32 %r488)
  %r489 = load i32, i32* %r481
  %r490 = add i32 %r489, 1
  store i32 %r490, i32* %r481
  br label %bb86

bb88:
  %r491 = call i32 @bubblesort(i32* %r445)
  store i32 %r491, i32* %r478
  store i32 0, i32* %r481
  br label %bb89

bb89:
  %r492 = load i32, i32* %r481
  %r493 = icmp slt i32 %r492, 32
  br i1 %r493, label %bb90, label %bb91

bb90:
  %r494 = load i32, i32* %r481
  %r495 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r494
  %r496 = load i32, i32* %r495
  store i32 %r496, i32* %r478
  %r497 = load i32, i32* %r478
  %r498 = load i32, i32* %r478
  call void @putint(i32 %r498)
  %r499 = load i32, i32* %r481
  %r500 = add i32 %r499, 1
  store i32 %r500, i32* %r481
  br label %bb89

bb91:
  %r501 = call i32 @getMid(i32* %r445)
  store i32 %r501, i32* %r478
  %r502 = load i32, i32* %r478
  %r503 = load i32, i32* %r478
  call void @putint(i32 %r503)
  %r504 = call i32 @getMost(i32* %r445)
  store i32 %r504, i32* %r478
  %r505 = load i32, i32* %r478
  %r506 = load i32, i32* %r478
  call void @putint(i32 %r506)
  %r507 = call i32 @arrCopy(i32* %r444, i32* %r445)
  store i32 %r507, i32* %r478
  %r508 = call i32 @bubblesort(i32* %r445)
  store i32 %r508, i32* %r478
  store i32 0, i32* %r481
  br label %bb92

bb92:
  %r509 = load i32, i32* %r481
  %r510 = icmp slt i32 %r509, 32
  br i1 %r510, label %bb93, label %bb94

bb93:
  %r511 = load i32, i32* %r481
  %r512 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r511
  %r513 = load i32, i32* %r512
  store i32 %r513, i32* %r478
  %r514 = load i32, i32* %r478
  %r515 = load i32, i32* %r478
  call void @putint(i32 %r515)
  %r516 = load i32, i32* %r481
  %r517 = add i32 %r516, 1
  store i32 %r517, i32* %r481
  br label %bb92

bb94:
  %r518 = call i32 @arrCopy(i32* %r444, i32* %r445)
  store i32 %r518, i32* %r478
  %r519 = call i32 @insertsort(i32* %r445)
  store i32 %r519, i32* %r478
  store i32 0, i32* %r481
  br label %bb95

bb95:
  %r520 = load i32, i32* %r481
  %r521 = icmp slt i32 %r520, 32
  br i1 %r521, label %bb96, label %bb97

bb96:
  %r522 = load i32, i32* %r481
  %r523 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r522
  %r524 = load i32, i32* %r523
  store i32 %r524, i32* %r478
  %r525 = load i32, i32* %r478
  %r526 = load i32, i32* %r478
  call void @putint(i32 %r526)
  %r527 = load i32, i32* %r481
  %r528 = add i32 %r527, 1
  store i32 %r528, i32* %r481
  br label %bb95

bb97:
  %r529 = call i32 @arrCopy(i32* %r444, i32* %r445)
  store i32 %r529, i32* %r478
  store i32 0, i32* %r481
  store i32 31, i32* %r478
  %r530 = load i32, i32* %r481
  %r531 = load i32, i32* %r478
  %r532 = call i32 @QuickSort(i32* %r445, i32 %r530, i32 %r531)
  store i32 %r532, i32* %r478
  br label %bb98

bb98:
  %r533 = load i32, i32* %r481
  %r534 = icmp slt i32 %r533, 32
  br i1 %r534, label %bb99, label %bb100

bb99:
  %r535 = load i32, i32* %r481
  %r536 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r535
  %r537 = load i32, i32* %r536
  store i32 %r537, i32* %r478
  %r538 = load i32, i32* %r478
  %r539 = load i32, i32* %r478
  call void @putint(i32 %r539)
  %r540 = load i32, i32* %r481
  %r541 = add i32 %r540, 1
  store i32 %r541, i32* %r481
  br label %bb98

bb100:
  %r542 = call i32 @arrCopy(i32* %r444, i32* %r445)
  store i32 %r542, i32* %r478
  %r543 = call i32 @calSum(i32* %r445, i32 4)
  store i32 %r543, i32* %r478
  store i32 0, i32* %r481
  br label %bb101

bb101:
  %r544 = load i32, i32* %r481
  %r545 = icmp slt i32 %r544, 32
  br i1 %r545, label %bb102, label %bb103

bb102:
  %r546 = load i32, i32* %r481
  %r547 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r546
  %r548 = load i32, i32* %r547
  store i32 %r548, i32* %r478
  %r549 = load i32, i32* %r478
  %r550 = load i32, i32* %r478
  call void @putint(i32 %r550)
  %r551 = load i32, i32* %r481
  %r552 = add i32 %r551, 1
  store i32 %r552, i32* %r481
  br label %bb101

bb103:
  %r553 = call i32 @arrCopy(i32* %r444, i32* %r445)
  store i32 %r553, i32* %r478
  %r554 = call i32 @avgPooling(i32* %r445, i32 3)
  store i32 %r554, i32* %r478
  store i32 0, i32* %r481
  br label %bb104

bb104:
  %r555 = load i32, i32* %r481
  %r556 = icmp slt i32 %r555, 32
  br i1 %r556, label %bb105, label %bb106

bb105:
  %r557 = load i32, i32* %r481
  %r558 = getelementptr [32 x i32 ], [32 x i32 ]* %r445, i32 0, i32 %r557
  %r559 = load i32, i32* %r558
  store i32 %r559, i32* %r478
  %r560 = load i32, i32* %r478
  %r561 = load i32, i32* %r478
  call void @putint(i32 %r561)
  %r562 = load i32, i32* %r481
  %r563 = add i32 %r562, 1
  store i32 %r563, i32* %r481
  br label %bb104

bb106:
  call void @_sysy_stoptime(i32 312)
  ret i32 0
}

