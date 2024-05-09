; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.timeval = type { i64, i32 }

@TOKEN_NUM = global i32 0
@TOKEN_OTHER = global i32 1
@last_char = global i32 32
@num = global i32 0
@other = global i32 0
@cur_token = global i32 0
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

define i32 @next_char() {
bb1:
  %r100 = call i32 @getch()
  store i32 %r100, ptr @last_char, align 4
  %r101 = load i32, ptr @last_char, align 4
  ret i32 %r101
}

define i32 @is_space(i32 %r102) {
bb3:
  %r103 = alloca i32, align 4
  store i32 %r102, ptr %r103, align 4
  br label %bb2

bb2:                                              ; preds = %bb3
  %r105 = load i32, ptr %r103, align 4
  %r106 = icmp eq i32 %r105, 32
  br i1 %r106, label %bb4, label %bb7

bb7:                                              ; preds = %bb2
  %r107 = load i32, ptr %r103, align 4
  %r108 = icmp eq i32 %r107, 10
  br i1 %r108, label %bb4, label %bb5

bb4:                                              ; preds = %bb7, %bb2
  ret i32 1

0:                                                ; No predecessors!
  br label %bb6

bb5:                                              ; preds = %bb7
  ret i32 0

1:                                                ; No predecessors!
  br label %bb6

bb6:                                              ; preds = %1, %0
  ret i32 0
}

define i32 @is_num(i32 %r109) {
bb9:
  %r110 = alloca i32, align 4
  store i32 %r109, ptr %r110, align 4
  br label %bb8

bb8:                                              ; preds = %bb9
  %r112 = load i32, ptr %r110, align 4
  %r113 = icmp sge i32 %r112, 48
  br i1 %r113, label %bb13, label %bb11

bb13:                                             ; preds = %bb8
  %r114 = load i32, ptr %r110, align 4
  %r115 = icmp sle i32 %r114, 57
  br i1 %r115, label %bb10, label %bb11

bb10:                                             ; preds = %bb13
  ret i32 1

0:                                                ; No predecessors!
  br label %bb12

bb11:                                             ; preds = %bb13, %bb8
  ret i32 0

1:                                                ; No predecessors!
  br label %bb12

bb12:                                             ; preds = %1, %0
  ret i32 0
}

define i32 @next_token() {
bb14:
  br label %bb15

bb15:                                             ; preds = %bb16, %bb14
  %r116 = load i32, ptr @last_char, align 4
  %r117 = call i32 @is_space(i32 %r116)
  %r118 = icmp ne i32 %r117, 0
  br i1 %r118, label %bb16, label %bb17

bb16:                                             ; preds = %bb15
  %r119 = call i32 @next_char()
  br label %bb15

bb17:                                             ; preds = %bb15
  %r120 = load i32, ptr @last_char, align 4
  %r121 = call i32 @is_num(i32 %r120)
  %r122 = icmp ne i32 %r121, 0
  br i1 %r122, label %bb18, label %bb19

bb18:                                             ; preds = %bb17
  %r123 = load i32, ptr @last_char, align 4
  %r124 = sub i32 %r123, 48
  store i32 %r124, ptr @num, align 4
  br label %bb21

bb21:                                             ; preds = %bb22, %bb18
  %r125 = call i32 @next_char()
  %r126 = call i32 @is_num(i32 %r125)
  %r127 = icmp ne i32 %r126, 0
  br i1 %r127, label %bb22, label %bb23

bb22:                                             ; preds = %bb21
  %r128 = load i32, ptr @num, align 4
  %r129 = mul i32 %r128, 10
  %r130 = load i32, ptr @last_char, align 4
  %r131 = add i32 %r129, %r130
  %r132 = sub i32 %r131, 48
  store i32 %r132, ptr @num, align 4
  br label %bb21

bb23:                                             ; preds = %bb21
  %r133 = load i32, ptr @TOKEN_NUM, align 4
  store i32 %r133, ptr @cur_token, align 4
  br label %bb20

bb19:                                             ; preds = %bb17
  %r134 = load i32, ptr @last_char, align 4
  store i32 %r134, ptr @other, align 4
  %r135 = call i32 @next_char()
  %r136 = load i32, ptr @TOKEN_OTHER, align 4
  store i32 %r136, ptr @cur_token, align 4
  br label %bb20

bb20:                                             ; preds = %bb19, %bb23
  %r137 = load i32, ptr @cur_token, align 4
  ret i32 %r137
}

define i32 @panic() {
bb24:
  call void @putch(i32 112)
  call void @putch(i32 97)
  call void @putch(i32 110)
  call void @putch(i32 105)
  call void @putch(i32 99)
  call void @putch(i32 33)
  call void @putch(i32 10)
  %r138 = sub i32 0, 1
  ret i32 %r138
}

define i32 @get_op_prec(i32 %r139) {
bb26:
  %r140 = alloca i32, align 4
  store i32 %r139, ptr %r140, align 4
  br label %bb25

bb25:                                             ; preds = %bb26
  %r142 = load i32, ptr %r140, align 4
  %r143 = icmp eq i32 %r142, 43
  br i1 %r143, label %bb27, label %bb30

bb30:                                             ; preds = %bb25
  %r144 = load i32, ptr %r140, align 4
  %r145 = icmp eq i32 %r144, 45
  br i1 %r145, label %bb27, label %bb28

bb27:                                             ; preds = %bb30, %bb25
  ret i32 10

0:                                                ; No predecessors!
  br label %bb29

bb28:                                             ; preds = %bb30
  br label %bb29

bb29:                                             ; preds = %bb28, %0
  %r148 = load i32, ptr %r140, align 4
  %r149 = icmp eq i32 %r148, 42
  br i1 %r149, label %bb31, label %bb35

bb35:                                             ; preds = %bb29
  %r150 = load i32, ptr %r140, align 4
  %r151 = icmp eq i32 %r150, 47
  br i1 %r151, label %bb31, label %bb34

bb34:                                             ; preds = %bb35
  %r152 = load i32, ptr %r140, align 4
  %r153 = icmp eq i32 %r152, 37
  br i1 %r153, label %bb31, label %bb32

bb31:                                             ; preds = %bb34, %bb35, %bb29
  ret i32 20

1:                                                ; No predecessors!
  br label %bb33

bb32:                                             ; preds = %bb34
  br label %bb33

bb33:                                             ; preds = %bb32, %1
  ret i32 0
}

define void @stack_push(ptr %r154, i32 %r155) {
bb37:
  %r161 = alloca i32, align 4
  %r156 = alloca i32, align 4
  store i32 %r155, ptr %r156, align 4
  br label %bb36

bb36:                                             ; preds = %bb37
  %r157 = getelementptr i32, ptr %r154, i32 0
  %r158 = load i32, ptr %r157, align 4
  %r159 = add i32 %r158, 1
  %r160 = getelementptr i32, ptr %r154, i32 0
  store i32 %r159, ptr %r160, align 4
  %r162 = getelementptr i32, ptr %r154, i32 0
  %r163 = load i32, ptr %r162, align 4
  store i32 %r163, ptr %r161, align 4
  %r164 = load i32, ptr %r156, align 4
  %r165 = load i32, ptr %r161, align 4
  %r166 = getelementptr i32, ptr %r154, i32 %r165
  store i32 %r164, ptr %r166, align 4
  ret void
}

define i32 @stack_pop(ptr %r167) {
bb38:
  %r169 = getelementptr i32, ptr %r167, i32 0
  %r170 = load i32, ptr %r169, align 4
  %r168 = alloca i32, align 4
  store i32 %r170, ptr %r168, align 4
  %r172 = load i32, ptr %r168, align 4
  %r173 = getelementptr i32, ptr %r167, i32 %r172
  %r174 = load i32, ptr %r173, align 4
  %r171 = alloca i32, align 4
  store i32 %r174, ptr %r171, align 4
  %r175 = getelementptr i32, ptr %r167, i32 0
  %r176 = load i32, ptr %r175, align 4
  %r177 = sub i32 %r176, 1
  %r178 = getelementptr i32, ptr %r167, i32 0
  store i32 %r177, ptr %r178, align 4
  %r179 = load i32, ptr %r171, align 4
  ret i32 %r179
}

define i32 @stack_peek(ptr %r180) {
bb39:
  %r182 = getelementptr i32, ptr %r180, i32 0
  %r183 = load i32, ptr %r182, align 4
  %r181 = alloca i32, align 4
  store i32 %r183, ptr %r181, align 4
  %r184 = load i32, ptr %r181, align 4
  %r185 = getelementptr i32, ptr %r180, i32 %r184
  %r186 = load i32, ptr %r185, align 4
  ret i32 %r186
}

define i32 @stack_size(ptr %r187) {
bb40:
  %r188 = getelementptr i32, ptr %r187, i32 0
  %r189 = load i32, ptr %r188, align 4
  ret i32 %r189
}

define i32 @mod(i32 %r190, i32 %r192) {
bb42:
  %r191 = alloca i32, align 4
  store i32 %r190, ptr %r191, align 4
  %r193 = alloca i32, align 4
  store i32 %r192, ptr %r193, align 4
  br label %bb41

bb41:                                             ; preds = %bb42
  %r194 = load i32, ptr %r191, align 4
  %r195 = load i32, ptr %r191, align 4
  %r196 = load i32, ptr %r193, align 4
  %r197 = sdiv i32 %r195, %r196
  %r198 = load i32, ptr %r193, align 4
  %r199 = mul i32 %r197, %r198
  %r200 = sub i32 %r194, %r199
  ret i32 %r200
}

define i32 @eval_op(i32 %r201, i32 %r203, i32 %r205) {
bb44:
  %r202 = alloca i32, align 4
  store i32 %r201, ptr %r202, align 4
  %r204 = alloca i32, align 4
  store i32 %r203, ptr %r204, align 4
  %r206 = alloca i32, align 4
  store i32 %r205, ptr %r206, align 4
  br label %bb43

bb43:                                             ; preds = %bb44
  %r207 = load i32, ptr %r202, align 4
  %r208 = icmp eq i32 %r207, 43
  br i1 %r208, label %bb45, label %bb46

bb45:                                             ; preds = %bb43
  %r209 = load i32, ptr %r204, align 4
  %r210 = load i32, ptr %r206, align 4
  %r211 = add i32 %r209, %r210
  ret i32 %r211

0:                                                ; No predecessors!
  br label %bb47

bb46:                                             ; preds = %bb43
  br label %bb47

bb47:                                             ; preds = %bb46, %0
  %r212 = load i32, ptr %r202, align 4
  %r213 = icmp eq i32 %r212, 45
  br i1 %r213, label %bb48, label %bb49

bb48:                                             ; preds = %bb47
  %r214 = load i32, ptr %r204, align 4
  %r215 = load i32, ptr %r206, align 4
  %r216 = sub i32 %r214, %r215
  ret i32 %r216

1:                                                ; No predecessors!
  br label %bb50

bb49:                                             ; preds = %bb47
  br label %bb50

bb50:                                             ; preds = %bb49, %1
  %r217 = load i32, ptr %r202, align 4
  %r218 = icmp eq i32 %r217, 42
  br i1 %r218, label %bb51, label %bb52

bb51:                                             ; preds = %bb50
  %r219 = load i32, ptr %r204, align 4
  %r220 = load i32, ptr %r206, align 4
  %r221 = mul i32 %r219, %r220
  ret i32 %r221

2:                                                ; No predecessors!
  br label %bb53

bb52:                                             ; preds = %bb50
  br label %bb53

bb53:                                             ; preds = %bb52, %2
  %r222 = load i32, ptr %r202, align 4
  %r223 = icmp eq i32 %r222, 47
  br i1 %r223, label %bb54, label %bb55

bb54:                                             ; preds = %bb53
  %r224 = load i32, ptr %r204, align 4
  %r225 = load i32, ptr %r206, align 4
  %r226 = sdiv i32 %r224, %r225
  ret i32 %r226

3:                                                ; No predecessors!
  br label %bb56

bb55:                                             ; preds = %bb53
  br label %bb56

bb56:                                             ; preds = %bb55, %3
  %r227 = load i32, ptr %r202, align 4
  %r228 = icmp eq i32 %r227, 37
  br i1 %r228, label %bb57, label %bb58

bb57:                                             ; preds = %bb56
  %r229 = load i32, ptr %r204, align 4
  %r230 = load i32, ptr %r206, align 4
  %r231 = call i32 @mod(i32 %r229, i32 %r230)
  ret i32 %r231

4:                                                ; No predecessors!
  br label %bb59

bb58:                                             ; preds = %bb56
  br label %bb59

bb59:                                             ; preds = %bb58, %4
  ret i32 0
}

define i32 @eval() {
bb60:
  %r295 = alloca i32, align 4
  %r293 = alloca i32, align 4
  %r291 = alloca i32, align 4
  %r271 = alloca i32, align 4
  %r269 = alloca i32, align 4
  %r267 = alloca i32, align 4
  %r253 = alloca i32, align 4
  %r232 = alloca [256 x i32], align 4
  %r233 = alloca [256 x i32], align 4
  %r234 = alloca i32, align 4
  store i32 0, ptr %r234, align 4
  br label %bb61

bb61:                                             ; preds = %bb62, %bb60
  %r235 = load i32, ptr %r234, align 4
  %r236 = icmp slt i32 %r235, 256
  br i1 %r236, label %bb62, label %bb63

bb62:                                             ; preds = %bb61
  %r237 = load i32, ptr %r234, align 4
  %r238 = getelementptr [256 x i32], ptr %r232, i32 0, i32 %r237
  store i32 0, ptr %r238, align 4
  %r239 = load i32, ptr %r234, align 4
  %r240 = getelementptr [256 x i32], ptr %r233, i32 0, i32 %r239
  store i32 0, ptr %r240, align 4
  %r241 = load i32, ptr %r234, align 4
  %r242 = add i32 %r241, 1
  store i32 %r242, ptr %r234, align 4
  br label %bb61

bb63:                                             ; preds = %bb61
  %r243 = load i32, ptr @cur_token, align 4
  %r244 = load i32, ptr @TOKEN_NUM, align 4
  %r245 = icmp ne i32 %r243, %r244
  br i1 %r245, label %bb64, label %bb65

bb64:                                             ; preds = %bb63
  %r246 = call i32 @panic()
  ret i32 %r246

0:                                                ; No predecessors!
  br label %bb66

bb65:                                             ; preds = %bb63
  br label %bb66

bb66:                                             ; preds = %bb65, %0
  %r247 = getelementptr [256 x i32], ptr %r232, i32 0, i32 0
  %r248 = load i32, ptr @num, align 4
  call void @stack_push(ptr %r247, i32 %r248)
  %r249 = call i32 @next_token()
  br label %bb67

bb67:                                             ; preds = %bb79, %bb66
  %r250 = load i32, ptr @cur_token, align 4
  %r251 = load i32, ptr @TOKEN_OTHER, align 4
  %r252 = icmp eq i32 %r250, %r251
  br i1 %r252, label %bb68, label %bb69

bb68:                                             ; preds = %bb67
  %r254 = load i32, ptr @other, align 4
  store i32 %r254, ptr %r253, align 4
  %r255 = load i32, ptr %r253, align 4
  %r256 = call i32 @get_op_prec(i32 %r255)
  %r257 = icmp eq i32 %r256, 0
  br i1 %r257, label %bb70, label %bb71

bb70:                                             ; preds = %bb68
  br label %bb69

1:                                                ; No predecessors!
  br label %bb72

bb71:                                             ; preds = %bb68
  br label %bb72

bb72:                                             ; preds = %bb71, %1
  %r258 = call i32 @next_token()
  br label %bb73

bb73:                                             ; preds = %bb74, %bb72
  %r260 = call i32 @stack_size(ptr %r233)
  %r261 = icmp ne i32 %r260, 0
  br i1 %r261, label %bb76, label %bb75

bb76:                                             ; preds = %bb73
  %r262 = call i32 @stack_peek(ptr %r233)
  %r263 = call i32 @get_op_prec(i32 %r262)
  %r264 = load i32, ptr %r253, align 4
  %r265 = call i32 @get_op_prec(i32 %r264)
  %r266 = icmp sge i32 %r263, %r265
  br i1 %r266, label %bb74, label %bb75

bb74:                                             ; preds = %bb76
  %r268 = call i32 @stack_pop(ptr %r233)
  store i32 %r268, ptr %r267, align 4
  %r270 = call i32 @stack_pop(ptr %r232)
  store i32 %r270, ptr %r269, align 4
  %r272 = call i32 @stack_pop(ptr %r232)
  store i32 %r272, ptr %r271, align 4
  %r273 = getelementptr [256 x i32], ptr %r232, i32 0, i32 0
  %r274 = load i32, ptr %r267, align 4
  %r275 = load i32, ptr %r271, align 4
  %r276 = load i32, ptr %r269, align 4
  %r277 = call i32 @eval_op(i32 %r274, i32 %r275, i32 %r276)
  call void @stack_push(ptr %r273, i32 %r277)
  br label %bb73

bb75:                                             ; preds = %bb76, %bb73
  %r278 = getelementptr [256 x i32], ptr %r233, i32 0, i32 0
  %r279 = load i32, ptr %r253, align 4
  %r280 = load i32, ptr %r253, align 4
  call void @stack_push(ptr %r278, i32 %r280)
  %r281 = load i32, ptr @cur_token, align 4
  %r282 = load i32, ptr @TOKEN_NUM, align 4
  %r283 = icmp ne i32 %r281, %r282
  br i1 %r283, label %bb77, label %bb78

bb77:                                             ; preds = %bb75
  %r284 = call i32 @panic()
  ret i32 %r284

2:                                                ; No predecessors!
  br label %bb79

bb78:                                             ; preds = %bb75
  br label %bb79

bb79:                                             ; preds = %bb78, %2
  %r285 = getelementptr [256 x i32], ptr %r232, i32 0, i32 0
  %r286 = load i32, ptr @num, align 4
  call void @stack_push(ptr %r285, i32 %r286)
  %r287 = call i32 @next_token()
  br label %bb67

bb69:                                             ; preds = %bb70, %bb67
  %r288 = call i32 @next_token()
  br label %bb80

bb80:                                             ; preds = %bb81, %bb69
  %r289 = call i32 @stack_size(ptr %r233)
  %r290 = icmp ne i32 %r289, 0
  br i1 %r290, label %bb81, label %bb82

bb81:                                             ; preds = %bb80
  %r292 = call i32 @stack_pop(ptr %r233)
  store i32 %r292, ptr %r291, align 4
  %r294 = call i32 @stack_pop(ptr %r232)
  store i32 %r294, ptr %r293, align 4
  %r296 = call i32 @stack_pop(ptr %r232)
  store i32 %r296, ptr %r295, align 4
  %r297 = getelementptr [256 x i32], ptr %r232, i32 0, i32 0
  %r298 = load i32, ptr %r291, align 4
  %r299 = load i32, ptr %r295, align 4
  %r300 = load i32, ptr %r293, align 4
  %r301 = call i32 @eval_op(i32 %r298, i32 %r299, i32 %r300)
  call void @stack_push(ptr %r297, i32 %r301)
  br label %bb80

bb82:                                             ; preds = %bb80
  %r302 = call i32 @stack_peek(ptr %r232)
  ret i32 %r302
}

define i32 @main() {
bb83:
  %r304 = call i32 @getint()
  %r303 = alloca i32, align 4
  store i32 %r304, ptr %r303, align 4
  %r305 = call i32 @getch()
  %r306 = call i32 @next_token()
  br label %bb84

bb84:                                             ; preds = %bb85, %bb83
  %r307 = load i32, ptr %r303, align 4
  %r308 = icmp ne i32 %r307, 0
  br i1 %r308, label %bb85, label %bb86

bb85:                                             ; preds = %bb84
  %r309 = call i32 @eval()
  call void @putint(i32 %r309)
  call void @putch(i32 10)
  %r310 = load i32, ptr %r303, align 4
  %r311 = sub i32 %r310, 1
  store i32 %r311, ptr %r303, align 4
  br label %bb84

bb86:                                             ; preds = %bb84
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
