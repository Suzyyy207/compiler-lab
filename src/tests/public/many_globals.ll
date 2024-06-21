declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@a0 = global i32 0
@a1 = global i32 0
@a2 = global i32 0
@a3 = global i32 0
@a4 = global i32 0
@a5 = global i32 0
@a6 = global i32 0
@a7 = global i32 0
@a8 = global i32 0
@a9 = global i32 0
@a10 = global i32 0
@a11 = global i32 0
@a12 = global i32 0
@a13 = global i32 0
@a14 = global i32 0
@a15 = global i32 0
@a16 = global i32 0
@a17 = global i32 0
@a18 = global i32 0
@a19 = global i32 0
@a20 = global i32 0
@a21 = global i32 0
@a22 = global i32 0
@a23 = global i32 0
@a24 = global i32 0
@a25 = global i32 0
@a26 = global i32 0
@a27 = global i32 0
@a28 = global i32 0
@a29 = global i32 0
@a30 = global i32 0
@a31 = global i32 0
@a32 = global i32 0
@a33 = global i32 0
@a34 = global i32 0
@a35 = global i32 0
@a36 = global i32 0
@a37 = global i32 0
@a38 = global i32 0
@a39 = global i32 0
define i32 @testParam8( i32 %r100, i32 %r102, i32 %r104, i32 %r106, i32 %r108, i32 %r110, i32 %r112, i32 %r114 ) {
bb2:
  %r101 = alloca i32
  store i32 %r100, i32* %r101
  %r103 = alloca i32
  store i32 %r102, i32* %r103
  %r105 = alloca i32
  store i32 %r104, i32* %r105
  %r107 = alloca i32
  store i32 %r106, i32* %r107
  %r109 = alloca i32
  store i32 %r108, i32* %r109
  %r111 = alloca i32
  store i32 %r110, i32* %r111
  %r113 = alloca i32
  store i32 %r112, i32* %r113
  %r115 = alloca i32
  store i32 %r114, i32* %r115
  br label %bb1

bb1:
  %r116 = load i32, i32* %r101
  %r117 = load i32, i32* %r103
  %r118 = add i32 %r116, %r117
  %r119 = load i32, i32* %r105
  %r120 = add i32 %r118, %r119
  %r121 = load i32, i32* %r107
  %r122 = add i32 %r120, %r121
  %r123 = load i32, i32* %r109
  %r124 = add i32 %r122, %r123
  %r125 = load i32, i32* %r111
  %r126 = add i32 %r124, %r125
  %r127 = load i32, i32* %r113
  %r128 = add i32 %r126, %r127
  %r129 = load i32, i32* %r115
  %r130 = add i32 %r128, %r129
  ret i32 %r130
}

define i32 @testParam16( i32 %r131, i32 %r133, i32 %r135, i32 %r137, i32 %r139, i32 %r141, i32 %r143, i32 %r145, i32 %r147, i32 %r149, i32 %r151, i32 %r153, i32 %r155, i32 %r157, i32 %r159, i32 %r161 ) {
bb4:
  %r132 = alloca i32
  store i32 %r131, i32* %r132
  %r134 = alloca i32
  store i32 %r133, i32* %r134
  %r136 = alloca i32
  store i32 %r135, i32* %r136
  %r138 = alloca i32
  store i32 %r137, i32* %r138
  %r140 = alloca i32
  store i32 %r139, i32* %r140
  %r142 = alloca i32
  store i32 %r141, i32* %r142
  %r144 = alloca i32
  store i32 %r143, i32* %r144
  %r146 = alloca i32
  store i32 %r145, i32* %r146
  %r148 = alloca i32
  store i32 %r147, i32* %r148
  %r150 = alloca i32
  store i32 %r149, i32* %r150
  %r152 = alloca i32
  store i32 %r151, i32* %r152
  %r154 = alloca i32
  store i32 %r153, i32* %r154
  %r156 = alloca i32
  store i32 %r155, i32* %r156
  %r158 = alloca i32
  store i32 %r157, i32* %r158
  %r160 = alloca i32
  store i32 %r159, i32* %r160
  %r162 = alloca i32
  store i32 %r161, i32* %r162
  br label %bb3

bb3:
  %r163 = load i32, i32* %r132
  %r164 = load i32, i32* %r134
  %r165 = add i32 %r163, %r164
  %r166 = load i32, i32* %r136
  %r167 = add i32 %r165, %r166
  %r168 = load i32, i32* %r138
  %r169 = sub i32 %r167, %r168
  %r170 = load i32, i32* %r140
  %r171 = sub i32 %r169, %r170
  %r172 = load i32, i32* %r142
  %r173 = sub i32 %r171, %r172
  %r174 = load i32, i32* %r144
  %r175 = sub i32 %r173, %r174
  %r176 = load i32, i32* %r146
  %r177 = sub i32 %r175, %r176
  %r178 = load i32, i32* %r148
  %r179 = add i32 %r177, %r178
  %r180 = load i32, i32* %r150
  %r181 = add i32 %r179, %r180
  %r182 = load i32, i32* %r152
  %r183 = add i32 %r181, %r182
  %r184 = load i32, i32* %r154
  %r185 = add i32 %r183, %r184
  %r186 = load i32, i32* %r156
  %r187 = add i32 %r185, %r186
  %r188 = load i32, i32* %r158
  %r189 = add i32 %r187, %r188
  %r190 = load i32, i32* %r160
  %r191 = add i32 %r189, %r190
  %r192 = load i32, i32* %r162
  %r193 = add i32 %r191, %r192
  ret i32 %r193
}

define i32 @testParam32( i32 %r194, i32 %r196, i32 %r198, i32 %r200, i32 %r202, i32 %r204, i32 %r206, i32 %r208, i32 %r210, i32 %r212, i32 %r214, i32 %r216, i32 %r218, i32 %r220, i32 %r222, i32 %r224, i32 %r226, i32 %r228, i32 %r230, i32 %r232, i32 %r234, i32 %r236, i32 %r238, i32 %r240, i32 %r242, i32 %r244, i32 %r246, i32 %r248, i32 %r250, i32 %r252, i32 %r254, i32 %r256 ) {
bb6:
  %r195 = alloca i32
  store i32 %r194, i32* %r195
  %r197 = alloca i32
  store i32 %r196, i32* %r197
  %r199 = alloca i32
  store i32 %r198, i32* %r199
  %r201 = alloca i32
  store i32 %r200, i32* %r201
  %r203 = alloca i32
  store i32 %r202, i32* %r203
  %r205 = alloca i32
  store i32 %r204, i32* %r205
  %r207 = alloca i32
  store i32 %r206, i32* %r207
  %r209 = alloca i32
  store i32 %r208, i32* %r209
  %r211 = alloca i32
  store i32 %r210, i32* %r211
  %r213 = alloca i32
  store i32 %r212, i32* %r213
  %r215 = alloca i32
  store i32 %r214, i32* %r215
  %r217 = alloca i32
  store i32 %r216, i32* %r217
  %r219 = alloca i32
  store i32 %r218, i32* %r219
  %r221 = alloca i32
  store i32 %r220, i32* %r221
  %r223 = alloca i32
  store i32 %r222, i32* %r223
  %r225 = alloca i32
  store i32 %r224, i32* %r225
  %r227 = alloca i32
  store i32 %r226, i32* %r227
  %r229 = alloca i32
  store i32 %r228, i32* %r229
  %r231 = alloca i32
  store i32 %r230, i32* %r231
  %r233 = alloca i32
  store i32 %r232, i32* %r233
  %r235 = alloca i32
  store i32 %r234, i32* %r235
  %r237 = alloca i32
  store i32 %r236, i32* %r237
  %r239 = alloca i32
  store i32 %r238, i32* %r239
  %r241 = alloca i32
  store i32 %r240, i32* %r241
  %r243 = alloca i32
  store i32 %r242, i32* %r243
  %r245 = alloca i32
  store i32 %r244, i32* %r245
  %r247 = alloca i32
  store i32 %r246, i32* %r247
  %r249 = alloca i32
  store i32 %r248, i32* %r249
  %r251 = alloca i32
  store i32 %r250, i32* %r251
  %r253 = alloca i32
  store i32 %r252, i32* %r253
  %r255 = alloca i32
  store i32 %r254, i32* %r255
  %r257 = alloca i32
  store i32 %r256, i32* %r257
  br label %bb5

bb5:
  %r258 = load i32, i32* %r195
  %r259 = load i32, i32* %r197
  %r260 = add i32 %r258, %r259
  %r261 = load i32, i32* %r199
  %r262 = add i32 %r260, %r261
  %r263 = load i32, i32* %r201
  %r264 = add i32 %r262, %r263
  %r265 = load i32, i32* %r203
  %r266 = add i32 %r264, %r265
  %r267 = load i32, i32* %r205
  %r268 = add i32 %r266, %r267
  %r269 = load i32, i32* %r207
  %r270 = add i32 %r268, %r269
  %r271 = load i32, i32* %r209
  %r272 = add i32 %r270, %r271
  %r273 = load i32, i32* %r211
  %r274 = add i32 %r272, %r273
  %r275 = load i32, i32* %r213
  %r276 = add i32 %r274, %r275
  %r277 = load i32, i32* %r215
  %r278 = add i32 %r276, %r277
  %r279 = load i32, i32* %r217
  %r280 = add i32 %r278, %r279
  %r281 = load i32, i32* %r219
  %r282 = add i32 %r280, %r281
  %r283 = load i32, i32* %r221
  %r284 = add i32 %r282, %r283
  %r285 = load i32, i32* %r223
  %r286 = add i32 %r284, %r285
  %r287 = load i32, i32* %r225
  %r288 = add i32 %r286, %r287
  %r289 = load i32, i32* %r227
  %r290 = add i32 %r288, %r289
  %r291 = load i32, i32* %r229
  %r292 = add i32 %r290, %r291
  %r293 = load i32, i32* %r231
  %r294 = sub i32 %r292, %r293
  %r295 = load i32, i32* %r233
  %r296 = sub i32 %r294, %r295
  %r297 = load i32, i32* %r235
  %r298 = sub i32 %r296, %r297
  %r299 = load i32, i32* %r237
  %r300 = sub i32 %r298, %r299
  %r301 = load i32, i32* %r239
  %r302 = sub i32 %r300, %r301
  %r303 = load i32, i32* %r241
  %r304 = add i32 %r302, %r303
  %r305 = load i32, i32* %r243
  %r306 = add i32 %r304, %r305
  %r307 = load i32, i32* %r245
  %r308 = add i32 %r306, %r307
  %r309 = load i32, i32* %r247
  %r310 = add i32 %r308, %r309
  %r311 = load i32, i32* %r249
  %r312 = add i32 %r310, %r311
  %r313 = load i32, i32* %r251
  %r314 = add i32 %r312, %r313
  %r315 = load i32, i32* %r253
  %r316 = add i32 %r314, %r315
  %r317 = load i32, i32* %r255
  %r318 = add i32 %r316, %r317
  %r319 = load i32, i32* %r257
  %r320 = add i32 %r318, %r319
  ret i32 %r320
}

define i32 @main( ) {
bb7:
  call void @_sysy_starttime(i32 97)
  store i32 0, i32* @a0
  store i32 1, i32* @a1
  store i32 2, i32* @a2
  store i32 3, i32* @a3
  store i32 4, i32* @a4
  store i32 5, i32* @a5
  store i32 6, i32* @a6
  store i32 7, i32* @a7
  store i32 8, i32* @a8
  store i32 9, i32* @a9
  store i32 0, i32* @a10
  store i32 1, i32* @a11
  store i32 2, i32* @a12
  store i32 3, i32* @a13
  store i32 4, i32* @a14
  store i32 5, i32* @a15
  store i32 6, i32* @a16
  store i32 7, i32* @a17
  store i32 8, i32* @a18
  store i32 9, i32* @a19
  store i32 0, i32* @a20
  store i32 1, i32* @a21
  store i32 2, i32* @a22
  store i32 3, i32* @a23
  store i32 4, i32* @a24
  store i32 5, i32* @a25
  store i32 6, i32* @a26
  store i32 7, i32* @a27
  store i32 8, i32* @a28
  store i32 9, i32* @a29
  store i32 0, i32* @a30
  store i32 1, i32* @a31
  store i32 4, i32* @a32
  store i32 5, i32* @a33
  store i32 6, i32* @a34
  store i32 7, i32* @a35
  store i32 8, i32* @a36
  store i32 9, i32* @a37
  store i32 0, i32* @a38
  store i32 1, i32* @a39
  %r321 = load i32, i32* @a0
  %r322 = load i32, i32* @a1
  %r323 = load i32, i32* @a2
  %r324 = load i32, i32* @a3
  %r325 = load i32, i32* @a4
  %r326 = load i32, i32* @a5
  %r327 = load i32, i32* @a6
  %r328 = load i32, i32* @a7
  %r329 = call i32 @testParam8(i32 %r321, i32 %r322, i32 %r323, i32 %r324, i32 %r325, i32 %r326, i32 %r327, i32 %r328)
  store i32 %r329, i32* @a0
  %r330 = load i32, i32* @a0
  call void @putint(i32 %r330)
  %r331 = load i32, i32* @a32
  %r332 = load i32, i32* @a33
  %r333 = load i32, i32* @a34
  %r334 = load i32, i32* @a35
  %r335 = load i32, i32* @a36
  %r336 = load i32, i32* @a37
  %r337 = load i32, i32* @a38
  %r338 = load i32, i32* @a39
  %r339 = load i32, i32* @a8
  %r340 = load i32, i32* @a9
  %r341 = load i32, i32* @a10
  %r342 = load i32, i32* @a11
  %r343 = load i32, i32* @a12
  %r344 = load i32, i32* @a13
  %r345 = load i32, i32* @a14
  %r346 = load i32, i32* @a15
  %r347 = call i32 @testParam16(i32 %r331, i32 %r332, i32 %r333, i32 %r334, i32 %r335, i32 %r336, i32 %r337, i32 %r338, i32 %r339, i32 %r340, i32 %r341, i32 %r342, i32 %r343, i32 %r344, i32 %r345, i32 %r346)
  store i32 %r347, i32* @a0
  %r348 = load i32, i32* @a0
  call void @putint(i32 %r348)
  %r349 = load i32, i32* @a0
  %r350 = load i32, i32* @a1
  %r351 = load i32, i32* @a2
  %r352 = load i32, i32* @a3
  %r353 = load i32, i32* @a4
  %r354 = load i32, i32* @a5
  %r355 = load i32, i32* @a6
  %r356 = load i32, i32* @a7
  %r357 = load i32, i32* @a8
  %r358 = load i32, i32* @a9
  %r359 = load i32, i32* @a10
  %r360 = load i32, i32* @a11
  %r361 = load i32, i32* @a12
  %r362 = load i32, i32* @a13
  %r363 = load i32, i32* @a14
  %r364 = load i32, i32* @a15
  %r365 = load i32, i32* @a16
  %r366 = load i32, i32* @a17
  %r367 = load i32, i32* @a18
  %r368 = load i32, i32* @a19
  %r369 = load i32, i32* @a20
  %r370 = load i32, i32* @a21
  %r371 = load i32, i32* @a22
  %r372 = load i32, i32* @a23
  %r373 = load i32, i32* @a24
  %r374 = load i32, i32* @a25
  %r375 = load i32, i32* @a26
  %r376 = load i32, i32* @a27
  %r377 = load i32, i32* @a28
  %r378 = load i32, i32* @a29
  %r379 = load i32, i32* @a30
  %r380 = load i32, i32* @a31
  %r381 = call i32 @testParam32(i32 %r349, i32 %r350, i32 %r351, i32 %r352, i32 %r353, i32 %r354, i32 %r355, i32 %r356, i32 %r357, i32 %r358, i32 %r359, i32 %r360, i32 %r361, i32 %r362, i32 %r363, i32 %r364, i32 %r365, i32 %r366, i32 %r367, i32 %r368, i32 %r369, i32 %r370, i32 %r371, i32 %r372, i32 %r373, i32 %r374, i32 %r375, i32 %r376, i32 %r377, i32 %r378, i32 %r379, i32 %r380)
  store i32 %r381, i32* @a0
  %r382 = load i32, i32* @a0
  call void @putint(i32 %r382)
  call void @_sysy_stoptime(i32 117)
  ret i32 0
}

