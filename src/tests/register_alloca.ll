declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@a1 = global i32 1
@a2 = global i32 2
@a3 = global i32 3
@a4 = global i32 4
@a5 = global i32 5
@a6 = global i32 6
@a7 = global i32 7
@a8 = global i32 8
@a9 = global i32 9
@a10 = global i32 10
@a11 = global i32 11
@a12 = global i32 12
@a13 = global i32 13
@a14 = global i32 14
@a15 = global i32 15
@a16 = global i32 16
@a17 = global i32 1
@a18 = global i32 2
@a19 = global i32 3
@a20 = global i32 4
@a21 = global i32 5
@a22 = global i32 6
@a23 = global i32 7
@a24 = global i32 8
@a25 = global i32 9
@a26 = global i32 10
@a27 = global i32 11
@a28 = global i32 12
@a29 = global i32 13
@a30 = global i32 14
@a31 = global i32 15
@a32 = global i32 16
define i32 @func( i32 %r100, i32 %r101 ) {
bb1:
  %r102 = alloca i32
  %r103 = add i32 %r100, %r101
  store i32 %r103, i32* %r102
  %r104 = alloca i32
  %r105 = alloca i32
  %r106 = alloca i32
  %r107 = alloca i32
  %r108 = alloca i32
  %r109 = alloca i32
  %r110 = alloca i32
  %r111 = alloca i32
  %r112 = alloca i32
  %r113 = alloca i32
  %r114 = alloca i32
  %r115 = alloca i32
  %r116 = alloca i32
  %r117 = alloca i32
  %r118 = alloca i32
  %r119 = alloca i32
  %r120 = alloca i32
  %r121 = alloca i32
  %r122 = alloca i32
  %r123 = alloca i32
  %r124 = alloca i32
  %r125 = alloca i32
  %r126 = alloca i32
  %r127 = alloca i32
  %r128 = alloca i32
  %r129 = alloca i32
  %r130 = alloca i32
  %r131 = alloca i32
  %r132 = alloca i32
  %r133 = alloca i32
  %r134 = alloca i32
  %r135 = alloca i32
  %r136 = alloca i32
  %r137 = alloca i32
  %r138 = alloca i32
  %r139 = alloca i32
  %r140 = call i32 @getint()
  store i32 %r140, i32* %r104
  %r141 = call i32 @getint()
  store i32 %r141, i32* %r105
  %r142 = call i32 @getint()
  store i32 %r142, i32* %r106
  %r143 = call i32 @getint()
  store i32 %r143, i32* %r107
  %r144 = load i32, i32* %r104
  %r145 = add i32 1, %r144
  %r146 = load i32, i32* @a1
  %r147 = add i32 %r145, %r146
  store i32 %r147, i32* %r108
  %r148 = load i32, i32* %r105
  %r149 = add i32 2, %r148
  %r150 = load i32, i32* @a2
  %r151 = add i32 %r149, %r150
  store i32 %r151, i32* %r109
  %r152 = load i32, i32* %r106
  %r153 = add i32 3, %r152
  %r154 = load i32, i32* @a3
  %r155 = add i32 %r153, %r154
  store i32 %r155, i32* %r110
  %r156 = load i32, i32* %r107
  %r157 = add i32 4, %r156
  %r158 = load i32, i32* @a4
  %r159 = add i32 %r157, %r158
  store i32 %r159, i32* %r111
  %r160 = load i32, i32* %r108
  %r161 = add i32 1, %r160
  %r162 = load i32, i32* @a5
  %r163 = add i32 %r161, %r162
  store i32 %r163, i32* %r112
  %r164 = load i32, i32* %r109
  %r165 = add i32 2, %r164
  %r166 = load i32, i32* @a6
  %r167 = add i32 %r165, %r166
  store i32 %r167, i32* %r113
  %r168 = load i32, i32* %r110
  %r169 = add i32 3, %r168
  %r170 = load i32, i32* @a7
  %r171 = add i32 %r169, %r170
  store i32 %r171, i32* %r114
  %r172 = load i32, i32* %r111
  %r173 = add i32 4, %r172
  %r174 = load i32, i32* @a8
  %r175 = add i32 %r173, %r174
  store i32 %r175, i32* %r115
  %r176 = load i32, i32* %r112
  %r177 = add i32 1, %r176
  %r178 = load i32, i32* @a9
  %r179 = add i32 %r177, %r178
  store i32 %r179, i32* %r116
  %r180 = load i32, i32* %r113
  %r181 = add i32 2, %r180
  %r182 = load i32, i32* @a10
  %r183 = add i32 %r181, %r182
  store i32 %r183, i32* %r117
  %r184 = load i32, i32* %r114
  %r185 = add i32 3, %r184
  %r186 = load i32, i32* @a11
  %r187 = add i32 %r185, %r186
  store i32 %r187, i32* %r118
  %r188 = load i32, i32* %r115
  %r189 = add i32 4, %r188
  %r190 = load i32, i32* @a12
  %r191 = add i32 %r189, %r190
  store i32 %r191, i32* %r119
  %r192 = load i32, i32* %r116
  %r193 = add i32 1, %r192
  %r194 = load i32, i32* @a13
  %r195 = add i32 %r193, %r194
  store i32 %r195, i32* %r120
  %r196 = load i32, i32* %r117
  %r197 = add i32 2, %r196
  %r198 = load i32, i32* @a14
  %r199 = add i32 %r197, %r198
  store i32 %r199, i32* %r121
  %r200 = load i32, i32* %r118
  %r201 = add i32 3, %r200
  %r202 = load i32, i32* @a15
  %r203 = add i32 %r201, %r202
  store i32 %r203, i32* %r122
  %r204 = load i32, i32* %r119
  %r205 = add i32 4, %r204
  %r206 = load i32, i32* @a16
  %r207 = add i32 %r205, %r206
  store i32 %r207, i32* %r123
  %r208 = load i32, i32* %r120
  %r209 = add i32 1, %r208
  %r210 = load i32, i32* @a17
  %r211 = add i32 %r209, %r210
  store i32 %r211, i32* %r124
  %r212 = load i32, i32* %r121
  %r213 = add i32 2, %r212
  %r214 = load i32, i32* @a18
  %r215 = add i32 %r213, %r214
  store i32 %r215, i32* %r125
  %r216 = load i32, i32* %r122
  %r217 = add i32 3, %r216
  %r218 = load i32, i32* @a19
  %r219 = add i32 %r217, %r218
  store i32 %r219, i32* %r126
  %r220 = load i32, i32* %r123
  %r221 = add i32 4, %r220
  %r222 = load i32, i32* @a20
  %r223 = add i32 %r221, %r222
  store i32 %r223, i32* %r127
  %r224 = load i32, i32* %r124
  %r225 = add i32 1, %r224
  %r226 = load i32, i32* @a21
  %r227 = add i32 %r225, %r226
  store i32 %r227, i32* %r128
  %r228 = load i32, i32* %r125
  %r229 = add i32 2, %r228
  %r230 = load i32, i32* @a22
  %r231 = add i32 %r229, %r230
  store i32 %r231, i32* %r129
  %r232 = load i32, i32* %r126
  %r233 = add i32 3, %r232
  %r234 = load i32, i32* @a23
  %r235 = add i32 %r233, %r234
  store i32 %r235, i32* %r130
  %r236 = load i32, i32* %r127
  %r237 = add i32 4, %r236
  %r238 = load i32, i32* @a24
  %r239 = add i32 %r237, %r238
  store i32 %r239, i32* %r131
  %r240 = load i32, i32* %r128
  %r241 = add i32 1, %r240
  %r242 = load i32, i32* @a25
  %r243 = add i32 %r241, %r242
  store i32 %r243, i32* %r132
  %r244 = load i32, i32* %r129
  %r245 = add i32 2, %r244
  %r246 = load i32, i32* @a26
  %r247 = add i32 %r245, %r246
  store i32 %r247, i32* %r133
  %r248 = load i32, i32* %r130
  %r249 = add i32 3, %r248
  %r250 = load i32, i32* @a27
  %r251 = add i32 %r249, %r250
  store i32 %r251, i32* %r134
  %r252 = load i32, i32* %r131
  %r253 = add i32 4, %r252
  %r254 = load i32, i32* @a28
  %r255 = add i32 %r253, %r254
  store i32 %r255, i32* %r135
  %r256 = load i32, i32* %r132
  %r257 = add i32 1, %r256
  %r258 = load i32, i32* @a29
  %r259 = add i32 %r257, %r258
  store i32 %r259, i32* %r136
  %r260 = load i32, i32* %r133
  %r261 = add i32 2, %r260
  %r262 = load i32, i32* @a30
  %r263 = add i32 %r261, %r262
  store i32 %r263, i32* %r137
  %r264 = load i32, i32* %r134
  %r265 = add i32 3, %r264
  %r266 = load i32, i32* @a31
  %r267 = add i32 %r265, %r266
  store i32 %r267, i32* %r138
  %r268 = load i32, i32* %r135
  %r269 = add i32 4, %r268
  %r270 = load i32, i32* @a32
  %r271 = add i32 %r269, %r270
  store i32 %r271, i32* %r139
  %r272 = sub i32 %r100, %r101
  %r273 = add i32 %r272, 10
  store i32 %r273, i32* %r102
  %r274 = load i32, i32* %r132
  %r275 = add i32 1, %r274
  %r276 = load i32, i32* @a29
  %r277 = add i32 %r275, %r276
  store i32 %r277, i32* %r136
  %r278 = load i32, i32* %r133
  %r279 = add i32 2, %r278
  %r280 = load i32, i32* @a30
  %r281 = add i32 %r279, %r280
  store i32 %r281, i32* %r137
  %r282 = load i32, i32* %r134
  %r283 = add i32 3, %r282
  %r284 = load i32, i32* @a31
  %r285 = add i32 %r283, %r284
  store i32 %r285, i32* %r138
  %r286 = load i32, i32* %r135
  %r287 = add i32 4, %r286
  %r288 = load i32, i32* @a32
  %r289 = add i32 %r287, %r288
  store i32 %r289, i32* %r139
  %r290 = load i32, i32* %r128
  %r291 = add i32 1, %r290
  %r292 = load i32, i32* @a25
  %r293 = add i32 %r291, %r292
  store i32 %r293, i32* %r132
  %r294 = load i32, i32* %r129
  %r295 = add i32 2, %r294
  %r296 = load i32, i32* @a26
  %r297 = add i32 %r295, %r296
  store i32 %r297, i32* %r133
  %r298 = load i32, i32* %r130
  %r299 = add i32 3, %r298
  %r300 = load i32, i32* @a27
  %r301 = add i32 %r299, %r300
  store i32 %r301, i32* %r134
  %r302 = load i32, i32* %r131
  %r303 = add i32 4, %r302
  %r304 = load i32, i32* @a28
  %r305 = add i32 %r303, %r304
  store i32 %r305, i32* %r135
  %r306 = load i32, i32* %r124
  %r307 = add i32 1, %r306
  %r308 = load i32, i32* @a21
  %r309 = add i32 %r307, %r308
  store i32 %r309, i32* %r128
  %r310 = load i32, i32* %r125
  %r311 = add i32 2, %r310
  %r312 = load i32, i32* @a22
  %r313 = add i32 %r311, %r312
  store i32 %r313, i32* %r129
  %r314 = load i32, i32* %r126
  %r315 = add i32 3, %r314
  %r316 = load i32, i32* @a23
  %r317 = add i32 %r315, %r316
  store i32 %r317, i32* %r130
  %r318 = load i32, i32* %r127
  %r319 = add i32 4, %r318
  %r320 = load i32, i32* @a24
  %r321 = add i32 %r319, %r320
  store i32 %r321, i32* %r131
  %r322 = load i32, i32* %r120
  %r323 = add i32 1, %r322
  %r324 = load i32, i32* @a17
  %r325 = add i32 %r323, %r324
  store i32 %r325, i32* %r124
  %r326 = load i32, i32* %r121
  %r327 = add i32 2, %r326
  %r328 = load i32, i32* @a18
  %r329 = add i32 %r327, %r328
  store i32 %r329, i32* %r125
  %r330 = load i32, i32* %r122
  %r331 = add i32 3, %r330
  %r332 = load i32, i32* @a19
  %r333 = add i32 %r331, %r332
  store i32 %r333, i32* %r126
  %r334 = load i32, i32* %r123
  %r335 = add i32 4, %r334
  %r336 = load i32, i32* @a20
  %r337 = add i32 %r335, %r336
  store i32 %r337, i32* %r127
  %r338 = load i32, i32* %r116
  %r339 = add i32 1, %r338
  %r340 = load i32, i32* @a13
  %r341 = add i32 %r339, %r340
  store i32 %r341, i32* %r120
  %r342 = load i32, i32* %r117
  %r343 = add i32 2, %r342
  %r344 = load i32, i32* @a14
  %r345 = add i32 %r343, %r344
  store i32 %r345, i32* %r121
  %r346 = load i32, i32* %r118
  %r347 = add i32 3, %r346
  %r348 = load i32, i32* @a15
  %r349 = add i32 %r347, %r348
  store i32 %r349, i32* %r122
  %r350 = load i32, i32* %r119
  %r351 = add i32 4, %r350
  %r352 = load i32, i32* @a16
  %r353 = add i32 %r351, %r352
  store i32 %r353, i32* %r123
  %r354 = load i32, i32* %r112
  %r355 = add i32 1, %r354
  %r356 = load i32, i32* @a9
  %r357 = add i32 %r355, %r356
  store i32 %r357, i32* %r116
  %r358 = load i32, i32* %r113
  %r359 = add i32 2, %r358
  %r360 = load i32, i32* @a10
  %r361 = add i32 %r359, %r360
  store i32 %r361, i32* %r117
  %r362 = load i32, i32* %r114
  %r363 = add i32 3, %r362
  %r364 = load i32, i32* @a11
  %r365 = add i32 %r363, %r364
  store i32 %r365, i32* %r118
  %r366 = load i32, i32* %r115
  %r367 = add i32 4, %r366
  %r368 = load i32, i32* @a12
  %r369 = add i32 %r367, %r368
  store i32 %r369, i32* %r119
  %r370 = load i32, i32* %r108
  %r371 = add i32 1, %r370
  %r372 = load i32, i32* @a5
  %r373 = add i32 %r371, %r372
  store i32 %r373, i32* %r112
  %r374 = load i32, i32* %r109
  %r375 = add i32 2, %r374
  %r376 = load i32, i32* @a6
  %r377 = add i32 %r375, %r376
  store i32 %r377, i32* %r113
  %r378 = load i32, i32* %r110
  %r379 = add i32 3, %r378
  %r380 = load i32, i32* @a7
  %r381 = add i32 %r379, %r380
  store i32 %r381, i32* %r114
  %r382 = load i32, i32* %r111
  %r383 = add i32 4, %r382
  %r384 = load i32, i32* @a8
  %r385 = add i32 %r383, %r384
  store i32 %r385, i32* %r115
  %r386 = load i32, i32* %r104
  %r387 = add i32 1, %r386
  %r388 = load i32, i32* @a1
  %r389 = add i32 %r387, %r388
  store i32 %r389, i32* %r108
  %r390 = load i32, i32* %r105
  %r391 = add i32 2, %r390
  %r392 = load i32, i32* @a2
  %r393 = add i32 %r391, %r392
  store i32 %r393, i32* %r109
  %r394 = load i32, i32* %r106
  %r395 = add i32 3, %r394
  %r396 = load i32, i32* @a3
  %r397 = add i32 %r395, %r396
  store i32 %r397, i32* %r110
  %r398 = load i32, i32* %r107
  %r399 = add i32 4, %r398
  %r400 = load i32, i32* @a4
  %r401 = add i32 %r399, %r400
  store i32 %r401, i32* %r111
  %r402 = load i32, i32* %r104
  %r403 = add i32 1, %r402
  %r404 = load i32, i32* @a1
  %r405 = add i32 %r403, %r404
  store i32 %r405, i32* %r108
  %r406 = load i32, i32* %r105
  %r407 = add i32 2, %r406
  %r408 = load i32, i32* @a2
  %r409 = add i32 %r407, %r408
  store i32 %r409, i32* %r109
  %r410 = load i32, i32* %r106
  %r411 = add i32 3, %r410
  %r412 = load i32, i32* @a3
  %r413 = add i32 %r411, %r412
  store i32 %r413, i32* %r110
  %r414 = load i32, i32* %r107
  %r415 = add i32 4, %r414
  %r416 = load i32, i32* @a4
  %r417 = add i32 %r415, %r416
  store i32 %r417, i32* %r111
  %r418 = load i32, i32* %r102
  %r419 = load i32, i32* %r104
  %r420 = add i32 %r418, %r419
  %r421 = load i32, i32* %r105
  %r422 = add i32 %r420, %r421
  %r423 = load i32, i32* %r106
  %r424 = add i32 %r422, %r423
  %r425 = load i32, i32* %r107
  %r426 = add i32 %r424, %r425
  %r427 = load i32, i32* %r108
  %r428 = sub i32 %r426, %r427
  %r429 = load i32, i32* %r109
  %r430 = sub i32 %r428, %r429
  %r431 = load i32, i32* %r110
  %r432 = sub i32 %r430, %r431
  %r433 = load i32, i32* %r111
  %r434 = sub i32 %r432, %r433
  %r435 = load i32, i32* %r112
  %r436 = add i32 %r434, %r435
  %r437 = load i32, i32* %r113
  %r438 = add i32 %r436, %r437
  %r439 = load i32, i32* %r114
  %r440 = add i32 %r438, %r439
  %r441 = load i32, i32* %r115
  %r442 = add i32 %r440, %r441
  %r443 = load i32, i32* %r116
  %r444 = sub i32 %r442, %r443
  %r445 = load i32, i32* %r117
  %r446 = sub i32 %r444, %r445
  %r447 = load i32, i32* %r118
  %r448 = sub i32 %r446, %r447
  %r449 = load i32, i32* %r119
  %r450 = sub i32 %r448, %r449
  %r451 = load i32, i32* %r120
  %r452 = add i32 %r450, %r451
  %r453 = load i32, i32* %r121
  %r454 = add i32 %r452, %r453
  %r455 = load i32, i32* %r122
  %r456 = add i32 %r454, %r455
  %r457 = load i32, i32* %r123
  %r458 = add i32 %r456, %r457
  %r459 = load i32, i32* %r124
  %r460 = sub i32 %r458, %r459
  %r461 = load i32, i32* %r125
  %r462 = sub i32 %r460, %r461
  %r463 = load i32, i32* %r126
  %r464 = sub i32 %r462, %r463
  %r465 = load i32, i32* %r127
  %r466 = sub i32 %r464, %r465
  %r467 = load i32, i32* %r128
  %r468 = add i32 %r466, %r467
  %r469 = load i32, i32* %r129
  %r470 = add i32 %r468, %r469
  %r471 = load i32, i32* %r130
  %r472 = add i32 %r470, %r471
  %r473 = load i32, i32* %r131
  %r474 = add i32 %r472, %r473
  %r475 = load i32, i32* %r132
  %r476 = sub i32 %r474, %r475
  %r477 = load i32, i32* %r133
  %r478 = sub i32 %r476, %r477
  %r479 = load i32, i32* %r134
  %r480 = sub i32 %r478, %r479
  %r481 = load i32, i32* %r135
  %r482 = sub i32 %r480, %r481
  %r483 = load i32, i32* %r136
  %r484 = add i32 %r482, %r483
  %r485 = load i32, i32* %r137
  %r486 = add i32 %r484, %r485
  %r487 = load i32, i32* %r138
  %r488 = add i32 %r486, %r487
  %r489 = load i32, i32* %r139
  %r490 = add i32 %r488, %r489
  %r491 = load i32, i32* @a1
  %r492 = add i32 %r490, %r491
  %r493 = load i32, i32* @a2
  %r494 = sub i32 %r492, %r493
  %r495 = load i32, i32* @a3
  %r496 = add i32 %r494, %r495
  %r497 = load i32, i32* @a4
  %r498 = sub i32 %r496, %r497
  %r499 = load i32, i32* @a5
  %r500 = add i32 %r498, %r499
  %r501 = load i32, i32* @a6
  %r502 = sub i32 %r500, %r501
  %r503 = load i32, i32* @a7
  %r504 = add i32 %r502, %r503
  %r505 = load i32, i32* @a8
  %r506 = sub i32 %r504, %r505
  %r507 = load i32, i32* @a9
  %r508 = add i32 %r506, %r507
  %r509 = load i32, i32* @a10
  %r510 = sub i32 %r508, %r509
  %r511 = load i32, i32* @a11
  %r512 = add i32 %r510, %r511
  %r513 = load i32, i32* @a12
  %r514 = sub i32 %r512, %r513
  %r515 = load i32, i32* @a13
  %r516 = add i32 %r514, %r515
  %r517 = load i32, i32* @a14
  %r518 = sub i32 %r516, %r517
  %r519 = load i32, i32* @a15
  %r520 = add i32 %r518, %r519
  %r521 = load i32, i32* @a16
  %r522 = sub i32 %r520, %r521
  %r523 = load i32, i32* @a17
  %r524 = add i32 %r522, %r523
  %r525 = load i32, i32* @a18
  %r526 = sub i32 %r524, %r525
  %r527 = load i32, i32* @a19
  %r528 = add i32 %r526, %r527
  %r529 = load i32, i32* @a20
  %r530 = sub i32 %r528, %r529
  %r531 = load i32, i32* @a21
  %r532 = add i32 %r530, %r531
  %r533 = load i32, i32* @a22
  %r534 = sub i32 %r532, %r533
  %r535 = load i32, i32* @a23
  %r536 = add i32 %r534, %r535
  %r537 = load i32, i32* @a24
  %r538 = sub i32 %r536, %r537
  %r539 = load i32, i32* @a25
  %r540 = add i32 %r538, %r539
  %r541 = load i32, i32* @a26
  %r542 = sub i32 %r540, %r541
  %r543 = load i32, i32* @a27
  %r544 = add i32 %r542, %r543
  %r545 = load i32, i32* @a28
  %r546 = sub i32 %r544, %r545
  %r547 = load i32, i32* @a29
  %r548 = add i32 %r546, %r547
  %r549 = load i32, i32* @a30
  %r550 = sub i32 %r548, %r549
  %r551 = load i32, i32* @a31
  %r552 = add i32 %r550, %r551
  %r553 = load i32, i32* @a32
  %r554 = sub i32 %r552, %r553
  ret i32 %r554
}

define i32 @main( ) {
bb2:
  %r555 = alloca i32
  %r556 = alloca i32
  %r557 = call i32 @getint()
  store i32 %r557, i32* %r555
  %r558 = load i32, i32* %r555
  %r559 = mul i32 2, 9
  %r560 = add i32 %r558, %r559
  store i32 %r560, i32* %r556
  %r561 = load i32, i32* %r555
  %r562 = load i32, i32* %r556
  %r563 = call i32 @func(i32 %r561, i32 %r562)
  store i32 %r563, i32* %r555
  %r564 = load i32, i32* %r555
  call void @putint(i32 %r564)
  %r565 = load i32, i32* %r555
  ret i32 %r565
}

