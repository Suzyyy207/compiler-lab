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
  %r101 = call i32 @getch()
  %r100 = alloca i32, align 4
  store i32 %r101, ptr %r100, align 4
  %r102 = alloca i32, align 4
  store i32 0, ptr %r102, align 4
  %r103 = alloca i32, align 4
  store i32 0, ptr %r103, align 4
  br label %bb2

bb2:                                              ; preds = %bb8, %bb1
  %r105 = load i32, ptr %r100, align 4
  %r106 = icmp slt i32 %r105, 48
  br i1 %r106, label %bb3, label %bb5

bb5:                                              ; preds = %bb2
  %r107 = load i32, ptr %r100, align 4
  %r108 = icmp sgt i32 %r107, 57
  br i1 %r108, label %bb3, label %bb4

bb3:                                              ; preds = %bb5, %bb2
  %r109 = load i32, ptr %r100, align 4
  %r110 = icmp eq i32 %r109, 45
  br i1 %r110, label %bb6, label %bb7

bb6:                                              ; preds = %bb3
  store i32 1, ptr %r103, align 4
  br label %bb8

bb7:                                              ; preds = %bb3
  br label %bb8

bb8:                                              ; preds = %bb7, %bb6
  %r111 = call i32 @getch()
  store i32 %r111, ptr %r100, align 4
  br label %bb2

bb4:                                              ; preds = %bb5
  br label %bb9

bb9:                                              ; preds = %bb10, %bb4
  %r113 = load i32, ptr %r100, align 4
  %r114 = icmp sge i32 %r113, 48
  br i1 %r114, label %bb12, label %bb11

bb12:                                             ; preds = %bb9
  %r115 = load i32, ptr %r100, align 4
  %r116 = icmp sle i32 %r115, 57
  br i1 %r116, label %bb10, label %bb11

bb10:                                             ; preds = %bb12
  %r117 = load i32, ptr %r102, align 4
  %r118 = mul i32 %r117, 10
  %r119 = load i32, ptr %r100, align 4
  %r120 = add i32 %r118, %r119
  %r121 = sub i32 %r120, 48
  store i32 %r121, ptr %r102, align 4
  %r122 = call i32 @getch()
  store i32 %r122, ptr %r100, align 4
  br label %bb9

bb11:                                             ; preds = %bb12, %bb9
  %r123 = load i32, ptr %r103, align 4
  %r124 = icmp ne i32 %r123, 0
  br i1 %r124, label %bb13, label %bb14

bb13:                                             ; preds = %bb11
  %r125 = load i32, ptr %r102, align 4
  %r126 = sub i32 0, %r125
  ret i32 %r126

0:                                                ; No predecessors!
  br label %bb15

bb14:                                             ; preds = %bb11
  %r127 = load i32, ptr %r102, align 4
  ret i32 %r127

1:                                                ; No predecessors!
  br label %bb15

bb15:                                             ; preds = %1, %0
  ret i32 0
}

define void @addedge(i32 %r128, i32 %r130) {
bb17:
  %r129 = alloca i32, align 4
  store i32 %r128, ptr %r129, align 4
  %r131 = alloca i32, align 4
  store i32 %r130, ptr %r131, align 4
  br label %bb16

bb16:                                             ; preds = %bb17
  %r132 = load i32, ptr %r131, align 4
  %r133 = load i32, ptr @cnt, align 4
  %r134 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r133
  store i32 %r132, ptr %r134, align 4
  %r135 = load i32, ptr %r129, align 4
  %r136 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r135
  %r137 = load i32, ptr %r136, align 4
  %r138 = load i32, ptr @cnt, align 4
  %r139 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r138
  store i32 %r137, ptr %r139, align 4
  %r140 = load i32, ptr @cnt, align 4
  %r141 = load i32, ptr %r129, align 4
  %r142 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r141
  store i32 %r140, ptr %r142, align 4
  %r143 = load i32, ptr @cnt, align 4
  %r144 = add i32 %r143, 1
  store i32 %r144, ptr @cnt, align 4
  %r145 = load i32, ptr %r129, align 4
  %r146 = load i32, ptr @cnt, align 4
  %r147 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r146
  store i32 %r145, ptr %r147, align 4
  %r148 = load i32, ptr %r131, align 4
  %r149 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r148
  %r150 = load i32, ptr %r149, align 4
  %r151 = load i32, ptr @cnt, align 4
  %r152 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r151
  store i32 %r150, ptr %r152, align 4
  %r153 = load i32, ptr @cnt, align 4
  %r154 = load i32, ptr %r131, align 4
  %r155 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r154
  store i32 %r153, ptr %r155, align 4
  %r156 = load i32, ptr @cnt, align 4
  %r157 = add i32 %r156, 1
  store i32 %r157, ptr @cnt, align 4
  ret void
}

define void @init() {
bb18:
  %r158 = alloca i32, align 4
  store i32 0, ptr %r158, align 4
  br label %bb19

bb19:                                             ; preds = %bb20, %bb18
  %r159 = load i32, ptr %r158, align 4
  %r160 = icmp slt i32 %r159, 1005
  br i1 %r160, label %bb20, label %bb21

bb20:                                             ; preds = %bb19
  %r161 = sub i32 0, 1
  %r162 = load i32, ptr %r158, align 4
  %r163 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r162
  store i32 %r161, ptr %r163, align 4
  %r164 = load i32, ptr %r158, align 4
  %r165 = add i32 %r164, 1
  store i32 %r165, ptr %r158, align 4
  br label %bb19

bb21:                                             ; preds = %bb19
  ret void
}

define void @inqueue(i32 %r166) {
bb23:
  %r167 = alloca i32, align 4
  store i32 %r166, ptr %r167, align 4
  br label %bb22

bb22:                                             ; preds = %bb23
  %r168 = load i32, ptr %r167, align 4
  %r169 = getelementptr [1005 x i32], ptr @inq, i32 0, i32 %r168
  store i32 1, ptr %r169, align 4
  %r170 = load i32, ptr @tail, align 4
  %r171 = add i32 %r170, 1
  store i32 %r171, ptr @tail, align 4
  %r172 = load i32, ptr %r167, align 4
  %r173 = load i32, ptr @tail, align 4
  %r174 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r173
  store i32 %r172, ptr %r174, align 4
  ret void
}

define i32 @popqueue() {
bb24:
  %r175 = load i32, ptr @h, align 4
  %r176 = add i32 %r175, 1
  store i32 %r176, ptr @h, align 4
  %r178 = load i32, ptr @h, align 4
  %r179 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r178
  %r180 = load i32, ptr %r179, align 4
  %r177 = alloca i32, align 4
  store i32 %r180, ptr %r177, align 4
  %r181 = load i32, ptr @h, align 4
  %r182 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r181
  %r183 = load i32, ptr %r182, align 4
  ret i32 %r183
}

define i32 @same(i32 %r184, i32 %r186) {
bb26:
  %r193 = alloca i32, align 4
  %r192 = alloca i32, align 4
  %r191 = alloca i32, align 4
  %r190 = alloca i32, align 4
  %r185 = alloca i32, align 4
  store i32 %r184, ptr %r185, align 4
  %r187 = alloca i32, align 4
  store i32 %r186, ptr %r187, align 4
  br label %bb25

bb25:                                             ; preds = %bb26
  store i32 0, ptr @h, align 4
  store i32 0, ptr @tail, align 4
  %r188 = load i32, ptr %r185, align 4
  %r189 = load i32, ptr %r185, align 4
  call void @inqueue(i32 %r189)
  store i32 0, ptr %r190, align 4
  store i32 0, ptr %r191, align 4
  store i32 0, ptr %r192, align 4
  store i32 0, ptr %r193, align 4
  br label %bb27

bb27:                                             ; preds = %bb35, %bb25
  %r194 = load i32, ptr @h, align 4
  %r195 = load i32, ptr @tail, align 4
  %r196 = icmp slt i32 %r194, %r195
  br i1 %r196, label %bb28, label %bb29

bb28:                                             ; preds = %bb27
  %r197 = call i32 @popqueue()
  store i32 %r197, ptr %r191, align 4
  %r198 = load i32, ptr %r191, align 4
  %r199 = load i32, ptr %r187, align 4
  %r200 = icmp eq i32 %r198, %r199
  br i1 %r200, label %bb30, label %bb31

bb30:                                             ; preds = %bb28
  store i32 1, ptr %r190, align 4
  br label %bb32

bb31:                                             ; preds = %bb28
  br label %bb32

bb32:                                             ; preds = %bb31, %bb30
  %r201 = load i32, ptr %r191, align 4
  %r202 = getelementptr [1005 x i32], ptr @head, i32 0, i32 %r201
  %r203 = load i32, ptr %r202, align 4
  store i32 %r203, ptr %r192, align 4
  br label %bb33

bb33:                                             ; preds = %bb38, %bb32
  %r204 = load i32, ptr %r192, align 4
  %r205 = sub i32 0, 1
  %r206 = icmp ne i32 %r204, %r205
  br i1 %r206, label %bb34, label %bb35

bb34:                                             ; preds = %bb33
  %r207 = load i32, ptr %r192, align 4
  %r208 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r207
  %r209 = load i32, ptr %r208, align 4
  store i32 %r209, ptr %r193, align 4
  %r210 = load i32, ptr %r193, align 4
  %r211 = getelementptr [1005 x i32], ptr @inq, i32 0, i32 %r210
  %r212 = load i32, ptr %r211, align 4
  %r213 = icmp eq i32 %r212, 0
  br i1 %r213, label %bb36, label %bb37

bb36:                                             ; preds = %bb34
  %r214 = load i32, ptr %r192, align 4
  %r215 = getelementptr [5005 x i32], ptr @to, i32 0, i32 %r214
  %r216 = load i32, ptr %r215, align 4
  call void @inqueue(i32 %r216)
  br label %bb38

bb37:                                             ; preds = %bb34
  br label %bb38

bb38:                                             ; preds = %bb37, %bb36
  %r217 = load i32, ptr %r192, align 4
  %r218 = getelementptr [5005 x i32], ptr @next, i32 0, i32 %r217
  %r219 = load i32, ptr %r218, align 4
  store i32 %r219, ptr %r192, align 4
  br label %bb33

bb35:                                             ; preds = %bb33
  br label %bb27

bb29:                                             ; preds = %bb27
  store i32 0, ptr %r192, align 4
  br label %bb39

bb39:                                             ; preds = %bb40, %bb29
  %r220 = load i32, ptr %r192, align 4
  %r221 = load i32, ptr @tail, align 4
  %r222 = icmp sle i32 %r220, %r221
  br i1 %r222, label %bb40, label %bb41

bb40:                                             ; preds = %bb39
  %r223 = load i32, ptr %r192, align 4
  %r224 = getelementptr [1005 x i32], ptr @que, i32 0, i32 %r223
  %r225 = load i32, ptr %r224, align 4
  store i32 %r225, ptr %r193, align 4
  %r226 = load i32, ptr %r193, align 4
  %r227 = getelementptr [1005 x i32], ptr @inq, i32 0, i32 %r226
  store i32 0, ptr %r227, align 4
  %r228 = load i32, ptr %r192, align 4
  %r229 = add i32 %r228, 1
  store i32 %r229, ptr %r192, align 4
  br label %bb39

bb41:                                             ; preds = %bb39
  %r230 = load i32, ptr %r190, align 4
  ret i32 %r230
}

define i32 @main() {
bb42:
  %r231 = call i32 @quickread()
  store i32 %r231, ptr @n, align 4
  %r232 = call i32 @quickread()
  store i32 %r232, ptr @m, align 4
  call void @init()
  %r233 = alloca i32, align 4
  store i32 0, ptr %r233, align 4
  %r234 = alloca i32, align 4
  store i32 0, ptr %r234, align 4
  %r235 = alloca i32, align 4
  store i32 0, ptr %r235, align 4
  br label %bb43

bb43:                                             ; preds = %bb52, %bb42
  %r236 = load i32, ptr @m, align 4
  %r237 = icmp ne i32 %r236, 0
  br i1 %r237, label %bb44, label %bb45

bb44:                                             ; preds = %bb43
  %r238 = call i32 @getch()
  store i32 %r238, ptr %r233, align 4
  br label %bb46

bb46:                                             ; preds = %bb47, %bb44
  %r240 = load i32, ptr %r233, align 4
  %r241 = icmp ne i32 %r240, 81
  br i1 %r241, label %bb49, label %bb48

bb49:                                             ; preds = %bb46
  %r242 = load i32, ptr %r233, align 4
  %r243 = icmp ne i32 %r242, 85
  br i1 %r243, label %bb47, label %bb48

bb47:                                             ; preds = %bb49
  %r244 = call i32 @getch()
  store i32 %r244, ptr %r233, align 4
  br label %bb46

bb48:                                             ; preds = %bb49, %bb46
  %r245 = load i32, ptr %r233, align 4
  %r246 = icmp eq i32 %r245, 81
  br i1 %r246, label %bb50, label %bb51

bb50:                                             ; preds = %bb48
  %r247 = call i32 @quickread()
  store i32 %r247, ptr %r234, align 4
  %r248 = call i32 @quickread()
  store i32 %r248, ptr %r235, align 4
  %r249 = load i32, ptr %r234, align 4
  %r250 = load i32, ptr %r235, align 4
  %r251 = call i32 @same(i32 %r249, i32 %r250)
  call void @putint(i32 %r251)
  call void @putch(i32 10)
  br label %bb52

bb51:                                             ; preds = %bb48
  %r252 = call i32 @quickread()
  store i32 %r252, ptr %r234, align 4
  %r253 = call i32 @quickread()
  store i32 %r253, ptr %r235, align 4
  %r254 = load i32, ptr %r234, align 4
  %r255 = load i32, ptr %r234, align 4
  %r256 = load i32, ptr %r235, align 4
  %r257 = load i32, ptr %r235, align 4
  call void @addedge(i32 %r255, i32 %r257)
  br label %bb52

bb52:                                             ; preds = %bb51, %bb50
  %r258 = load i32, ptr @m, align 4
  %r259 = sub i32 %r258, 1
  store i32 %r259, ptr @m, align 4
  br label %bb43

bb45:                                             ; preds = %bb43
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
