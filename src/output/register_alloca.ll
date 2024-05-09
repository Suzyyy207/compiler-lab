; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.timeval = type { i64, i32 }

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
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @before_main, ptr null }, { i32, ptr, ptr } { i32 65535, ptr @__GLOBAL_init_65535, ptr null }]
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_sysy_us = global [1024 x i32] zeroinitializer, align 4
@_sysy_s = global [1024 x i32] zeroinitializer, align 4
@_sysy_m = global [1024 x i32] zeroinitializer, align 4
@_sysy_h = global [1024 x i32] zeroinitializer, align 4
@_sysy_idx = global i32 0, align 4
@__stderrp = external global ptr, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"Timer@%04d-%04d: %dH-%dM-%dS-%dus\0A\00", align 1
@_sysy_l1 = global [1024 x i32] zeroinitializer, align 4
@_sysy_l2 = global [1024 x i32] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"TOTAL: %dH-%dM-%dS-%dus\0A\00", align 1
@_sysy_start = global %struct.timeval zeroinitializer, align 8
@_sysy_end = global %struct.timeval zeroinitializer, align 8
@__dso_handle = external hidden global i8

define i32 @func(i32 %r100, i32 %r102) {
bb2:
  %r143 = alloca i32, align 4
  %r142 = alloca i32, align 4
  %r141 = alloca i32, align 4
  %r140 = alloca i32, align 4
  %r139 = alloca i32, align 4
  %r138 = alloca i32, align 4
  %r137 = alloca i32, align 4
  %r136 = alloca i32, align 4
  %r135 = alloca i32, align 4
  %r134 = alloca i32, align 4
  %r133 = alloca i32, align 4
  %r132 = alloca i32, align 4
  %r131 = alloca i32, align 4
  %r130 = alloca i32, align 4
  %r129 = alloca i32, align 4
  %r128 = alloca i32, align 4
  %r127 = alloca i32, align 4
  %r126 = alloca i32, align 4
  %r125 = alloca i32, align 4
  %r124 = alloca i32, align 4
  %r123 = alloca i32, align 4
  %r122 = alloca i32, align 4
  %r121 = alloca i32, align 4
  %r120 = alloca i32, align 4
  %r119 = alloca i32, align 4
  %r118 = alloca i32, align 4
  %r117 = alloca i32, align 4
  %r116 = alloca i32, align 4
  %r115 = alloca i32, align 4
  %r114 = alloca i32, align 4
  %r113 = alloca i32, align 4
  %r112 = alloca i32, align 4
  %r111 = alloca i32, align 4
  %r110 = alloca i32, align 4
  %r109 = alloca i32, align 4
  %r108 = alloca i32, align 4
  %r104 = alloca i32, align 4
  %r101 = alloca i32, align 4
  store i32 %r100, ptr %r101, align 4
  %r103 = alloca i32, align 4
  store i32 %r102, ptr %r103, align 4
  br label %bb1

bb1:                                              ; preds = %bb2
  %r105 = load i32, ptr %r101, align 4
  %r106 = load i32, ptr %r103, align 4
  %r107 = add i32 %r105, %r106
  store i32 %r107, ptr %r104, align 4
  %r144 = call i32 @getint()
  store i32 %r144, ptr %r108, align 4
  %r145 = call i32 @getint()
  store i32 %r145, ptr %r109, align 4
  %r146 = call i32 @getint()
  store i32 %r146, ptr %r110, align 4
  %r147 = call i32 @getint()
  store i32 %r147, ptr %r111, align 4
  %r148 = load i32, ptr %r108, align 4
  %r149 = add i32 1, %r148
  %r150 = load i32, ptr @a1, align 4
  %r151 = add i32 %r149, %r150
  store i32 %r151, ptr %r112, align 4
  %r152 = load i32, ptr %r109, align 4
  %r153 = add i32 2, %r152
  %r154 = load i32, ptr @a2, align 4
  %r155 = add i32 %r153, %r154
  store i32 %r155, ptr %r113, align 4
  %r156 = load i32, ptr %r110, align 4
  %r157 = add i32 3, %r156
  %r158 = load i32, ptr @a3, align 4
  %r159 = add i32 %r157, %r158
  store i32 %r159, ptr %r114, align 4
  %r160 = load i32, ptr %r111, align 4
  %r161 = add i32 4, %r160
  %r162 = load i32, ptr @a4, align 4
  %r163 = add i32 %r161, %r162
  store i32 %r163, ptr %r115, align 4
  %r164 = load i32, ptr %r112, align 4
  %r165 = add i32 1, %r164
  %r166 = load i32, ptr @a5, align 4
  %r167 = add i32 %r165, %r166
  store i32 %r167, ptr %r116, align 4
  %r168 = load i32, ptr %r113, align 4
  %r169 = add i32 2, %r168
  %r170 = load i32, ptr @a6, align 4
  %r171 = add i32 %r169, %r170
  store i32 %r171, ptr %r117, align 4
  %r172 = load i32, ptr %r114, align 4
  %r173 = add i32 3, %r172
  %r174 = load i32, ptr @a7, align 4
  %r175 = add i32 %r173, %r174
  store i32 %r175, ptr %r118, align 4
  %r176 = load i32, ptr %r115, align 4
  %r177 = add i32 4, %r176
  %r178 = load i32, ptr @a8, align 4
  %r179 = add i32 %r177, %r178
  store i32 %r179, ptr %r119, align 4
  %r180 = load i32, ptr %r116, align 4
  %r181 = add i32 1, %r180
  %r182 = load i32, ptr @a9, align 4
  %r183 = add i32 %r181, %r182
  store i32 %r183, ptr %r120, align 4
  %r184 = load i32, ptr %r117, align 4
  %r185 = add i32 2, %r184
  %r186 = load i32, ptr @a10, align 4
  %r187 = add i32 %r185, %r186
  store i32 %r187, ptr %r121, align 4
  %r188 = load i32, ptr %r118, align 4
  %r189 = add i32 3, %r188
  %r190 = load i32, ptr @a11, align 4
  %r191 = add i32 %r189, %r190
  store i32 %r191, ptr %r122, align 4
  %r192 = load i32, ptr %r119, align 4
  %r193 = add i32 4, %r192
  %r194 = load i32, ptr @a12, align 4
  %r195 = add i32 %r193, %r194
  store i32 %r195, ptr %r123, align 4
  %r196 = load i32, ptr %r120, align 4
  %r197 = add i32 1, %r196
  %r198 = load i32, ptr @a13, align 4
  %r199 = add i32 %r197, %r198
  store i32 %r199, ptr %r124, align 4
  %r200 = load i32, ptr %r121, align 4
  %r201 = add i32 2, %r200
  %r202 = load i32, ptr @a14, align 4
  %r203 = add i32 %r201, %r202
  store i32 %r203, ptr %r125, align 4
  %r204 = load i32, ptr %r122, align 4
  %r205 = add i32 3, %r204
  %r206 = load i32, ptr @a15, align 4
  %r207 = add i32 %r205, %r206
  store i32 %r207, ptr %r126, align 4
  %r208 = load i32, ptr %r123, align 4
  %r209 = add i32 4, %r208
  %r210 = load i32, ptr @a16, align 4
  %r211 = add i32 %r209, %r210
  store i32 %r211, ptr %r127, align 4
  %r212 = load i32, ptr %r124, align 4
  %r213 = add i32 1, %r212
  %r214 = load i32, ptr @a17, align 4
  %r215 = add i32 %r213, %r214
  store i32 %r215, ptr %r128, align 4
  %r216 = load i32, ptr %r125, align 4
  %r217 = add i32 2, %r216
  %r218 = load i32, ptr @a18, align 4
  %r219 = add i32 %r217, %r218
  store i32 %r219, ptr %r129, align 4
  %r220 = load i32, ptr %r126, align 4
  %r221 = add i32 3, %r220
  %r222 = load i32, ptr @a19, align 4
  %r223 = add i32 %r221, %r222
  store i32 %r223, ptr %r130, align 4
  %r224 = load i32, ptr %r127, align 4
  %r225 = add i32 4, %r224
  %r226 = load i32, ptr @a20, align 4
  %r227 = add i32 %r225, %r226
  store i32 %r227, ptr %r131, align 4
  %r228 = load i32, ptr %r128, align 4
  %r229 = add i32 1, %r228
  %r230 = load i32, ptr @a21, align 4
  %r231 = add i32 %r229, %r230
  store i32 %r231, ptr %r132, align 4
  %r232 = load i32, ptr %r129, align 4
  %r233 = add i32 2, %r232
  %r234 = load i32, ptr @a22, align 4
  %r235 = add i32 %r233, %r234
  store i32 %r235, ptr %r133, align 4
  %r236 = load i32, ptr %r130, align 4
  %r237 = add i32 3, %r236
  %r238 = load i32, ptr @a23, align 4
  %r239 = add i32 %r237, %r238
  store i32 %r239, ptr %r134, align 4
  %r240 = load i32, ptr %r131, align 4
  %r241 = add i32 4, %r240
  %r242 = load i32, ptr @a24, align 4
  %r243 = add i32 %r241, %r242
  store i32 %r243, ptr %r135, align 4
  %r244 = load i32, ptr %r132, align 4
  %r245 = add i32 1, %r244
  %r246 = load i32, ptr @a25, align 4
  %r247 = add i32 %r245, %r246
  store i32 %r247, ptr %r136, align 4
  %r248 = load i32, ptr %r133, align 4
  %r249 = add i32 2, %r248
  %r250 = load i32, ptr @a26, align 4
  %r251 = add i32 %r249, %r250
  store i32 %r251, ptr %r137, align 4
  %r252 = load i32, ptr %r134, align 4
  %r253 = add i32 3, %r252
  %r254 = load i32, ptr @a27, align 4
  %r255 = add i32 %r253, %r254
  store i32 %r255, ptr %r138, align 4
  %r256 = load i32, ptr %r135, align 4
  %r257 = add i32 4, %r256
  %r258 = load i32, ptr @a28, align 4
  %r259 = add i32 %r257, %r258
  store i32 %r259, ptr %r139, align 4
  %r260 = load i32, ptr %r136, align 4
  %r261 = add i32 1, %r260
  %r262 = load i32, ptr @a29, align 4
  %r263 = add i32 %r261, %r262
  store i32 %r263, ptr %r140, align 4
  %r264 = load i32, ptr %r137, align 4
  %r265 = add i32 2, %r264
  %r266 = load i32, ptr @a30, align 4
  %r267 = add i32 %r265, %r266
  store i32 %r267, ptr %r141, align 4
  %r268 = load i32, ptr %r138, align 4
  %r269 = add i32 3, %r268
  %r270 = load i32, ptr @a31, align 4
  %r271 = add i32 %r269, %r270
  store i32 %r271, ptr %r142, align 4
  %r272 = load i32, ptr %r139, align 4
  %r273 = add i32 4, %r272
  %r274 = load i32, ptr @a32, align 4
  %r275 = add i32 %r273, %r274
  store i32 %r275, ptr %r143, align 4
  %r276 = load i32, ptr %r101, align 4
  %r277 = load i32, ptr %r103, align 4
  %r278 = sub i32 %r276, %r277
  %r279 = add i32 %r278, 10
  store i32 %r279, ptr %r104, align 4
  %r280 = load i32, ptr %r136, align 4
  %r281 = add i32 1, %r280
  %r282 = load i32, ptr @a29, align 4
  %r283 = add i32 %r281, %r282
  store i32 %r283, ptr %r140, align 4
  %r284 = load i32, ptr %r137, align 4
  %r285 = add i32 2, %r284
  %r286 = load i32, ptr @a30, align 4
  %r287 = add i32 %r285, %r286
  store i32 %r287, ptr %r141, align 4
  %r288 = load i32, ptr %r138, align 4
  %r289 = add i32 3, %r288
  %r290 = load i32, ptr @a31, align 4
  %r291 = add i32 %r289, %r290
  store i32 %r291, ptr %r142, align 4
  %r292 = load i32, ptr %r139, align 4
  %r293 = add i32 4, %r292
  %r294 = load i32, ptr @a32, align 4
  %r295 = add i32 %r293, %r294
  store i32 %r295, ptr %r143, align 4
  %r296 = load i32, ptr %r132, align 4
  %r297 = add i32 1, %r296
  %r298 = load i32, ptr @a25, align 4
  %r299 = add i32 %r297, %r298
  store i32 %r299, ptr %r136, align 4
  %r300 = load i32, ptr %r133, align 4
  %r301 = add i32 2, %r300
  %r302 = load i32, ptr @a26, align 4
  %r303 = add i32 %r301, %r302
  store i32 %r303, ptr %r137, align 4
  %r304 = load i32, ptr %r134, align 4
  %r305 = add i32 3, %r304
  %r306 = load i32, ptr @a27, align 4
  %r307 = add i32 %r305, %r306
  store i32 %r307, ptr %r138, align 4
  %r308 = load i32, ptr %r135, align 4
  %r309 = add i32 4, %r308
  %r310 = load i32, ptr @a28, align 4
  %r311 = add i32 %r309, %r310
  store i32 %r311, ptr %r139, align 4
  %r312 = load i32, ptr %r128, align 4
  %r313 = add i32 1, %r312
  %r314 = load i32, ptr @a21, align 4
  %r315 = add i32 %r313, %r314
  store i32 %r315, ptr %r132, align 4
  %r316 = load i32, ptr %r129, align 4
  %r317 = add i32 2, %r316
  %r318 = load i32, ptr @a22, align 4
  %r319 = add i32 %r317, %r318
  store i32 %r319, ptr %r133, align 4
  %r320 = load i32, ptr %r130, align 4
  %r321 = add i32 3, %r320
  %r322 = load i32, ptr @a23, align 4
  %r323 = add i32 %r321, %r322
  store i32 %r323, ptr %r134, align 4
  %r324 = load i32, ptr %r131, align 4
  %r325 = add i32 4, %r324
  %r326 = load i32, ptr @a24, align 4
  %r327 = add i32 %r325, %r326
  store i32 %r327, ptr %r135, align 4
  %r328 = load i32, ptr %r124, align 4
  %r329 = add i32 1, %r328
  %r330 = load i32, ptr @a17, align 4
  %r331 = add i32 %r329, %r330
  store i32 %r331, ptr %r128, align 4
  %r332 = load i32, ptr %r125, align 4
  %r333 = add i32 2, %r332
  %r334 = load i32, ptr @a18, align 4
  %r335 = add i32 %r333, %r334
  store i32 %r335, ptr %r129, align 4
  %r336 = load i32, ptr %r126, align 4
  %r337 = add i32 3, %r336
  %r338 = load i32, ptr @a19, align 4
  %r339 = add i32 %r337, %r338
  store i32 %r339, ptr %r130, align 4
  %r340 = load i32, ptr %r127, align 4
  %r341 = add i32 4, %r340
  %r342 = load i32, ptr @a20, align 4
  %r343 = add i32 %r341, %r342
  store i32 %r343, ptr %r131, align 4
  %r344 = load i32, ptr %r120, align 4
  %r345 = add i32 1, %r344
  %r346 = load i32, ptr @a13, align 4
  %r347 = add i32 %r345, %r346
  store i32 %r347, ptr %r124, align 4
  %r348 = load i32, ptr %r121, align 4
  %r349 = add i32 2, %r348
  %r350 = load i32, ptr @a14, align 4
  %r351 = add i32 %r349, %r350
  store i32 %r351, ptr %r125, align 4
  %r352 = load i32, ptr %r122, align 4
  %r353 = add i32 3, %r352
  %r354 = load i32, ptr @a15, align 4
  %r355 = add i32 %r353, %r354
  store i32 %r355, ptr %r126, align 4
  %r356 = load i32, ptr %r123, align 4
  %r357 = add i32 4, %r356
  %r358 = load i32, ptr @a16, align 4
  %r359 = add i32 %r357, %r358
  store i32 %r359, ptr %r127, align 4
  %r360 = load i32, ptr %r116, align 4
  %r361 = add i32 1, %r360
  %r362 = load i32, ptr @a9, align 4
  %r363 = add i32 %r361, %r362
  store i32 %r363, ptr %r120, align 4
  %r364 = load i32, ptr %r117, align 4
  %r365 = add i32 2, %r364
  %r366 = load i32, ptr @a10, align 4
  %r367 = add i32 %r365, %r366
  store i32 %r367, ptr %r121, align 4
  %r368 = load i32, ptr %r118, align 4
  %r369 = add i32 3, %r368
  %r370 = load i32, ptr @a11, align 4
  %r371 = add i32 %r369, %r370
  store i32 %r371, ptr %r122, align 4
  %r372 = load i32, ptr %r119, align 4
  %r373 = add i32 4, %r372
  %r374 = load i32, ptr @a12, align 4
  %r375 = add i32 %r373, %r374
  store i32 %r375, ptr %r123, align 4
  %r376 = load i32, ptr %r112, align 4
  %r377 = add i32 1, %r376
  %r378 = load i32, ptr @a5, align 4
  %r379 = add i32 %r377, %r378
  store i32 %r379, ptr %r116, align 4
  %r380 = load i32, ptr %r113, align 4
  %r381 = add i32 2, %r380
  %r382 = load i32, ptr @a6, align 4
  %r383 = add i32 %r381, %r382
  store i32 %r383, ptr %r117, align 4
  %r384 = load i32, ptr %r114, align 4
  %r385 = add i32 3, %r384
  %r386 = load i32, ptr @a7, align 4
  %r387 = add i32 %r385, %r386
  store i32 %r387, ptr %r118, align 4
  %r388 = load i32, ptr %r115, align 4
  %r389 = add i32 4, %r388
  %r390 = load i32, ptr @a8, align 4
  %r391 = add i32 %r389, %r390
  store i32 %r391, ptr %r119, align 4
  %r392 = load i32, ptr %r108, align 4
  %r393 = add i32 1, %r392
  %r394 = load i32, ptr @a1, align 4
  %r395 = add i32 %r393, %r394
  store i32 %r395, ptr %r112, align 4
  %r396 = load i32, ptr %r109, align 4
  %r397 = add i32 2, %r396
  %r398 = load i32, ptr @a2, align 4
  %r399 = add i32 %r397, %r398
  store i32 %r399, ptr %r113, align 4
  %r400 = load i32, ptr %r110, align 4
  %r401 = add i32 3, %r400
  %r402 = load i32, ptr @a3, align 4
  %r403 = add i32 %r401, %r402
  store i32 %r403, ptr %r114, align 4
  %r404 = load i32, ptr %r111, align 4
  %r405 = add i32 4, %r404
  %r406 = load i32, ptr @a4, align 4
  %r407 = add i32 %r405, %r406
  store i32 %r407, ptr %r115, align 4
  %r408 = load i32, ptr %r108, align 4
  %r409 = add i32 1, %r408
  %r410 = load i32, ptr @a1, align 4
  %r411 = add i32 %r409, %r410
  store i32 %r411, ptr %r112, align 4
  %r412 = load i32, ptr %r109, align 4
  %r413 = add i32 2, %r412
  %r414 = load i32, ptr @a2, align 4
  %r415 = add i32 %r413, %r414
  store i32 %r415, ptr %r113, align 4
  %r416 = load i32, ptr %r110, align 4
  %r417 = add i32 3, %r416
  %r418 = load i32, ptr @a3, align 4
  %r419 = add i32 %r417, %r418
  store i32 %r419, ptr %r114, align 4
  %r420 = load i32, ptr %r111, align 4
  %r421 = add i32 4, %r420
  %r422 = load i32, ptr @a4, align 4
  %r423 = add i32 %r421, %r422
  store i32 %r423, ptr %r115, align 4
  %r424 = load i32, ptr %r104, align 4
  %r425 = load i32, ptr %r108, align 4
  %r426 = add i32 %r424, %r425
  %r427 = load i32, ptr %r109, align 4
  %r428 = add i32 %r426, %r427
  %r429 = load i32, ptr %r110, align 4
  %r430 = add i32 %r428, %r429
  %r431 = load i32, ptr %r111, align 4
  %r432 = add i32 %r430, %r431
  %r433 = load i32, ptr %r112, align 4
  %r434 = sub i32 %r432, %r433
  %r435 = load i32, ptr %r113, align 4
  %r436 = sub i32 %r434, %r435
  %r437 = load i32, ptr %r114, align 4
  %r438 = sub i32 %r436, %r437
  %r439 = load i32, ptr %r115, align 4
  %r440 = sub i32 %r438, %r439
  %r441 = load i32, ptr %r116, align 4
  %r442 = add i32 %r440, %r441
  %r443 = load i32, ptr %r117, align 4
  %r444 = add i32 %r442, %r443
  %r445 = load i32, ptr %r118, align 4
  %r446 = add i32 %r444, %r445
  %r447 = load i32, ptr %r119, align 4
  %r448 = add i32 %r446, %r447
  %r449 = load i32, ptr %r120, align 4
  %r450 = sub i32 %r448, %r449
  %r451 = load i32, ptr %r121, align 4
  %r452 = sub i32 %r450, %r451
  %r453 = load i32, ptr %r122, align 4
  %r454 = sub i32 %r452, %r453
  %r455 = load i32, ptr %r123, align 4
  %r456 = sub i32 %r454, %r455
  %r457 = load i32, ptr %r124, align 4
  %r458 = add i32 %r456, %r457
  %r459 = load i32, ptr %r125, align 4
  %r460 = add i32 %r458, %r459
  %r461 = load i32, ptr %r126, align 4
  %r462 = add i32 %r460, %r461
  %r463 = load i32, ptr %r127, align 4
  %r464 = add i32 %r462, %r463
  %r465 = load i32, ptr %r128, align 4
  %r466 = sub i32 %r464, %r465
  %r467 = load i32, ptr %r129, align 4
  %r468 = sub i32 %r466, %r467
  %r469 = load i32, ptr %r130, align 4
  %r470 = sub i32 %r468, %r469
  %r471 = load i32, ptr %r131, align 4
  %r472 = sub i32 %r470, %r471
  %r473 = load i32, ptr %r132, align 4
  %r474 = add i32 %r472, %r473
  %r475 = load i32, ptr %r133, align 4
  %r476 = add i32 %r474, %r475
  %r477 = load i32, ptr %r134, align 4
  %r478 = add i32 %r476, %r477
  %r479 = load i32, ptr %r135, align 4
  %r480 = add i32 %r478, %r479
  %r481 = load i32, ptr %r136, align 4
  %r482 = sub i32 %r480, %r481
  %r483 = load i32, ptr %r137, align 4
  %r484 = sub i32 %r482, %r483
  %r485 = load i32, ptr %r138, align 4
  %r486 = sub i32 %r484, %r485
  %r487 = load i32, ptr %r139, align 4
  %r488 = sub i32 %r486, %r487
  %r489 = load i32, ptr %r140, align 4
  %r490 = add i32 %r488, %r489
  %r491 = load i32, ptr %r141, align 4
  %r492 = add i32 %r490, %r491
  %r493 = load i32, ptr %r142, align 4
  %r494 = add i32 %r492, %r493
  %r495 = load i32, ptr %r143, align 4
  %r496 = add i32 %r494, %r495
  %r497 = load i32, ptr @a1, align 4
  %r498 = add i32 %r496, %r497
  %r499 = load i32, ptr @a2, align 4
  %r500 = sub i32 %r498, %r499
  %r501 = load i32, ptr @a3, align 4
  %r502 = add i32 %r500, %r501
  %r503 = load i32, ptr @a4, align 4
  %r504 = sub i32 %r502, %r503
  %r505 = load i32, ptr @a5, align 4
  %r506 = add i32 %r504, %r505
  %r507 = load i32, ptr @a6, align 4
  %r508 = sub i32 %r506, %r507
  %r509 = load i32, ptr @a7, align 4
  %r510 = add i32 %r508, %r509
  %r511 = load i32, ptr @a8, align 4
  %r512 = sub i32 %r510, %r511
  %r513 = load i32, ptr @a9, align 4
  %r514 = add i32 %r512, %r513
  %r515 = load i32, ptr @a10, align 4
  %r516 = sub i32 %r514, %r515
  %r517 = load i32, ptr @a11, align 4
  %r518 = add i32 %r516, %r517
  %r519 = load i32, ptr @a12, align 4
  %r520 = sub i32 %r518, %r519
  %r521 = load i32, ptr @a13, align 4
  %r522 = add i32 %r520, %r521
  %r523 = load i32, ptr @a14, align 4
  %r524 = sub i32 %r522, %r523
  %r525 = load i32, ptr @a15, align 4
  %r526 = add i32 %r524, %r525
  %r527 = load i32, ptr @a16, align 4
  %r528 = sub i32 %r526, %r527
  %r529 = load i32, ptr @a17, align 4
  %r530 = add i32 %r528, %r529
  %r531 = load i32, ptr @a18, align 4
  %r532 = sub i32 %r530, %r531
  %r533 = load i32, ptr @a19, align 4
  %r534 = add i32 %r532, %r533
  %r535 = load i32, ptr @a20, align 4
  %r536 = sub i32 %r534, %r535
  %r537 = load i32, ptr @a21, align 4
  %r538 = add i32 %r536, %r537
  %r539 = load i32, ptr @a22, align 4
  %r540 = sub i32 %r538, %r539
  %r541 = load i32, ptr @a23, align 4
  %r542 = add i32 %r540, %r541
  %r543 = load i32, ptr @a24, align 4
  %r544 = sub i32 %r542, %r543
  %r545 = load i32, ptr @a25, align 4
  %r546 = add i32 %r544, %r545
  %r547 = load i32, ptr @a26, align 4
  %r548 = sub i32 %r546, %r547
  %r549 = load i32, ptr @a27, align 4
  %r550 = add i32 %r548, %r549
  %r551 = load i32, ptr @a28, align 4
  %r552 = sub i32 %r550, %r551
  %r553 = load i32, ptr @a29, align 4
  %r554 = add i32 %r552, %r553
  %r555 = load i32, ptr @a30, align 4
  %r556 = sub i32 %r554, %r555
  %r557 = load i32, ptr @a31, align 4
  %r558 = add i32 %r556, %r557
  %r559 = load i32, ptr @a32, align 4
  %r560 = sub i32 %r558, %r559
  ret i32 %r560
}

define i32 @main() {
bb3:
  %r561 = alloca i32, align 4
  %r562 = alloca i32, align 4
  %r563 = call i32 @getint()
  store i32 %r563, ptr %r561, align 4
  %r564 = load i32, ptr %r561, align 4
  %r565 = mul i32 2, 9
  %r566 = add i32 %r564, %r565
  store i32 %r566, ptr %r562, align 4
  %r567 = load i32, ptr %r561, align 4
  %r568 = load i32, ptr %r562, align 4
  %r569 = call i32 @func(i32 %r567, i32 %r568)
  store i32 %r569, ptr %r561, align 4
  %r570 = load i32, ptr %r561, align 4
  %r571 = load i32, ptr %r561, align 4
  call void @putint(i32 %r571)
  %r572 = load i32, ptr %r561, align 4
  ret i32 %r572
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @before_main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %18, %0
  %3 = load i32, ptr %1, align 4
  %4 = icmp slt i32 %3, 1024
  br i1 %4, label %5, label %21

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %7
  store i32 0, ptr %8, align 4
  %9 = load i32, ptr %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %10
  store i32 0, ptr %11, align 4
  %12 = load i32, ptr %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %13
  store i32 0, ptr %14, align 4
  %15 = load i32, ptr %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [1024 x i32], ptr @_sysy_h, i64 0, i64 %16
  store i32 0, ptr %17, align 4
  br label %18

18:                                               ; preds = %5
  %19 = load i32, ptr %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %1, align 4
  br label %2, !llvm.loop !5

21:                                               ; preds = %2
  store i32 1, ptr @_sysy_idx, align 4
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable(sync)
define internal void @__GLOBAL_init_65535() #1 section "__TEXT,__StaticInit,regular,pure_instructions" {
  %1 = call i32 @__cxa_atexit(ptr @after_main, ptr null, ptr @__dso_handle) #2
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @after_main() #0 {
  %1 = alloca i32, align 4
  store i32 1, ptr %1, align 4
  br label %2

2:                                                ; preds = %63, %0
  %3 = load i32, ptr %1, align 4
  %4 = load i32, ptr @_sysy_idx, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %66

6:                                                ; preds = %2
  %7 = load ptr, ptr @__stderrp, align 8
  %8 = load i32, ptr %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [1024 x i32], ptr @_sysy_l1, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [1024 x i32], ptr @_sysy_l2, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [1024 x i32], ptr @_sysy_h, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.5, i32 noundef %11, i32 noundef %15, i32 noundef %19, i32 noundef %23, i32 noundef %27, i32 noundef %31)
  %33 = load i32, ptr %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr @_sysy_us, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, ptr @_sysy_us, align 4
  %39 = load i32, ptr %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr @_sysy_s, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, ptr @_sysy_s, align 4
  %45 = load i32, ptr @_sysy_us, align 4
  %46 = srem i32 %45, 1000000
  store i32 %46, ptr @_sysy_us, align 4
  %47 = load i32, ptr %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr @_sysy_m, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, ptr @_sysy_m, align 4
  %53 = load i32, ptr @_sysy_s, align 4
  %54 = srem i32 %53, 60
  store i32 %54, ptr @_sysy_s, align 4
  %55 = load i32, ptr %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1024 x i32], ptr @_sysy_h, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4
  %59 = load i32, ptr @_sysy_h, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, ptr @_sysy_h, align 4
  %61 = load i32, ptr @_sysy_m, align 4
  %62 = srem i32 %61, 60
  store i32 %62, ptr @_sysy_m, align 4
  br label %63

63:                                               ; preds = %6
  %64 = load i32, ptr %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %1, align 4
  br label %2, !llvm.loop !7

66:                                               ; preds = %2
  %67 = load ptr, ptr @__stderrp, align 8
  %68 = load i32, ptr @_sysy_h, align 4
  %69 = load i32, ptr @_sysy_m, align 4
  %70 = load i32, ptr @_sysy_s, align 4
  %71 = load i32, ptr @_sysy_us, align 4
  %72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef @.str.6, i32 noundef %68, i32 noundef %69, i32 noundef %70, i32 noundef %71)
  ret void
}

; Function Attrs: nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @getint() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (ptr, ...) @scanf(ptr noundef @.str, ptr noundef %1)
  %3 = load i32, ptr %1, align 4
  ret i32 %3
}

declare i32 @scanf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @getch() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 (ptr, ...) @scanf(ptr noundef @.str.1, ptr noundef %1)
  %3 = load i8, ptr %1, align 1
  %4 = sext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @putint(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3)
  ret void
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @putch(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @putarray(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  %6 = load i32, ptr %3, align 4
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %6)
  store i32 0, ptr %5, align 4
  br label %8

8:                                                ; preds = %19, %2
  %9 = load i32, ptr %5, align 4
  %10 = load i32, ptr %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8
  %14 = load i32, ptr %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %13, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %17)
  br label %19

19:                                               ; preds = %12
  %20 = load i32, ptr %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %5, align 4
  br label %8, !llvm.loop !8

22:                                               ; preds = %8
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @_sysy_starttime(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr @_sysy_idx, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [1024 x i32], ptr @_sysy_l1, i64 0, i64 %5
  store i32 %3, ptr %6, align 4
  %7 = call i32 @gettimeofday(ptr noundef @_sysy_start, ptr noundef null)
  ret void
}

declare i32 @gettimeofday(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @_sysy_stoptime(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = call i32 @gettimeofday(ptr noundef @_sysy_end, ptr noundef null)
  %4 = load i32, ptr %2, align 4
  %5 = load i32, ptr @_sysy_idx, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [1024 x i32], ptr @_sysy_l2, i64 0, i64 %6
  store i32 %4, ptr %7, align 4
  %8 = load i64, ptr @_sysy_end, align 8
  %9 = load i64, ptr @_sysy_start, align 8
  %10 = sub nsw i64 %8, %9
  %11 = mul nsw i64 1000000, %10
  %12 = load i32, ptr getelementptr inbounds (%struct.timeval, ptr @_sysy_end, i32 0, i32 1), align 8
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = load i32, ptr getelementptr inbounds (%struct.timeval, ptr @_sysy_start, i32 0, i32 1), align 8
  %16 = sext i32 %15 to i64
  %17 = sub nsw i64 %14, %16
  %18 = load i32, ptr @_sysy_idx, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %17
  %24 = trunc i64 %23 to i32
  store i32 %24, ptr %20, align 4
  %25 = load i32, ptr @_sysy_idx, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = sdiv i32 %28, 1000000
  %30 = load i32, ptr @_sysy_idx, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = add nsw i32 %33, %29
  store i32 %34, ptr %32, align 4
  %35 = load i32, ptr @_sysy_idx, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [1024 x i32], ptr @_sysy_us, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = srem i32 %38, 1000000
  store i32 %39, ptr %37, align 4
  %40 = load i32, ptr @_sysy_idx, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = sdiv i32 %43, 60
  %45 = load i32, ptr @_sysy_idx, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4
  %49 = add nsw i32 %48, %44
  store i32 %49, ptr %47, align 4
  %50 = load i32, ptr @_sysy_idx, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [1024 x i32], ptr @_sysy_s, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4
  %54 = srem i32 %53, 60
  store i32 %54, ptr %52, align 4
  %55 = load i32, ptr @_sysy_idx, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4
  %59 = sdiv i32 %58, 60
  %60 = load i32, ptr @_sysy_idx, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [1024 x i32], ptr @_sysy_h, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4
  %64 = add nsw i32 %63, %59
  store i32 %64, ptr %62, align 4
  %65 = load i32, ptr @_sysy_idx, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [1024 x i32], ptr @_sysy_m, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4
  %69 = srem i32 %68, 60
  store i32 %69, ptr %67, align 4
  %70 = load i32, ptr @_sysy_idx, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr @_sysy_idx, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #1 = { noinline nounwind ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"Homebrew clang version 17.0.6"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
