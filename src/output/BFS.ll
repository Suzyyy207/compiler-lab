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
@que = global [1005 x i32] zeroinitializer
@h = global i32 0
@tail = global i32 0
@inq = global [1005 x i32] zeroinitializer
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
  %r263 = call i32 @getch()
  %r264 = add i32 0, 0
  %r265 = add i32 %r263, 0
  %r266 = add i32 0, 0
  %r267 = add i32 0, 0
  %r268 = add i32 0, 0
  %r269 = add i32 0, 0
  br label %bb2

bb2:                                              ; preds = %bb8, %bb1
  %r270 = phi i32 [ %r265, %bb1 ], [ %r276, %bb8 ]
  %r271 = phi i32 [ %r269, %bb1 ], [ %r274, %bb8 ]
  %r272 = icmp slt i32 %r270, 48
  br i1 %r272, label %bb3, label %bb5

bb5:                                              ; preds = %bb2
  %r278 = icmp sgt i32 %r270, 57
  br i1 %r278, label %bb3, label %bb4

bb3:                                              ; preds = %bb5, %bb2
  %r273 = icmp eq i32 %r270, 45
  br i1 %r273, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  %r277 = add i32 1, 0
  br label %bb8

bb7:                                              ; preds = %bb3
  br label %bb8

bb8:                                              ; preds = %bb7, %bb6
  %r274 = phi i32 [ %r277, %bb6 ], [ %r271, %bb7 ]
  %r275 = call i32 @getch()
  %r276 = add i32 %r275, 0
  br label %bb2

bb4:                                              ; preds = %bb5
  br label %bb9

bb9:                                              ; preds = %bb10, %bb4
  %r279 = phi i32 [ %r267, %bb4 ], [ %r288, %bb10 ]
  %r280 = phi i32 [ %r270, %bb4 ], [ %r290, %bb10 ]
  %r281 = icmp sge i32 %r280, 48
  br i1 %r281, label %bb12, label %bb11

bb12:                                             ; preds = %bb9
  %r284 = icmp sle i32 %r280, 57
  br i1 %r284, label %bb10, label %bb11

bb10:                                             ; preds = %bb12
  %r285 = mul i32 %r279, 10
  %r286 = add i32 %r285, %r280
  %r287 = sub i32 %r286, 48
  %r288 = add i32 %r287, 0
  %r289 = call i32 @getch()
  %r290 = add i32 %r289, 0
  br label %bb9

bb11:                                             ; preds = %bb12, %bb9
  %r282 = icmp ne i32 %r271, 0
  br i1 %r282, label %bb13, label %bb14

bb13:                                             ; preds = %bb11
  %r283 = sub i32 0, %r279
  ret i32 %r283

bb14:                                             ; preds = %bb11
  ret i32 %r279
}

define void @addedge(i32 %r128, i32 %r130) {
bb17:
  %r293 = add i32 0, 0
  %r294 = add i32 %r128, 0
  %r295 = add i32 0, 0
  %r296 = add i32 %r130, 0
  br label %bb16

bb16:                                             ; preds = %bb17
  %r133 = load i32, ptr @cnt, align 4
  %r134 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r133
  store i32 %r296, ptr %r134, align 4
  %r136 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r294
  %r137 = load i32, ptr %r136, align 4
  %r138 = load i32, ptr @cnt, align 4
  %r139 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r138
  store i32 %r137, ptr %r139, align 4
  %r140 = load i32, ptr @cnt, align 4
  %r142 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r294
  store i32 %r140, ptr %r142, align 4
  %r143 = load i32, ptr @cnt, align 4
  %r297 = add i32 %r143, 1
  store i32 %r297, ptr @cnt, align 4
  %r146 = load i32, ptr @cnt, align 4
  %r147 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r146
  store i32 %r294, ptr %r147, align 4
  %r149 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r296
  %r150 = load i32, ptr %r149, align 4
  %r151 = load i32, ptr @cnt, align 4
  %r152 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r151
  store i32 %r150, ptr %r152, align 4
  %r153 = load i32, ptr @cnt, align 4
  %r155 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r296
  store i32 %r153, ptr %r155, align 4
  %r156 = load i32, ptr @cnt, align 4
  %r298 = add i32 %r156, 1
  store i32 %r298, ptr @cnt, align 4
  ret void
}

define void @init() {
bb18:
  %r300 = add i32 0, 0
  %r301 = add i32 0, 0
  br label %bb19

bb19:                                             ; preds = %bb20, %bb18
  %r302 = phi i32 [ %r301, %bb18 ], [ %r306, %bb20 ]
  %r303 = icmp slt i32 %r302, 1005
  br i1 %r303, label %bb20, label %bb21

bb20:                                             ; preds = %bb19
  %r304 = sub i32 0, 1
  %r163 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r302
  store i32 %r304, ptr %r163, align 4
  %r305 = add i32 %r302, 1
  %r306 = add i32 %r305, 0
  br label %bb19

bb21:                                             ; preds = %bb19
  ret void
}

define void @inqueue(i32 %r166) {
bb23:
  %r308 = add i32 0, 0
  %r309 = add i32 %r166, 0
  br label %bb22

bb22:                                             ; preds = %bb23
  %r169 = getelementptr [1005 x i32], ptr @inq, i32 0, i32 %r309
  store i32 1, ptr %r169, align 4
  %r170 = load i32, ptr @tail, align 4
  %r310 = add i32 %r170, 1
  store i32 %r310, ptr @tail, align 4
  %r173 = load i32, ptr @tail, align 4
  %r174 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r173
  store i32 %r309, ptr %r174, align 4
  ret void
}

define i32 @popqueue() {
bb24:
  %r175 = load i32, ptr @h, align 4
  %r312 = add i32 %r175, 1
  store i32 %r312, ptr @h, align 4
  %r178 = load i32, ptr @h, align 4
  %r179 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r178
  %r180 = load i32, ptr %r179, align 4
  %r313 = add i32 0, 0
  %r314 = add i32 %r180, 0
  %r181 = load i32, ptr @h, align 4
  %r182 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r181
  %r183 = load i32, ptr %r182, align 4
  ret i32 %r183
}

define i32 @same(i32 %r184, i32 %r186) {
bb26:
  %r321 = add i32 0, 0
  %r322 = add i32 0, 0
  %r323 = add i32 0, 0
  %r324 = add i32 0, 0
  %r325 = add i32 0, 0
  %r326 = add i32 %r184, 0
  %r327 = add i32 0, 0
  %r328 = add i32 %r186, 0
  br label %bb25

bb25:                                             ; preds = %bb26
  store i32 0, ptr @h, align 4
  store i32 0, ptr @tail, align 4
  call void @inqueue(i32 %r326)
  %r329 = add i32 0, 0
  %r330 = add i32 0, 0
  %r331 = add i32 0, 0
  %r332 = add i32 0, 0
  br label %bb27

bb27:                                             ; preds = %bb35, %bb25
  %r333 = phi i32 [ %r329, %bb25 ], [ %r344, %bb35 ]
  %r194 = load i32, ptr @h, align 4
  %r195 = load i32, ptr @tail, align 4
  %r334 = icmp slt i32 %r194, %r195
  br i1 %r334, label %bb28, label %bb29

bb28:                                             ; preds = %bb27
  %r341 = call i32 @popqueue()
  %r342 = add i32 %r341, 0
  %r343 = icmp eq i32 %r342, %r328
  br i1 %r343, label %bb30, label %bb31

bb30:                                             ; preds = %bb28
  %r352 = add i32 1, 0
  br label %bb32

bb31:                                             ; preds = %bb28
  br label %bb32

bb32:                                             ; preds = %bb31, %bb30
  %r344 = phi i32 [ %r352, %bb30 ], [ %r333, %bb31 ]
  %r202 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r342
  %r203 = load i32, ptr %r202, align 4
  %r345 = add i32 %r203, 0
  br label %bb33

bb33:                                             ; preds = %bb38, %bb32
  %r346 = phi i32 [ %r345, %bb32 ], [ %r351, %bb38 ]
  %r347 = sub i32 0, 1
  %r348 = icmp ne i32 %r346, %r347
  br i1 %r348, label %bb34, label %bb35

bb34:                                             ; preds = %bb33
  %r208 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r346
  %r209 = load i32, ptr %r208, align 4
  %r349 = add i32 %r209, 0
  %r211 = getelementptr [1005 x i32], ptr @inq, i32 0, i32 %r349
  %r212 = load i32, ptr %r211, align 4
  %r350 = icmp eq i32 %r212, 0
  br i1 %r350, label %bb36, label %bb37

bb36:                                             ; preds = %bb34
  %r215 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r346
  %r216 = load i32, ptr %r215, align 4
  call void @inqueue(i32 %r216)
  br label %bb38

bb37:                                             ; preds = %bb34
  br label %bb38

bb38:                                             ; preds = %bb37, %bb36
  %r218 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r346
  %r219 = load i32, ptr %r218, align 4
  %r351 = add i32 %r219, 0
  br label %bb33

bb35:                                             ; preds = %bb33
  br label %bb27

bb29:                                             ; preds = %bb27
  %r335 = add i32 0, 0
  br label %bb39

bb39:                                             ; preds = %bb40, %bb29
  %r336 = phi i32 [ %r335, %bb29 ], [ %r340, %bb40 ]
  %r221 = load i32, ptr @tail, align 4
  %r337 = icmp sle i32 %r336, %r221
  br i1 %r337, label %bb40, label %bb41

bb40:                                             ; preds = %bb39
  %r224 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r336
  %r225 = load i32, ptr %r224, align 4
  %r338 = add i32 %r225, 0
  %r227 = getelementptr [1005 x i32], ptr @inq, i32 0, i32 %r338
  store i32 0, ptr %r227, align 4
  %r339 = add i32 %r336, 1
  %r340 = add i32 %r339, 0
  br label %bb39

bb41:                                             ; preds = %bb39
  ret i32 %r333
}

define i32 @main() {
bb42:
  %r356 = call i32 @quickread()
  store i32 %r356, ptr @n, align 4
  %r357 = call i32 @quickread()
  store i32 %r357, ptr @m, align 4
  call void @_sysy_starttime(i32 97)
  call void @init()
  %r358 = add i32 0, 0
  %r359 = add i32 0, 0
  %r360 = add i32 0, 0
  %r361 = add i32 0, 0
  %r362 = add i32 0, 0
  %r363 = add i32 0, 0
  br label %bb43

bb43:                                             ; preds = %bb52, %bb42
  %r236 = load i32, ptr @m, align 4
  %r364 = icmp ne i32 %r236, 0
  br i1 %r364, label %bb44, label %bb45

bb44:                                             ; preds = %bb43
  %r365 = call i32 @getch()
  %r366 = add i32 %r365, 0
  br label %bb46

bb46:                                             ; preds = %bb47, %bb44
  %r367 = phi i32 [ %r366, %bb44 ], [ %r382, %bb47 ]
  %r368 = icmp ne i32 %r367, 81
  br i1 %r368, label %bb49, label %bb48

bb49:                                             ; preds = %bb46
  %r380 = icmp ne i32 %r367, 85
  br i1 %r380, label %bb47, label %bb48

bb47:                                             ; preds = %bb49
  %r381 = call i32 @getch()
  %r382 = add i32 %r381, 0
  br label %bb46

bb48:                                             ; preds = %bb49, %bb46
  %r369 = icmp eq i32 %r367, 81
  br i1 %r369, label %bb50, label %bb51

bb50:                                             ; preds = %bb48
  %r375 = call i32 @quickread()
  %r376 = add i32 %r375, 0
  %r377 = call i32 @quickread()
  %r378 = add i32 %r377, 0
  %r379 = call i32 @same(i32 %r376, i32 %r378)
  call void @putint(i32 %r379)
  call void @putch(i32 10)
  br label %bb52

bb51:                                             ; preds = %bb48
  %r371 = call i32 @quickread()
  %r372 = add i32 %r371, 0
  %r373 = call i32 @quickread()
  %r374 = add i32 %r373, 0
  call void @addedge(i32 %r372, i32 %r374)
  br label %bb52

bb52:                                             ; preds = %bb51, %bb50
  %r258 = load i32, ptr @m, align 4
  %r370 = sub i32 %r258, 1
  store i32 %r370, ptr @m, align 4
  br label %bb43

bb45:                                             ; preds = %bb43
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
