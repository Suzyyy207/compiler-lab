; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.timeval = type { i64, i32 }

@len = global i32 20
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

define i32 @main() {
bb1:
  %r261 = add i32 0, 0
  call void @_sysy_starttime(i32 97)
  %r262 = add i32 0, 0
  %r263 = add i32 0, 0
  %r264 = add i32 0, 0
  %r265 = add i32 0, 0
  %r266 = add i32 0, 0
  %r105 = alloca [20 x i32], align 4
  %r106 = getelementptr [20 x i32], ptr %r105, i32 0, i32 0
  store i32 1, ptr %r106, align 4
  %r107 = getelementptr [20 x i32], ptr %r105, i32 0, i32 1
  store i32 2, ptr %r107, align 4
  %r108 = getelementptr [20 x i32], ptr %r105, i32 0, i32 2
  store i32 3, ptr %r108, align 4
  %r109 = getelementptr [20 x i32], ptr %r105, i32 0, i32 3
  store i32 4, ptr %r109, align 4
  %r110 = getelementptr [20 x i32], ptr %r105, i32 0, i32 4
  store i32 5, ptr %r110, align 4
  %r111 = getelementptr [20 x i32], ptr %r105, i32 0, i32 5
  store i32 6, ptr %r111, align 4
  %r112 = getelementptr [20 x i32], ptr %r105, i32 0, i32 6
  store i32 7, ptr %r112, align 4
  %r113 = getelementptr [20 x i32], ptr %r105, i32 0, i32 7
  store i32 8, ptr %r113, align 4
  %r114 = getelementptr [20 x i32], ptr %r105, i32 0, i32 8
  store i32 9, ptr %r114, align 4
  %r115 = getelementptr [20 x i32], ptr %r105, i32 0, i32 9
  store i32 0, ptr %r115, align 4
  %r116 = getelementptr [20 x i32], ptr %r105, i32 0, i32 10
  store i32 1, ptr %r116, align 4
  %r117 = getelementptr [20 x i32], ptr %r105, i32 0, i32 11
  store i32 2, ptr %r117, align 4
  %r118 = getelementptr [20 x i32], ptr %r105, i32 0, i32 12
  store i32 3, ptr %r118, align 4
  %r119 = getelementptr [20 x i32], ptr %r105, i32 0, i32 13
  store i32 4, ptr %r119, align 4
  %r120 = getelementptr [20 x i32], ptr %r105, i32 0, i32 14
  store i32 5, ptr %r120, align 4
  %r121 = getelementptr [20 x i32], ptr %r105, i32 0, i32 15
  store i32 6, ptr %r121, align 4
  %r122 = getelementptr [20 x i32], ptr %r105, i32 0, i32 16
  store i32 7, ptr %r122, align 4
  %r123 = getelementptr [20 x i32], ptr %r105, i32 0, i32 17
  store i32 8, ptr %r123, align 4
  %r124 = getelementptr [20 x i32], ptr %r105, i32 0, i32 18
  store i32 9, ptr %r124, align 4
  %r125 = getelementptr [20 x i32], ptr %r105, i32 0, i32 19
  store i32 0, ptr %r125, align 4
  %r126 = alloca [20 x i32], align 4
  %r127 = getelementptr [20 x i32], ptr %r126, i32 0, i32 0
  store i32 2, ptr %r127, align 4
  %r128 = getelementptr [20 x i32], ptr %r126, i32 0, i32 1
  store i32 3, ptr %r128, align 4
  %r129 = getelementptr [20 x i32], ptr %r126, i32 0, i32 2
  store i32 4, ptr %r129, align 4
  %r130 = getelementptr [20 x i32], ptr %r126, i32 0, i32 3
  store i32 2, ptr %r130, align 4
  %r131 = getelementptr [20 x i32], ptr %r126, i32 0, i32 4
  store i32 5, ptr %r131, align 4
  %r132 = getelementptr [20 x i32], ptr %r126, i32 0, i32 5
  store i32 7, ptr %r132, align 4
  %r133 = getelementptr [20 x i32], ptr %r126, i32 0, i32 6
  store i32 9, ptr %r133, align 4
  %r134 = getelementptr [20 x i32], ptr %r126, i32 0, i32 7
  store i32 9, ptr %r134, align 4
  %r135 = getelementptr [20 x i32], ptr %r126, i32 0, i32 8
  store i32 0, ptr %r135, align 4
  %r136 = getelementptr [20 x i32], ptr %r126, i32 0, i32 9
  store i32 1, ptr %r136, align 4
  %r137 = getelementptr [20 x i32], ptr %r126, i32 0, i32 10
  store i32 9, ptr %r137, align 4
  %r138 = getelementptr [20 x i32], ptr %r126, i32 0, i32 11
  store i32 8, ptr %r138, align 4
  %r139 = getelementptr [20 x i32], ptr %r126, i32 0, i32 12
  store i32 7, ptr %r139, align 4
  %r140 = getelementptr [20 x i32], ptr %r126, i32 0, i32 13
  store i32 6, ptr %r140, align 4
  %r141 = getelementptr [20 x i32], ptr %r126, i32 0, i32 14
  store i32 4, ptr %r141, align 4
  %r142 = getelementptr [20 x i32], ptr %r126, i32 0, i32 15
  store i32 3, ptr %r142, align 4
  %r143 = getelementptr [20 x i32], ptr %r126, i32 0, i32 16
  store i32 2, ptr %r143, align 4
  %r144 = getelementptr [20 x i32], ptr %r126, i32 0, i32 17
  store i32 1, ptr %r144, align 4
  %r145 = getelementptr [20 x i32], ptr %r126, i32 0, i32 18
  store i32 2, ptr %r145, align 4
  %r146 = getelementptr [20 x i32], ptr %r126, i32 0, i32 19
  store i32 2, ptr %r146, align 4
  %r148 = load i32, ptr @len, align 4
  %r267 = add i32 0, 0
  %r268 = add i32 %r148, 0
  %r150 = load i32, ptr @len, align 4
  %r269 = add i32 0, 0
  %r270 = add i32 %r150, 0
  %r151 = alloca [25 x i32], align 4
  %r152 = alloca [25 x i32], align 4
  %r153 = alloca [40 x i32], align 4
  %r154 = getelementptr [40 x i32], ptr %r153, i32 0, i32 0
  store i32 0, ptr %r154, align 4
  %r271 = add i32 0, 0
  br label %bb2

bb2:                                              ; preds = %bb3, %bb1
  %r272 = phi i32 [ %r271, %bb1 ], [ %r327, %bb3 ]
  %r273 = icmp slt i32 %r272, %r268
  br i1 %r273, label %bb3, label %bb4

bb3:                                              ; preds = %bb2
  %r159 = getelementptr [20 x i32], ptr %r105, i32 0, i32 %r272
  %r160 = load i32, ptr %r159, align 4
  %r162 = getelementptr [25 x i32], ptr %r151, i32 0, i32 %r272
  store i32 %r160, ptr %r162, align 4
  %r326 = add i32 %r272, 1
  %r327 = add i32 %r326, 0
  br label %bb2

bb4:                                              ; preds = %bb2
  %r274 = add i32 0, 0
  br label %bb5

bb5:                                              ; preds = %bb6, %bb4
  %r275 = phi i32 [ %r274, %bb4 ], [ %r325, %bb6 ]
  %r276 = icmp slt i32 %r275, %r270
  br i1 %r276, label %bb6, label %bb7

bb6:                                              ; preds = %bb5
  %r169 = getelementptr [20 x i32], ptr %r126, i32 0, i32 %r275
  %r170 = load i32, ptr %r169, align 4
  %r172 = getelementptr [25 x i32], ptr %r152, i32 0, i32 %r275
  store i32 %r170, ptr %r172, align 4
  %r324 = add i32 %r275, 1
  %r325 = add i32 %r324, 0
  br label %bb5

bb7:                                              ; preds = %bb5
  %r277 = add i32 %r268, %r270
  %r278 = sub i32 %r277, 1
  %r279 = add i32 %r278, 0
  %r280 = add i32 0, 0
  br label %bb8

bb8:                                              ; preds = %bb9, %bb7
  %r281 = phi i32 [ %r280, %bb7 ], [ %r323, %bb9 ]
  %r282 = icmp sle i32 %r281, %r279
  br i1 %r282, label %bb9, label %bb10

bb9:                                              ; preds = %bb8
  %r183 = getelementptr [40 x i32], ptr %r153, i32 0, i32 %r281
  store i32 0, ptr %r183, align 4
  %r322 = add i32 %r281, 1
  %r323 = add i32 %r322, 0
  br label %bb8

bb10:                                             ; preds = %bb8
  %r283 = add i32 0, 0
  %r284 = sub i32 %r270, 1
  %r285 = add i32 %r284, 0
  br label %bb11

bb11:                                             ; preds = %bb16, %bb10
  %r286 = phi i32 [ %r279, %bb10 ], [ %r307, %bb16 ]
  %r287 = phi i32 [ %r285, %bb10 ], [ %r309, %bb16 ]
  %r288 = sub i32 0, 1
  %r289 = icmp sgt i32 %r287, %r288
  br i1 %r289, label %bb12, label %bb13

bb12:                                             ; preds = %bb11
  %r192 = getelementptr [25 x i32], ptr %r152, i32 0, i32 %r287
  %r193 = load i32, ptr %r192, align 4
  %r298 = add i32 %r193, 0
  %r299 = sub i32 %r268, 1
  %r300 = add i32 %r299, 0
  br label %bb14

bb14:                                             ; preds = %bb19, %bb12
  %r301 = phi i32 [ %r300, %bb12 ], [ %r315, %bb19 ]
  %r302 = phi i32 [ %r286, %bb12 ], [ %r317, %bb19 ]
  %r303 = sub i32 0, 1
  %r304 = icmp sgt i32 %r301, %r303
  br i1 %r304, label %bb15, label %bb16

bb15:                                             ; preds = %bb14
  %r200 = getelementptr [40 x i32], ptr %r153, i32 0, i32 %r302
  %r201 = load i32, ptr %r200, align 4
  %r204 = getelementptr [25 x i32], ptr %r151, i32 0, i32 %r301
  %r205 = load i32, ptr %r204, align 4
  %r310 = mul i32 %r298, %r205
  %r311 = add i32 %r201, %r310
  %r312 = add i32 %r311, 0
  %r313 = icmp sge i32 %r312, 10
  br i1 %r313, label %bb17, label %bb18

bb17:                                             ; preds = %bb15
  %r212 = getelementptr [40 x i32], ptr %r153, i32 0, i32 %r302
  store i32 %r312, ptr %r212, align 4
  %r318 = sub i32 %r302, 1
  %r319 = add i32 %r318, 0
  %r217 = getelementptr [40 x i32], ptr %r153, i32 0, i32 %r319
  %r218 = load i32, ptr %r217, align 4
  %r320 = sdiv i32 %r312, 10
  %r321 = add i32 %r218, %r320
  %r223 = getelementptr [40 x i32], ptr %r153, i32 0, i32 %r319
  store i32 %r321, ptr %r223, align 4
  br label %bb19

bb18:                                             ; preds = %bb15
  %r226 = getelementptr [40 x i32], ptr %r153, i32 0, i32 %r302
  store i32 %r312, ptr %r226, align 4
  br label %bb19

bb19:                                             ; preds = %bb18, %bb17
  %r314 = sub i32 %r301, 1
  %r315 = add i32 %r314, 0
  %r316 = sub i32 %r302, 1
  %r317 = add i32 %r316, 0
  br label %bb14

bb16:                                             ; preds = %bb14
  %r305 = add i32 %r302, %r268
  %r306 = sub i32 %r305, 1
  %r307 = add i32 %r306, 0
  %r308 = sub i32 %r287, 1
  %r309 = add i32 %r308, 0
  br label %bb11

bb13:                                             ; preds = %bb11
  %r237 = getelementptr [40 x i32], ptr %r153, i32 0, i32 0
  %r238 = load i32, ptr %r237, align 4
  %r290 = icmp ne i32 %r238, 0
  br i1 %r290, label %bb20, label %bb21

bb20:                                             ; preds = %bb13
  %r240 = getelementptr [40 x i32], ptr %r153, i32 0, i32 0
  %r241 = load i32, ptr %r240, align 4
  call void @putint(i32 %r241)
  br label %bb22

bb21:                                             ; preds = %bb13
  br label %bb22

bb22:                                             ; preds = %bb21, %bb20
  %r291 = add i32 1, 0
  br label %bb23

bb23:                                             ; preds = %bb24, %bb22
  %r292 = phi i32 [ %r291, %bb22 ], [ %r297, %bb24 ]
  %r293 = add i32 %r268, %r270
  %r294 = sub i32 %r293, 1
  %r295 = icmp sle i32 %r292, %r294
  br i1 %r295, label %bb24, label %bb25

bb24:                                             ; preds = %bb23
  %r249 = getelementptr [40 x i32], ptr %r153, i32 0, i32 %r292
  %r250 = load i32, ptr %r249, align 4
  call void @putint(i32 %r250)
  %r296 = add i32 %r292, 1
  %r297 = add i32 %r296, 0
  br label %bb23

bb25:                                             ; preds = %bb23
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
