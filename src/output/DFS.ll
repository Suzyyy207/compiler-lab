; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.timeval = type { i64, i32 }

@n = global i32 0
@m = global i32 0
@to = global [5005 x i32] zeroinitializer
@next = global [5005 x i32] zeroinitializer
@head = global [1005 x i32] zeroinitializer
@cnt = global i32 0
@vis = global [1005 x i32] zeroinitializer
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

define i32 @quickread() {
bb1:
  %r238 = call i32 @getch()
  %r239 = add i32 0, 0
  %r240 = add i32 %r238, 0
  %r241 = add i32 0, 0
  %r242 = add i32 0, 0
  %r243 = add i32 0, 0
  %r244 = add i32 0, 0
  br label %bb2

bb2:                                              ; preds = %bb8, %bb1
  %r245 = phi i32 [ %r240, %bb1 ], [ %r251, %bb8 ]
  %r246 = phi i32 [ %r244, %bb1 ], [ %r249, %bb8 ]
  %r247 = icmp slt i32 %r245, 48
  br i1 %r247, label %bb3, label %bb5

bb5:                                              ; preds = %bb2
  %r253 = icmp sgt i32 %r245, 57
  br i1 %r253, label %bb3, label %bb4

bb3:                                              ; preds = %bb5, %bb2
  %r248 = icmp eq i32 %r245, 45
  br i1 %r248, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %r252 = add i32 1, 0
  br label %bb8

bb7:                                              ; preds = %bb3
  br label %bb8

bb8:                                              ; preds = %bb7, %bb6
  %r249 = phi i32 [ %r252, %bb6 ], [ %r246, %bb7 ]
  %r250 = call i32 @getch()
  %r251 = add i32 %r250, 0
  br label %bb2

bb4:                                              ; preds = %bb5
  br label %bb9

bb9:                                              ; preds = %bb10, %bb4
  %r254 = phi i32 [ %r242, %bb4 ], [ %r263, %bb10 ]
  %r255 = phi i32 [ %r245, %bb4 ], [ %r265, %bb10 ]
  %r256 = icmp sge i32 %r255, 48
  br i1 %r256, label %bb12, label %bb11

bb12:                                             ; preds = %bb9
  %r259 = icmp sle i32 %r255, 57
  br i1 %r259, label %bb10, label %bb11

bb10:                                             ; preds = %bb12
  %r260 = mul i32 %r254, 10
  %r261 = add i32 %r260, %r255
  %r262 = sub i32 %r261, 48
  %r263 = add i32 %r262, 0
  %r264 = call i32 @getch()
  %r265 = add i32 %r264, 0
  br label %bb9

bb11:                                             ; preds = %bb12, %bb9
  %r257 = icmp ne i32 %r246, 0
  br i1 %r257, label %bb13, label %bb14

bb13:                                             ; preds = %bb11
  %r258 = sub i32 0, %r254
  ret i32 %r258

bb14:                                             ; preds = %bb11
  ret i32 %r254
}

define void @addedge(i32 %r128, i32 %r130) {
bb17:
  %r268 = add i32 0, 0
  %r269 = add i32 %r128, 0
  %r270 = add i32 0, 0
  %r271 = add i32 %r130, 0
  br label %bb16

bb16:                                             ; preds = %bb17
  %r133 = load i32, ptr @cnt, align 4
  %r134 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r133
  store i32 %r271, ptr %r134, align 4
  %r136 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r269
  %r137 = load i32, ptr %r136, align 4
  %r138 = load i32, ptr @cnt, align 4
  %r139 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r138
  store i32 %r137, ptr %r139, align 4
  %r140 = load i32, ptr @cnt, align 4
  %r142 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r269
  store i32 %r140, ptr %r142, align 4
  %r143 = load i32, ptr @cnt, align 4
  %r272 = add i32 %r143, 1
  store i32 %r272, ptr @cnt, align 4
  %r146 = load i32, ptr @cnt, align 4
  %r147 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r146
  store i32 %r269, ptr %r147, align 4
  %r149 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r271
  %r150 = load i32, ptr %r149, align 4
  %r151 = load i32, ptr @cnt, align 4
  %r152 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r151
  store i32 %r150, ptr %r152, align 4
  %r153 = load i32, ptr @cnt, align 4
  %r155 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r271
  store i32 %r153, ptr %r155, align 4
  %r156 = load i32, ptr @cnt, align 4
  %r273 = add i32 %r156, 1
  store i32 %r273, ptr @cnt, align 4
  ret void
}

define void @init() {
bb18:
  %r275 = add i32 0, 0
  %r276 = add i32 0, 0
  br label %bb19

bb19:                                             ; preds = %bb20, %bb18
  %r277 = phi i32 [ %r276, %bb18 ], [ %r281, %bb20 ]
  %r278 = icmp slt i32 %r277, 1005
  br i1 %r278, label %bb20, label %bb21

bb20:                                             ; preds = %bb19
  %r279 = sub i32 0, 1
  %r163 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r277
  store i32 %r279, ptr %r163, align 4
  %r280 = add i32 %r277, 1
  %r281 = add i32 %r280, 0
  br label %bb19

bb21:                                             ; preds = %bb19
  ret void
}

define void @clear() {
bb22:
  %r283 = add i32 0, 0
  %r284 = add i32 1, 0
  br label %bb23

bb23:                                             ; preds = %bb24, %bb22
  %r285 = phi i32 [ %r284, %bb22 ], [ %r288, %bb24 ]
  %r168 = load i32, ptr @n, align 4
  %r286 = icmp sle i32 %r285, %r168
  br i1 %r286, label %bb24, label %bb25

bb24:                                             ; preds = %bb23
  %r171 = getelementptr [1005 x i32], ptr @vis, i32 0, i32 %r285
  store i32 0, ptr %r171, align 4
  %r287 = add i32 %r285, 1
  %r288 = add i32 %r287, 0
  br label %bb23

bb25:                                             ; preds = %bb23
  ret void
}

define i32 @same(i32 %r174, i32 %r176) {
bb27:
  %r293 = add i32 0, 0
  %r294 = add i32 0, 0
  %r295 = add i32 0, 0
  %r296 = add i32 %r174, 0
  %r297 = add i32 0, 0
  %r298 = add i32 %r176, 0
  br label %bb26

bb26:                                             ; preds = %bb27
  %r179 = getelementptr [1005 x i32], ptr @vis, i32 0, i32 %r296
  store i32 1, ptr %r179, align 4
  %r299 = icmp eq i32 %r296, %r298
  br i1 %r299, label %bb28, label %bb29

bb28:                                             ; preds = %bb26
  ret i32 1

bb29:                                             ; preds = %bb26
  br label %bb30

bb30:                                             ; preds = %bb29
  %r185 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r296
  %r186 = load i32, ptr %r185, align 4
  %r300 = add i32 %r186, 0
  br label %bb31

bb31:                                             ; preds = %bb36, %bb30
  %r301 = phi i32 [ %r300, %bb30 ], [ %r306, %bb36 ]
  %r302 = sub i32 0, 1
  %r303 = icmp ne i32 %r301, %r302
  br i1 %r303, label %bb32, label %bb33

bb32:                                             ; preds = %bb31
  %r192 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r301
  %r193 = load i32, ptr %r192, align 4
  %r304 = add i32 %r193, 0
  %r196 = getelementptr [1005 x i32], ptr @vis, i32 0, i32 %r304
  %r197 = load i32, ptr %r196, align 4
  %r305 = icmp eq i32 %r197, 0
  br i1 %r305, label %bb37, label %bb35

bb37:                                             ; preds = %bb32
  %r307 = call i32 @same(i32 %r304, i32 %r298)
  %r308 = icmp ne i32 %r307, 0
  br i1 %r308, label %bb34, label %bb35

bb34:                                             ; preds = %bb37
  ret i32 1

bb35:                                             ; preds = %bb37, %bb32
  br label %bb36

bb36:                                             ; preds = %bb35
  %r204 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r301
  %r205 = load i32, ptr %r204, align 4
  %r306 = add i32 %r205, 0
  br label %bb31

bb33:                                             ; preds = %bb31
  ret i32 0
}

define i32 @main() {
bb38:
  call void @_sysy_starttime(i32 74)
  %r312 = call i32 @quickread()
  store i32 %r312, ptr @n, align 4
  %r313 = call i32 @quickread()
  store i32 %r313, ptr @m, align 4
  call void @init()
  %r314 = add i32 0, 0
  %r315 = add i32 0, 0
  %r316 = add i32 0, 0
  %r317 = add i32 0, 0
  %r318 = add i32 0, 0
  %r319 = add i32 0, 0
  br label %bb39

bb39:                                             ; preds = %bb48, %bb38
  %r211 = load i32, ptr @m, align 4
  %r320 = icmp ne i32 %r211, 0
  br i1 %r320, label %bb40, label %bb41

bb40:                                             ; preds = %bb39
  %r321 = call i32 @getch()
  %r322 = add i32 %r321, 0
  br label %bb42

bb42:                                             ; preds = %bb43, %bb40
  %r323 = phi i32 [ %r322, %bb40 ], [ %r338, %bb43 ]
  %r324 = icmp ne i32 %r323, 81
  br i1 %r324, label %bb45, label %bb44

bb45:                                             ; preds = %bb42
  %r336 = icmp ne i32 %r323, 85
  br i1 %r336, label %bb43, label %bb44

bb43:                                             ; preds = %bb45
  %r337 = call i32 @getch()
  %r338 = add i32 %r337, 0
  br label %bb42

bb44:                                             ; preds = %bb45, %bb42
  %r325 = icmp eq i32 %r323, 81
  br i1 %r325, label %bb46, label %bb47

bb46:                                             ; preds = %bb44
  %r331 = call i32 @quickread()
  %r332 = add i32 %r331, 0
  %r333 = call i32 @quickread()
  %r334 = add i32 %r333, 0
  call void @clear()
  %r335 = call i32 @same(i32 %r332, i32 %r334)
  call void @putint(i32 %r335)
  call void @putch(i32 10)
  br label %bb48

bb47:                                             ; preds = %bb44
  %r327 = call i32 @quickread()
  %r328 = add i32 %r327, 0
  %r329 = call i32 @quickread()
  %r330 = add i32 %r329, 0
  call void @addedge(i32 %r328, i32 %r330)
  br label %bb48

bb48:                                             ; preds = %bb47, %bb46
  %r233 = load i32, ptr @m, align 4
  %r326 = sub i32 %r233, 1
  store i32 %r326, ptr @m, align 4
  br label %bb39

bb41:                                             ; preds = %bb39
  call void @_sysy_stoptime(i32 96)
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
