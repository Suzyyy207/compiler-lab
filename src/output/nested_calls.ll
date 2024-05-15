; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.timeval = type { i64, i32 }

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

define i32 @func1(i32 %r100, i32 %r102, i32 %r104) {
bb2:
  %r275 = add i32 0, 0
  %r276 = add i32 %r100, 0
  %r277 = add i32 0, 0
  %r278 = add i32 %r102, 0
  %r279 = add i32 0, 0
  %r280 = add i32 %r104, 0
  br label %bb1

bb1:                                              ; preds = %bb2
  %r281 = icmp eq i32 %r280, 0
  br i1 %r281, label %bb3, label %bb4

bb3:                                              ; preds = %bb1
  %r284 = mul i32 %r276, %r278
  ret i32 %r284

bb4:                                              ; preds = %bb1
  %r282 = sub i32 %r278, %r280
  %r283 = call i32 @func1(i32 %r276, i32 %r282, i32 0)
  ret i32 %r283
}

define i32 @func2(i32 %r116, i32 %r118) {
bb7:
  %r287 = add i32 0, 0
  %r288 = add i32 %r116, 0
  %r289 = add i32 0, 0
  %r290 = add i32 %r118, 0
  br label %bb6

bb6:                                              ; preds = %bb7
  %r291 = icmp ne i32 %r290, 0
  br i1 %r291, label %bb8, label %bb9

bb8:                                              ; preds = %bb6
  %r292 = sdiv i32 %r288, %r290
  %r293 = mul i32 %r292, %r290
  %r294 = sub i32 %r288, %r293
  %r295 = call i32 @func2(i32 %r294, i32 0)
  ret i32 %r295

bb9:                                              ; preds = %bb6
  ret i32 %r288
}

define i32 @func3(i32 %r131, i32 %r133) {
bb12:
  %r298 = add i32 0, 0
  %r299 = add i32 %r131, 0
  %r300 = add i32 0, 0
  %r301 = add i32 %r133, 0
  br label %bb11

bb11:                                             ; preds = %bb12
  %r302 = icmp eq i32 %r301, 0
  br i1 %r302, label %bb13, label %bb14

bb13:                                             ; preds = %bb11
  %r305 = add i32 %r299, 1
  ret i32 %r305

bb14:                                             ; preds = %bb11
  %r303 = add i32 %r299, %r301
  %r304 = call i32 @func3(i32 %r303, i32 0)
  ret i32 %r304
}

define i32 @func4(i32 %r143, i32 %r145, i32 %r147) {
bb17:
  %r309 = add i32 0, 0
  %r310 = add i32 %r143, 0
  %r311 = add i32 0, 0
  %r312 = add i32 %r145, 0
  %r313 = add i32 0, 0
  %r314 = add i32 %r147, 0
  br label %bb16

bb16:                                             ; preds = %bb17
  %r315 = icmp ne i32 %r310, 0
  br i1 %r315, label %bb18, label %bb19

bb18:                                             ; preds = %bb16
  ret i32 %r312

bb19:                                             ; preds = %bb16
  ret i32 %r314
}

define i32 @func5(i32 %r153) {
bb22:
  %r317 = add i32 0, 0
  %r318 = add i32 %r153, 0
  br label %bb21

bb21:                                             ; preds = %bb22
  %r319 = sub i32 0, %r318
  ret i32 %r319
}

define i32 @func6(i32 %r157, i32 %r159) {
bb24:
  %r322 = add i32 0, 0
  %r323 = add i32 %r157, 0
  %r324 = add i32 0, 0
  %r325 = add i32 %r159, 0
  br label %bb23

bb23:                                             ; preds = %bb24
  %r326 = icmp ne i32 %r323, 0
  br i1 %r326, label %bb28, label %bb26

bb28:                                             ; preds = %bb23
  %r327 = icmp ne i32 %r325, 0
  br i1 %r327, label %bb25, label %bb26

bb25:                                             ; preds = %bb28
  ret i32 1

bb26:                                             ; preds = %bb28, %bb23
  ret i32 0
}

define i32 @func7(i32 %r166) {
bb30:
  %r329 = add i32 0, 0
  %r330 = add i32 %r166, 0
  br label %bb29

bb29:                                             ; preds = %bb30
  %r331 = icmp ne i32 %r330, 0
  br i1 %r331, label %bb31, label %bb32

bb31:                                             ; preds = %bb29
  ret i32 1

bb32:                                             ; preds = %bb29
  ret i32 0
}

define i32 @main() {
bb34:
  %r338 = add i32 0, 0
  call void @_sysy_starttime(i32 97)
  %r339 = call i32 @getint()
  %r340 = add i32 0, 0
  %r341 = add i32 %r339, 0
  %r342 = call i32 @getint()
  %r343 = add i32 0, 0
  %r344 = add i32 %r342, 0
  %r345 = call i32 @getint()
  %r346 = add i32 0, 0
  %r347 = add i32 %r345, 0
  %r348 = call i32 @getint()
  %r349 = add i32 0, 0
  %r350 = add i32 %r348, 0
  %r178 = alloca [10 x i32], align 4
  %r351 = add i32 0, 0
  %r352 = add i32 0, 0
  br label %bb35

bb35:                                             ; preds = %bb36, %bb34
  %r353 = phi i32 [ %r352, %bb34 ], [ %r392, %bb36 ]
  %r354 = icmp slt i32 %r353, 10
  br i1 %r354, label %bb36, label %bb37

bb36:                                             ; preds = %bb35
  %r390 = call i32 @getint()
  %r184 = getelementptr [10 x i32], ptr %r178, i32 0, i32 %r353
  store i32 %r390, ptr %r184, align 4
  %r391 = add i32 %r353, 1
  %r392 = add i32 %r391, 0
  br label %bb35

bb37:                                             ; preds = %bb35
  %r355 = call i32 @func7(i32 %r341)
  %r356 = call i32 @func5(i32 %r344)
  %r357 = call i32 @func6(i32 %r355, i32 %r356)
  %r358 = call i32 @func2(i32 %r357, i32 %r347)
  %r359 = call i32 @func3(i32 %r358, i32 %r350)
  %r360 = call i32 @func5(i32 %r359)
  %r198 = getelementptr [10 x i32], ptr %r178, i32 0, i32 0
  %r199 = load i32, ptr %r198, align 4
  %r200 = getelementptr [10 x i32], ptr %r178, i32 0, i32 1
  %r201 = load i32, ptr %r200, align 4
  %r361 = call i32 @func5(i32 %r201)
  %r203 = getelementptr [10 x i32], ptr %r178, i32 0, i32 2
  %r204 = load i32, ptr %r203, align 4
  %r205 = getelementptr [10 x i32], ptr %r178, i32 0, i32 3
  %r206 = load i32, ptr %r205, align 4
  %r362 = call i32 @func7(i32 %r206)
  %r363 = call i32 @func6(i32 %r204, i32 %r362)
  %r209 = getelementptr [10 x i32], ptr %r178, i32 0, i32 4
  %r210 = load i32, ptr %r209, align 4
  %r211 = getelementptr [10 x i32], ptr %r178, i32 0, i32 5
  %r212 = load i32, ptr %r211, align 4
  %r364 = call i32 @func7(i32 %r212)
  %r365 = call i32 @func2(i32 %r210, i32 %r364)
  %r366 = call i32 @func4(i32 %r361, i32 %r363, i32 %r365)
  %r216 = getelementptr [10 x i32], ptr %r178, i32 0, i32 6
  %r217 = load i32, ptr %r216, align 4
  %r367 = call i32 @func3(i32 %r366, i32 %r217)
  %r219 = getelementptr [10 x i32], ptr %r178, i32 0, i32 7
  %r220 = load i32, ptr %r219, align 4
  %r368 = call i32 @func2(i32 %r367, i32 %r220)
  %r222 = getelementptr [10 x i32], ptr %r178, i32 0, i32 8
  %r223 = load i32, ptr %r222, align 4
  %r224 = getelementptr [10 x i32], ptr %r178, i32 0, i32 9
  %r225 = load i32, ptr %r224, align 4
  %r369 = call i32 @func7(i32 %r225)
  %r370 = call i32 @func3(i32 %r223, i32 %r369)
  %r371 = call i32 @func1(i32 %r368, i32 %r370, i32 %r341)
  %r372 = call i32 @func4(i32 %r360, i32 %r199, i32 %r371)
  %r373 = call i32 @func7(i32 %r347)
  %r374 = call i32 @func3(i32 %r373, i32 %r350)
  %r375 = call i32 @func2(i32 %r344, i32 %r374)
  %r376 = call i32 @func3(i32 %r372, i32 %r375)
  %r238 = getelementptr [10 x i32], ptr %r178, i32 0, i32 0
  %r239 = load i32, ptr %r238, align 4
  %r240 = getelementptr [10 x i32], ptr %r178, i32 0, i32 1
  %r241 = load i32, ptr %r240, align 4
  %r377 = call i32 @func1(i32 %r376, i32 %r239, i32 %r241)
  %r243 = getelementptr [10 x i32], ptr %r178, i32 0, i32 2
  %r244 = load i32, ptr %r243, align 4
  %r378 = call i32 @func2(i32 %r377, i32 %r244)
  %r246 = getelementptr [10 x i32], ptr %r178, i32 0, i32 3
  %r247 = load i32, ptr %r246, align 4
  %r248 = getelementptr [10 x i32], ptr %r178, i32 0, i32 4
  %r249 = load i32, ptr %r248, align 4
  %r250 = getelementptr [10 x i32], ptr %r178, i32 0, i32 5
  %r251 = load i32, ptr %r250, align 4
  %r379 = call i32 @func5(i32 %r251)
  %r380 = call i32 @func3(i32 %r249, i32 %r379)
  %r254 = getelementptr [10 x i32], ptr %r178, i32 0, i32 6
  %r255 = load i32, ptr %r254, align 4
  %r381 = call i32 @func5(i32 %r255)
  %r382 = call i32 @func2(i32 %r380, i32 %r381)
  %r258 = getelementptr [10 x i32], ptr %r178, i32 0, i32 7
  %r259 = load i32, ptr %r258, align 4
  %r260 = getelementptr [10 x i32], ptr %r178, i32 0, i32 8
  %r261 = load i32, ptr %r260, align 4
  %r383 = call i32 @func7(i32 %r261)
  %r384 = call i32 @func1(i32 %r382, i32 %r259, i32 %r383)
  %r264 = getelementptr [10 x i32], ptr %r178, i32 0, i32 9
  %r265 = load i32, ptr %r264, align 4
  %r385 = call i32 @func5(i32 %r265)
  %r386 = call i32 @func2(i32 %r384, i32 %r385)
  %r387 = call i32 @func3(i32 %r386, i32 %r341)
  %r388 = call i32 @func1(i32 %r378, i32 %r247, i32 %r387)
  %r389 = add i32 %r388, 0
  call void @_sysy_stoptime(i32 117)
  ret i32 %r389
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
