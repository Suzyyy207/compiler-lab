; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.timeval = type { i64, i32 }

@M = global i32 0
@L = global i32 0
@N = global i32 0
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

define i32 @mul(ptr %r100, ptr %r101, ptr %r102, ptr %r103, ptr %r104, ptr %r105, ptr %r106, ptr %r107, ptr %r108) {
bb1:
  %r344 = add i32 0, 0
  %r345 = add i32 0, 0
  %r110 = getelementptr i32, ptr %r100, i32 0
  %r111 = load i32, ptr %r110, align 4
  %r112 = getelementptr i32, ptr %r103, i32 0
  %r113 = load i32, ptr %r112, align 4
  %r346 = mul i32 %r111, %r113
  %r115 = getelementptr i32, ptr %r100, i32 1
  %r116 = load i32, ptr %r115, align 4
  %r117 = getelementptr i32, ptr %r104, i32 0
  %r118 = load i32, ptr %r117, align 4
  %r347 = mul i32 %r116, %r118
  %r348 = add i32 %r346, %r347
  %r121 = getelementptr i32, ptr %r100, i32 2
  %r122 = load i32, ptr %r121, align 4
  %r123 = getelementptr i32, ptr %r105, i32 0
  %r124 = load i32, ptr %r123, align 4
  %r349 = mul i32 %r122, %r124
  %r350 = add i32 %r348, %r349
  %r127 = getelementptr i32, ptr %r106, i32 0
  store i32 %r350, ptr %r127, align 4
  %r128 = getelementptr i32, ptr %r100, i32 0
  %r129 = load i32, ptr %r128, align 4
  %r130 = getelementptr i32, ptr %r103, i32 1
  %r131 = load i32, ptr %r130, align 4
  %r351 = mul i32 %r129, %r131
  %r133 = getelementptr i32, ptr %r100, i32 1
  %r134 = load i32, ptr %r133, align 4
  %r135 = getelementptr i32, ptr %r104, i32 1
  %r136 = load i32, ptr %r135, align 4
  %r352 = mul i32 %r134, %r136
  %r353 = add i32 %r351, %r352
  %r139 = getelementptr i32, ptr %r100, i32 2
  %r140 = load i32, ptr %r139, align 4
  %r141 = getelementptr i32, ptr %r105, i32 1
  %r142 = load i32, ptr %r141, align 4
  %r354 = mul i32 %r140, %r142
  %r355 = add i32 %r353, %r354
  %r145 = getelementptr i32, ptr %r106, i32 1
  store i32 %r355, ptr %r145, align 4
  %r146 = getelementptr i32, ptr %r100, i32 0
  %r147 = load i32, ptr %r146, align 4
  %r148 = getelementptr i32, ptr %r103, i32 2
  %r149 = load i32, ptr %r148, align 4
  %r356 = mul i32 %r147, %r149
  %r151 = getelementptr i32, ptr %r100, i32 1
  %r152 = load i32, ptr %r151, align 4
  %r153 = getelementptr i32, ptr %r104, i32 2
  %r154 = load i32, ptr %r153, align 4
  %r357 = mul i32 %r152, %r154
  %r358 = add i32 %r356, %r357
  %r157 = getelementptr i32, ptr %r100, i32 2
  %r158 = load i32, ptr %r157, align 4
  %r159 = getelementptr i32, ptr %r105, i32 2
  %r160 = load i32, ptr %r159, align 4
  %r359 = mul i32 %r158, %r160
  %r360 = add i32 %r358, %r359
  %r163 = getelementptr i32, ptr %r106, i32 2
  store i32 %r360, ptr %r163, align 4
  %r164 = getelementptr i32, ptr %r101, i32 0
  %r165 = load i32, ptr %r164, align 4
  %r166 = getelementptr i32, ptr %r103, i32 0
  %r167 = load i32, ptr %r166, align 4
  %r361 = mul i32 %r165, %r167
  %r169 = getelementptr i32, ptr %r101, i32 1
  %r170 = load i32, ptr %r169, align 4
  %r171 = getelementptr i32, ptr %r104, i32 0
  %r172 = load i32, ptr %r171, align 4
  %r362 = mul i32 %r170, %r172
  %r363 = add i32 %r361, %r362
  %r175 = getelementptr i32, ptr %r101, i32 2
  %r176 = load i32, ptr %r175, align 4
  %r177 = getelementptr i32, ptr %r105, i32 0
  %r178 = load i32, ptr %r177, align 4
  %r364 = mul i32 %r176, %r178
  %r365 = add i32 %r363, %r364
  %r181 = getelementptr i32, ptr %r107, i32 0
  store i32 %r365, ptr %r181, align 4
  %r182 = getelementptr i32, ptr %r101, i32 0
  %r183 = load i32, ptr %r182, align 4
  %r184 = getelementptr i32, ptr %r103, i32 1
  %r185 = load i32, ptr %r184, align 4
  %r366 = mul i32 %r183, %r185
  %r187 = getelementptr i32, ptr %r101, i32 1
  %r188 = load i32, ptr %r187, align 4
  %r189 = getelementptr i32, ptr %r104, i32 1
  %r190 = load i32, ptr %r189, align 4
  %r367 = mul i32 %r188, %r190
  %r368 = add i32 %r366, %r367
  %r193 = getelementptr i32, ptr %r101, i32 2
  %r194 = load i32, ptr %r193, align 4
  %r195 = getelementptr i32, ptr %r105, i32 1
  %r196 = load i32, ptr %r195, align 4
  %r369 = mul i32 %r194, %r196
  %r370 = add i32 %r368, %r369
  %r199 = getelementptr i32, ptr %r107, i32 1
  store i32 %r370, ptr %r199, align 4
  %r200 = getelementptr i32, ptr %r101, i32 0
  %r201 = load i32, ptr %r200, align 4
  %r202 = getelementptr i32, ptr %r103, i32 2
  %r203 = load i32, ptr %r202, align 4
  %r371 = mul i32 %r201, %r203
  %r205 = getelementptr i32, ptr %r101, i32 1
  %r206 = load i32, ptr %r205, align 4
  %r207 = getelementptr i32, ptr %r104, i32 2
  %r208 = load i32, ptr %r207, align 4
  %r372 = mul i32 %r206, %r208
  %r373 = add i32 %r371, %r372
  %r211 = getelementptr i32, ptr %r101, i32 2
  %r212 = load i32, ptr %r211, align 4
  %r213 = getelementptr i32, ptr %r105, i32 2
  %r214 = load i32, ptr %r213, align 4
  %r374 = mul i32 %r212, %r214
  %r375 = add i32 %r373, %r374
  %r217 = getelementptr i32, ptr %r107, i32 2
  store i32 %r375, ptr %r217, align 4
  %r218 = getelementptr i32, ptr %r102, i32 0
  %r219 = load i32, ptr %r218, align 4
  %r220 = getelementptr i32, ptr %r103, i32 0
  %r221 = load i32, ptr %r220, align 4
  %r376 = mul i32 %r219, %r221
  %r223 = getelementptr i32, ptr %r102, i32 1
  %r224 = load i32, ptr %r223, align 4
  %r225 = getelementptr i32, ptr %r104, i32 0
  %r226 = load i32, ptr %r225, align 4
  %r377 = mul i32 %r224, %r226
  %r378 = add i32 %r376, %r377
  %r229 = getelementptr i32, ptr %r102, i32 2
  %r230 = load i32, ptr %r229, align 4
  %r231 = getelementptr i32, ptr %r105, i32 0
  %r232 = load i32, ptr %r231, align 4
  %r379 = mul i32 %r230, %r232
  %r380 = add i32 %r378, %r379
  %r235 = getelementptr i32, ptr %r108, i32 0
  store i32 %r380, ptr %r235, align 4
  %r236 = getelementptr i32, ptr %r102, i32 0
  %r237 = load i32, ptr %r236, align 4
  %r238 = getelementptr i32, ptr %r103, i32 1
  %r239 = load i32, ptr %r238, align 4
  %r381 = mul i32 %r237, %r239
  %r241 = getelementptr i32, ptr %r102, i32 1
  %r242 = load i32, ptr %r241, align 4
  %r243 = getelementptr i32, ptr %r104, i32 1
  %r244 = load i32, ptr %r243, align 4
  %r382 = mul i32 %r242, %r244
  %r383 = add i32 %r381, %r382
  %r247 = getelementptr i32, ptr %r102, i32 2
  %r248 = load i32, ptr %r247, align 4
  %r249 = getelementptr i32, ptr %r105, i32 1
  %r250 = load i32, ptr %r249, align 4
  %r384 = mul i32 %r248, %r250
  %r385 = add i32 %r383, %r384
  %r253 = getelementptr i32, ptr %r108, i32 1
  store i32 %r385, ptr %r253, align 4
  %r254 = getelementptr i32, ptr %r102, i32 0
  %r255 = load i32, ptr %r254, align 4
  %r256 = getelementptr i32, ptr %r103, i32 2
  %r257 = load i32, ptr %r256, align 4
  %r386 = mul i32 %r255, %r257
  %r259 = getelementptr i32, ptr %r102, i32 1
  %r260 = load i32, ptr %r259, align 4
  %r261 = getelementptr i32, ptr %r104, i32 2
  %r262 = load i32, ptr %r261, align 4
  %r387 = mul i32 %r260, %r262
  %r388 = add i32 %r386, %r387
  %r265 = getelementptr i32, ptr %r102, i32 2
  %r266 = load i32, ptr %r265, align 4
  %r267 = getelementptr i32, ptr %r105, i32 2
  %r268 = load i32, ptr %r267, align 4
  %r389 = mul i32 %r266, %r268
  %r390 = add i32 %r388, %r389
  %r271 = getelementptr i32, ptr %r108, i32 2
  store i32 %r390, ptr %r271, align 4
  ret i32 0
}

define i32 @main() {
bb2:
  %r393 = add i32 0, 0
  call void @_sysy_starttime(i32 97)
  store i32 3, ptr @N, align 4
  store i32 3, ptr @M, align 4
  store i32 3, ptr @L, align 4
  %r272 = alloca [3 x i32], align 4
  %r273 = alloca [3 x i32], align 4
  %r274 = alloca [3 x i32], align 4
  %r275 = alloca [3 x i32], align 4
  %r276 = alloca [3 x i32], align 4
  %r277 = alloca [3 x i32], align 4
  %r278 = alloca [6 x i32], align 4
  %r279 = alloca [3 x i32], align 4
  %r280 = alloca [3 x i32], align 4
  %r394 = add i32 0, 0
  %r395 = add i32 0, 0
  br label %bb3

bb3:                                              ; preds = %bb4, %bb2
  %r396 = phi i32 [ %r395, %bb2 ], [ %r421, %bb4 ]
  %r283 = load i32, ptr @M, align 4
  %r397 = icmp slt i32 %r396, %r283
  br i1 %r397, label %bb4, label %bb5

bb4:                                              ; preds = %bb3
  %r287 = getelementptr [3 x i32], ptr %r272, i32 0, i32 %r396
  store i32 %r396, ptr %r287, align 4
  %r290 = getelementptr [3 x i32], ptr %r273, i32 0, i32 %r396
  store i32 %r396, ptr %r290, align 4
  %r293 = getelementptr [3 x i32], ptr %r274, i32 0, i32 %r396
  store i32 %r396, ptr %r293, align 4
  %r296 = getelementptr [3 x i32], ptr %r275, i32 0, i32 %r396
  store i32 %r396, ptr %r296, align 4
  %r299 = getelementptr [3 x i32], ptr %r276, i32 0, i32 %r396
  store i32 %r396, ptr %r299, align 4
  %r302 = getelementptr [3 x i32], ptr %r277, i32 0, i32 %r396
  store i32 %r396, ptr %r302, align 4
  %r420 = add i32 %r396, 1
  %r421 = add i32 %r420, 0
  br label %bb3

bb5:                                              ; preds = %bb3
  %r398 = call i32 @mul(ptr %r272, ptr %r273, ptr %r274, ptr %r275, ptr %r276, ptr %r277, ptr %r278, ptr %r279, ptr %r280)
  %r399 = add i32 %r398, 0
  br label %bb6

bb6:                                              ; preds = %bb7, %bb5
  %r400 = phi i32 [ %r399, %bb5 ], [ %r419, %bb7 ]
  %r308 = load i32, ptr @N, align 4
  %r401 = icmp slt i32 %r400, %r308
  br i1 %r401, label %bb7, label %bb8

bb7:                                              ; preds = %bb6
  %r311 = getelementptr [6 x i32], ptr %r278, i32 0, i32 %r400
  %r312 = load i32, ptr %r311, align 4
  %r417 = add i32 %r312, 0
  call void @putint(i32 %r417)
  %r418 = add i32 %r400, 1
  %r419 = add i32 %r418, 0
  br label %bb6

bb8:                                              ; preds = %bb6
  %r402 = add i32 10, 0
  %r403 = add i32 0, 0
  call void @putch(i32 %r402)
  br label %bb9

bb9:                                              ; preds = %bb10, %bb8
  %r404 = phi i32 [ %r403, %bb8 ], [ %r416, %bb10 ]
  %r320 = load i32, ptr @N, align 4
  %r405 = icmp slt i32 %r404, %r320
  br i1 %r405, label %bb10, label %bb11

bb10:                                             ; preds = %bb9
  %r323 = getelementptr [3 x i32], ptr %r279, i32 0, i32 %r404
  %r324 = load i32, ptr %r323, align 4
  %r414 = add i32 %r324, 0
  call void @putint(i32 %r414)
  %r415 = add i32 %r404, 1
  %r416 = add i32 %r415, 0
  br label %bb9

bb11:                                             ; preds = %bb9
  %r406 = add i32 10, 0
  %r407 = add i32 0, 0
  call void @putch(i32 %r406)
  br label %bb12

bb12:                                             ; preds = %bb13, %bb11
  %r408 = phi i32 [ %r407, %bb11 ], [ %r413, %bb13 ]
  %r332 = load i32, ptr @N, align 4
  %r409 = icmp slt i32 %r408, %r332
  br i1 %r409, label %bb13, label %bb14

bb13:                                             ; preds = %bb12
  %r335 = getelementptr [3 x i32], ptr %r280, i32 0, i32 %r408
  %r336 = load i32, ptr %r335, align 4
  %r411 = add i32 %r336, 0
  call void @putint(i32 %r411)
  %r412 = add i32 %r408, 1
  %r413 = add i32 %r412, 0
  br label %bb12

bb14:                                             ; preds = %bb12
  %r410 = add i32 10, 0
  call void @putch(i32 %r410)
  call void @_sysy_stoptime(i32 117)
  ret i32 0
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
