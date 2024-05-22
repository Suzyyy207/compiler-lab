; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%array2D = type { [16 x i32] }
%struct.timeval = type { i64, i32 }

@INF = global i32 65535
@e = global [16 x %array2D] zeroinitializer
@book = global [16 x i32] zeroinitializer
@dis = global [16 x i32] zeroinitializer
@n = global i32 0
@m = global i32 0
@v1 = global i32 0
@v2 = global i32 0
@w = global i32 0
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

define void @Dijkstra() {
bb1:
  %r243 = add i32 0, 0
  %r244 = add i32 0, 0
  %r245 = add i32 0, 0
  %r246 = add i32 0, 0
  %r247 = add i32 0, 0
  %r248 = add i32 1, 0
  br label %bb2

bb2:                                              ; preds = %bb3, %bb1
  %r249 = phi i32 [ %r248, %bb1 ], [ %r282, %bb3 ]
  %r102 = load i32, ptr @n, align 4
  %r250 = icmp sle i32 %r249, %r102
  br i1 %r250, label %bb3, label %bb4

bb3:                                              ; preds = %bb2
  %r105 = getelementptr [16 x %array2D], ptr @e, i32 0, i32 1
  %r106 = getelementptr %array2D, ptr %r105, i32 0, i32 0
  %r107 = getelementptr [16 x i32], ptr %r106, i32 0, i32 %r249
  %r108 = load i32, ptr %r107, align 4
  %r110 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r249
  store i32 %r108, ptr %r110, align 4
  %r112 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r249
  store i32 0, ptr %r112, align 4
  %r281 = add i32 %r249, 1
  %r282 = add i32 %r281, 0
  br label %bb2

bb4:                                              ; preds = %bb2
  %r115 = getelementptr [16 x i32], ptr @book, i32 0, i32 1
  store i32 1, ptr %r115, align 4
  %r251 = add i32 1, 0
  br label %bb5

bb5:                                              ; preds = %bb17, %bb4
  %r252 = phi i32 [ %r251, %bb4 ], [ %r266, %bb17 ]
  %r117 = load i32, ptr @n, align 4
  %r253 = sub i32 %r117, 1
  %r254 = icmp sle i32 %r252, %r253
  br i1 %r254, label %bb6, label %bb7

bb6:                                              ; preds = %bb5
  %r121 = load i32, ptr @INF, align 4
  %r255 = add i32 %r121, 0
  %r256 = add i32 0, 0
  %r257 = add i32 1, 0
  br label %bb8

bb8:                                              ; preds = %bb13, %bb6
  %r258 = phi i32 [ %r255, %bb6 ], [ %r274, %bb13 ]
  %r259 = phi i32 [ %r256, %bb6 ], [ %r275, %bb13 ]
  %r260 = phi i32 [ %r257, %bb6 ], [ %r277, %bb13 ]
  %r125 = load i32, ptr @n, align 4
  %r261 = icmp sle i32 %r260, %r125
  br i1 %r261, label %bb9, label %bb10

bb9:                                              ; preds = %bb8
  %r130 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r260
  %r131 = load i32, ptr %r130, align 4
  %r273 = icmp sgt i32 %r258, %r131
  br i1 %r273, label %bb14, label %bb12

bb14:                                             ; preds = %bb9
  %r134 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r260
  %r135 = load i32, ptr %r134, align 4
  %r278 = icmp eq i32 %r135, 0
  br i1 %r278, label %bb11, label %bb12

bb11:                                             ; preds = %bb14
  %r138 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r260
  %r139 = load i32, ptr %r138, align 4
  %r279 = add i32 %r139, 0
  %r280 = add i32 %r260, 0
  br label %bb13

bb12:                                             ; preds = %bb14, %bb9
  br label %bb13

bb13:                                             ; preds = %bb12, %bb11
  %r274 = phi i32 [ %r279, %bb11 ], [ %r258, %bb12 ]
  %r275 = phi i32 [ %r280, %bb11 ], [ %r259, %bb12 ]
  %r276 = add i32 %r260, 1
  %r277 = add i32 %r276, 0
  br label %bb8

bb10:                                             ; preds = %bb8
  %r144 = getelementptr [16 x i32], ptr @book, i32 0, i32 %r259
  store i32 1, ptr %r144, align 4
  %r262 = add i32 1, 0
  br label %bb15

bb15:                                             ; preds = %bb20, %bb10
  %r263 = phi i32 [ %r262, %bb10 ], [ %r269, %bb20 ]
  %r147 = load i32, ptr @n, align 4
  %r264 = icmp sle i32 %r263, %r147
  br i1 %r264, label %bb16, label %bb17

bb16:                                             ; preds = %bb15
  %r151 = getelementptr [16 x %array2D], ptr @e, i32 0, i32 %r259
  %r152 = getelementptr %array2D, ptr %r151, i32 0, i32 0
  %r153 = getelementptr [16 x i32], ptr %r152, i32 0, i32 %r263
  %r154 = load i32, ptr %r153, align 4
  %r155 = load i32, ptr @INF, align 4
  %r267 = icmp slt i32 %r154, %r155
  br i1 %r267, label %bb18, label %bb19

bb18:                                             ; preds = %bb16
  %r158 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r263
  %r159 = load i32, ptr %r158, align 4
  %r161 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r259
  %r162 = load i32, ptr %r161, align 4
  %r165 = getelementptr [16 x %array2D], ptr @e, i32 0, i32 %r259
  %r166 = getelementptr %array2D, ptr %r165, i32 0, i32 0
  %r167 = getelementptr [16 x i32], ptr %r166, i32 0, i32 %r263
  %r168 = load i32, ptr %r167, align 4
  %r270 = add i32 %r162, %r168
  %r271 = icmp sgt i32 %r159, %r270
  br i1 %r271, label %bb21, label %bb22

bb21:                                             ; preds = %bb18
  %r172 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r259
  %r173 = load i32, ptr %r172, align 4
  %r176 = getelementptr [16 x %array2D], ptr @e, i32 0, i32 %r259
  %r177 = getelementptr %array2D, ptr %r176, i32 0, i32 0
  %r178 = getelementptr [16 x i32], ptr %r177, i32 0, i32 %r263
  %r179 = load i32, ptr %r178, align 4
  %r272 = add i32 %r173, %r179
  %r182 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r263
  store i32 %r272, ptr %r182, align 4
  br label %bb23

bb22:                                             ; preds = %bb18
  br label %bb23

bb23:                                             ; preds = %bb22, %bb21
  br label %bb20

bb19:                                             ; preds = %bb16
  br label %bb20

bb20:                                             ; preds = %bb19, %bb23
  %r268 = add i32 %r263, 1
  %r269 = add i32 %r268, 0
  br label %bb15

bb17:                                             ; preds = %bb15
  %r265 = add i32 %r252, 1
  %r266 = add i32 %r265, 0
  br label %bb5

bb7:                                              ; preds = %bb5
  ret void
}

define i32 @main() {
bb24:
  %r287 = add i32 0, 0
  %r288 = add i32 0, 0
  %r289 = add i32 0, 0
  call void @_sysy_starttime(i32 53)
  %r290 = add i32 0, 0
  %r291 = call i32 @getint()
  store i32 %r291, ptr @n, align 4
  %r292 = call i32 @getint()
  store i32 %r292, ptr @m, align 4
  %r293 = add i32 1, 0
  br label %bb25

bb25:                                             ; preds = %bb30, %bb24
  %r294 = phi i32 [ %r293, %bb24 ], [ %r315, %bb30 ]
  %r191 = load i32, ptr @n, align 4
  %r295 = icmp sle i32 %r294, %r191
  br i1 %r295, label %bb26, label %bb27

bb26:                                             ; preds = %bb25
  %r311 = add i32 1, 0
  br label %bb28

bb28:                                             ; preds = %bb33, %bb26
  %r312 = phi i32 [ %r311, %bb26 ], [ %r318, %bb33 ]
  %r195 = load i32, ptr @n, align 4
  %r313 = icmp sle i32 %r312, %r195
  br i1 %r313, label %bb29, label %bb30

bb29:                                             ; preds = %bb28
  %r316 = icmp eq i32 %r294, %r312
  br i1 %r316, label %bb31, label %bb32

bb31:                                             ; preds = %bb29
  %r202 = getelementptr [16 x %array2D], ptr @e, i32 0, i32 %r294
  %r203 = getelementptr %array2D, ptr %r202, i32 0, i32 0
  %r204 = getelementptr [16 x i32], ptr %r203, i32 0, i32 %r312
  store i32 0, ptr %r204, align 4
  br label %bb33

bb32:                                             ; preds = %bb29
  %r205 = load i32, ptr @INF, align 4
  %r208 = getelementptr [16 x %array2D], ptr @e, i32 0, i32 %r294
  %r209 = getelementptr %array2D, ptr %r208, i32 0, i32 0
  %r210 = getelementptr [16 x i32], ptr %r209, i32 0, i32 %r312
  store i32 %r205, ptr %r210, align 4
  br label %bb33

bb33:                                             ; preds = %bb32, %bb31
  %r317 = add i32 %r312, 1
  %r318 = add i32 %r317, 0
  br label %bb28

bb30:                                             ; preds = %bb28
  %r314 = add i32 %r294, 1
  %r315 = add i32 %r314, 0
  br label %bb25

bb27:                                             ; preds = %bb25
  %r296 = add i32 1, 0
  br label %bb34

bb34:                                             ; preds = %bb35, %bb27
  %r297 = phi i32 [ %r296, %bb27 ], [ %r310, %bb35 ]
  %r216 = load i32, ptr @m, align 4
  %r298 = icmp sle i32 %r297, %r216
  br i1 %r298, label %bb35, label %bb36

bb35:                                             ; preds = %bb34
  %r304 = call i32 @getint()
  %r305 = add i32 %r304, 0
  %r306 = call i32 @getint()
  %r307 = add i32 %r306, 0
  %r308 = call i32 @getint()
  %r225 = getelementptr [16 x %array2D], ptr @e, i32 0, i32 %r305
  %r226 = getelementptr %array2D, ptr %r225, i32 0, i32 0
  %r227 = getelementptr [16 x i32], ptr %r226, i32 0, i32 %r307
  store i32 %r308, ptr %r227, align 4
  %r309 = add i32 %r297, 1
  %r310 = add i32 %r309, 0
  br label %bb34

bb36:                                             ; preds = %bb34
  call void @Dijkstra()
  %r299 = add i32 1, 0
  br label %bb37

bb37:                                             ; preds = %bb38, %bb36
  %r300 = phi i32 [ %r299, %bb36 ], [ %r303, %bb38 ]
  %r231 = load i32, ptr @n, align 4
  %r301 = icmp sle i32 %r300, %r231
  br i1 %r301, label %bb38, label %bb39

bb38:                                             ; preds = %bb37
  %r234 = getelementptr [16 x i32], ptr @dis, i32 0, i32 %r300
  %r235 = load i32, ptr %r234, align 4
  call void @putint(i32 %r235)
  call void @putch(i32 32)
  %r302 = add i32 %r300, 1
  %r303 = add i32 %r302, 0
  br label %bb37

bb39:                                             ; preds = %bb37
  call void @putch(i32 10)
  call void @_sysy_stoptime(i32 91)
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
