; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

%struct.timeval = type { i64, i32 }

@max = global i32 1073741824
@a = global [10000000 x i32] zeroinitializer
@b = global [10000000 x i32] zeroinitializer
@kernelid = global [10000 x i32] zeroinitializer
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

define i32 @checkrange(i32 %r100) {
bb2:
  %r101 = alloca i32, align 4
  store i32 %r100, ptr %r101, align 4
  br label %bb1

bb1:                                              ; preds = %bb2
  br label %bb3

bb3:                                              ; preds = %bb4, %bb1
  %r102 = load i32, ptr %r101, align 4
  %r103 = load i32, ptr @max, align 4
  %r104 = icmp sgt i32 %r102, %r103
  br i1 %r104, label %bb4, label %bb5

bb4:                                              ; preds = %bb3
  %r105 = load i32, ptr %r101, align 4
  %r106 = load i32, ptr @max, align 4
  %r107 = sub i32 %r105, %r106
  store i32 %r107, ptr %r101, align 4
  br label %bb3

bb5:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb7, %bb5
  %r108 = load i32, ptr %r101, align 4
  %r109 = icmp slt i32 %r108, 0
  br i1 %r109, label %bb7, label %bb8

bb7:                                              ; preds = %bb6
  %r110 = load i32, ptr %r101, align 4
  %r111 = load i32, ptr @max, align 4
  %r112 = add i32 %r110, %r111
  store i32 %r112, ptr %r101, align 4
  br label %bb6

bb8:                                              ; preds = %bb6
  %r113 = load i32, ptr %r101, align 4
  ret i32 %r113
}

define i32 @mod(i32 %r114, i32 %r116) {
bb10:
  %r115 = alloca i32, align 4
  store i32 %r114, ptr %r115, align 4
  %r117 = alloca i32, align 4
  store i32 %r116, ptr %r117, align 4
  br label %bb9

bb9:                                              ; preds = %bb10
  %r118 = load i32, ptr %r115, align 4
  %r119 = load i32, ptr %r115, align 4
  %r120 = load i32, ptr %r117, align 4
  %r121 = sdiv i32 %r119, %r120
  %r122 = load i32, ptr %r117, align 4
  %r123 = mul i32 %r121, %r122
  %r124 = sub i32 %r118, %r123
  ret i32 %r124
}

define i32 @reduce(i32 %r125, i32 %r127, i32 %r129) {
bb12:
  %r197 = alloca i32, align 4
  %r196 = alloca i32, align 4
  %r171 = alloca i32, align 4
  %r170 = alloca i32, align 4
  %r140 = alloca i32, align 4
  %r139 = alloca i32, align 4
  %r126 = alloca i32, align 4
  store i32 %r125, ptr %r126, align 4
  %r128 = alloca i32, align 4
  store i32 %r127, ptr %r128, align 4
  %r130 = alloca i32, align 4
  store i32 %r129, ptr %r130, align 4
  br label %bb11

bb11:                                             ; preds = %bb12
  %r131 = load i32, ptr %r126, align 4
  %r132 = icmp eq i32 %r131, 0
  br i1 %r132, label %bb13, label %bb14

bb13:                                             ; preds = %bb11
  %r133 = load i32, ptr %r128, align 4
  %r134 = load i32, ptr %r130, align 4
  %r135 = add i32 %r133, %r134
  %r136 = call i32 @checkrange(i32 %r135)
  ret i32 %r136

0:                                                ; No predecessors!
  br label %bb15

bb14:                                             ; preds = %bb11
  br label %bb15

bb15:                                             ; preds = %bb14, %0
  %r137 = load i32, ptr %r126, align 4
  %r138 = icmp eq i32 %r137, 1
  br i1 %r138, label %bb16, label %bb17

bb16:                                             ; preds = %bb15
  store i32 0, ptr %r139, align 4
  store i32 1, ptr %r140, align 4
  br label %bb19

bb19:                                             ; preds = %bb24, %bb16
  %r141 = load i32, ptr %r140, align 4
  %r142 = load i32, ptr @max, align 4
  %r143 = icmp slt i32 %r141, %r142
  br i1 %r143, label %bb20, label %bb21

bb20:                                             ; preds = %bb19
  %r144 = load i32, ptr %r128, align 4
  %r145 = load i32, ptr %r140, align 4
  %r146 = sdiv i32 %r144, %r145
  %r147 = call i32 @mod(i32 %r146, i32 2)
  %r148 = load i32, ptr %r130, align 4
  %r149 = load i32, ptr %r140, align 4
  %r150 = sdiv i32 %r148, %r149
  %r151 = call i32 @mod(i32 %r150, i32 2)
  %r152 = icmp eq i32 %r147, %r151
  br i1 %r152, label %bb22, label %bb23

bb22:                                             ; preds = %bb20
  %r153 = load i32, ptr %r139, align 4
  %r154 = mul i32 %r153, 2
  store i32 %r154, ptr %r139, align 4
  br label %bb24

bb23:                                             ; preds = %bb20
  %r155 = load i32, ptr %r139, align 4
  %r156 = mul i32 %r155, 2
  %r157 = add i32 %r156, 1
  store i32 %r157, ptr %r139, align 4
  br label %bb24

bb24:                                             ; preds = %bb23, %bb22
  %r158 = load i32, ptr %r140, align 4
  %r159 = mul i32 %r158, 2
  store i32 %r159, ptr %r140, align 4
  br label %bb19

bb21:                                             ; preds = %bb19
  %r160 = load i32, ptr %r139, align 4
  ret i32 %r160

1:                                                ; No predecessors!
  br label %bb18

bb17:                                             ; preds = %bb15
  br label %bb18

bb18:                                             ; preds = %bb17, %1
  %r161 = load i32, ptr %r126, align 4
  %r162 = icmp eq i32 %r161, 2
  br i1 %r162, label %bb25, label %bb26

bb25:                                             ; preds = %bb18
  %r163 = load i32, ptr %r128, align 4
  %r164 = load i32, ptr %r130, align 4
  %r165 = icmp sgt i32 %r163, %r164
  br i1 %r165, label %bb28, label %bb29

bb28:                                             ; preds = %bb25
  %r166 = load i32, ptr %r128, align 4
  ret i32 %r166

2:                                                ; No predecessors!
  br label %bb30

bb29:                                             ; preds = %bb25
  %r167 = load i32, ptr %r130, align 4
  ret i32 %r167

3:                                                ; No predecessors!
  br label %bb30

bb30:                                             ; preds = %3, %2
  br label %bb27

bb26:                                             ; preds = %bb18
  br label %bb27

bb27:                                             ; preds = %bb26, %bb30
  %r168 = load i32, ptr %r126, align 4
  %r169 = icmp eq i32 %r168, 3
  br i1 %r169, label %bb31, label %bb32

bb31:                                             ; preds = %bb27
  store i32 0, ptr %r170, align 4
  store i32 1, ptr %r171, align 4
  br label %bb34

bb34:                                             ; preds = %bb39, %bb31
  %r172 = load i32, ptr %r171, align 4
  %r173 = load i32, ptr @max, align 4
  %r174 = icmp slt i32 %r172, %r173
  br i1 %r174, label %bb35, label %bb36

bb35:                                             ; preds = %bb34
  %r176 = load i32, ptr %r128, align 4
  %r177 = load i32, ptr %r171, align 4
  %r178 = sdiv i32 %r176, %r177
  %r179 = call i32 @mod(i32 %r178, i32 2)
  %r180 = icmp eq i32 %r179, 1
  br i1 %r180, label %bb37, label %bb40

bb40:                                             ; preds = %bb35
  %r181 = load i32, ptr %r130, align 4
  %r182 = load i32, ptr %r171, align 4
  %r183 = sdiv i32 %r181, %r182
  %r184 = call i32 @mod(i32 %r183, i32 2)
  %r185 = icmp eq i32 %r184, 1
  br i1 %r185, label %bb37, label %bb38

bb37:                                             ; preds = %bb40, %bb35
  %r186 = load i32, ptr %r170, align 4
  %r187 = mul i32 %r186, 2
  %r188 = add i32 %r187, 1
  store i32 %r188, ptr %r170, align 4
  br label %bb39

bb38:                                             ; preds = %bb40
  %r189 = load i32, ptr %r170, align 4
  %r190 = mul i32 %r189, 2
  store i32 %r190, ptr %r170, align 4
  br label %bb39

bb39:                                             ; preds = %bb38, %bb37
  %r191 = load i32, ptr %r171, align 4
  %r192 = mul i32 %r191, 2
  store i32 %r192, ptr %r171, align 4
  br label %bb34

bb36:                                             ; preds = %bb34
  %r193 = load i32, ptr %r170, align 4
  ret i32 %r193

4:                                                ; No predecessors!
  br label %bb33

bb32:                                             ; preds = %bb27
  br label %bb33

bb33:                                             ; preds = %bb32, %4
  %r194 = load i32, ptr %r126, align 4
  %r195 = icmp eq i32 %r194, 4
  br i1 %r195, label %bb41, label %bb42

bb41:                                             ; preds = %bb33
  store i32 0, ptr %r196, align 4
  store i32 1, ptr %r197, align 4
  br label %bb44

bb44:                                             ; preds = %bb49, %bb41
  %r198 = load i32, ptr %r197, align 4
  %r199 = load i32, ptr @max, align 4
  %r200 = icmp slt i32 %r198, %r199
  br i1 %r200, label %bb45, label %bb46

bb45:                                             ; preds = %bb44
  %r202 = load i32, ptr %r128, align 4
  %r203 = load i32, ptr %r197, align 4
  %r204 = sdiv i32 %r202, %r203
  %r205 = call i32 @mod(i32 %r204, i32 2)
  %r206 = icmp eq i32 %r205, 1
  br i1 %r206, label %bb50, label %bb48

bb50:                                             ; preds = %bb45
  %r207 = load i32, ptr %r130, align 4
  %r208 = load i32, ptr %r197, align 4
  %r209 = sdiv i32 %r207, %r208
  %r210 = call i32 @mod(i32 %r209, i32 2)
  %r211 = icmp eq i32 %r210, 1
  br i1 %r211, label %bb47, label %bb48

bb47:                                             ; preds = %bb50
  %r212 = load i32, ptr %r196, align 4
  %r213 = mul i32 %r212, 2
  %r214 = add i32 %r213, 1
  store i32 %r214, ptr %r196, align 4
  br label %bb49

bb48:                                             ; preds = %bb50, %bb45
  %r215 = load i32, ptr %r196, align 4
  %r216 = mul i32 %r215, 2
  store i32 %r216, ptr %r196, align 4
  br label %bb49

bb49:                                             ; preds = %bb48, %bb47
  %r217 = load i32, ptr %r197, align 4
  %r218 = mul i32 %r217, 2
  store i32 %r218, ptr %r197, align 4
  br label %bb44

bb46:                                             ; preds = %bb44
  %r219 = load i32, ptr %r196, align 4
  ret i32 %r219

5:                                                ; No predecessors!
  br label %bb43

bb42:                                             ; preds = %bb33
  br label %bb43

bb43:                                             ; preds = %bb42, %5
  ret i32 0
}

define i32 @getvalue(ptr %r220, i32 %r221, i32 %r223, i32 %r225, i32 %r227) {
bb52:
  %r242 = alloca i32, align 4
  %r222 = alloca i32, align 4
  store i32 %r221, ptr %r222, align 4
  %r224 = alloca i32, align 4
  store i32 %r223, ptr %r224, align 4
  %r226 = alloca i32, align 4
  store i32 %r225, ptr %r226, align 4
  %r228 = alloca i32, align 4
  store i32 %r227, ptr %r228, align 4
  br label %bb51

bb51:                                             ; preds = %bb52
  %r232 = load i32, ptr %r226, align 4
  %r233 = icmp slt i32 %r232, 0
  br i1 %r233, label %bb53, label %bb58

bb58:                                             ; preds = %bb51
  %r234 = load i32, ptr %r228, align 4
  %r235 = icmp slt i32 %r234, 0
  br i1 %r235, label %bb53, label %bb57

bb57:                                             ; preds = %bb58
  %r236 = load i32, ptr %r226, align 4
  %r237 = load i32, ptr %r222, align 4
  %r238 = icmp sge i32 %r236, %r237
  br i1 %r238, label %bb53, label %bb56

bb56:                                             ; preds = %bb57
  %r239 = load i32, ptr %r228, align 4
  %r240 = load i32, ptr %r224, align 4
  %r241 = icmp sge i32 %r239, %r240
  br i1 %r241, label %bb53, label %bb54

bb53:                                             ; preds = %bb56, %bb57, %bb58, %bb51
  ret i32 0

0:                                                ; No predecessors!
  br label %bb55

bb54:                                             ; preds = %bb56
  br label %bb55

bb55:                                             ; preds = %bb54, %0
  %r243 = load i32, ptr %r226, align 4
  %r244 = load i32, ptr %r224, align 4
  %r245 = mul i32 %r243, %r244
  %r246 = load i32, ptr %r228, align 4
  %r247 = add i32 %r245, %r246
  store i32 %r247, ptr %r242, align 4
  %r248 = load i32, ptr %r242, align 4
  %r249 = getelementptr i32, ptr %r220, i32 %r248
  %r250 = load i32, ptr %r249, align 4
  ret i32 %r250
}

define i32 @convn(i32 %r251, ptr %r253, ptr %r254, i32 %r255, i32 %r257, i32 %r259) {
bb60:
  %r311 = alloca i32, align 4
  %r266 = alloca i32, align 4
  %r265 = alloca i32, align 4
  %r264 = alloca i32, align 4
  %r263 = alloca i32, align 4
  %r262 = alloca i32, align 4
  %r261 = alloca i32, align 4
  %r252 = alloca i32, align 4
  store i32 %r251, ptr %r252, align 4
  %r256 = alloca i32, align 4
  store i32 %r255, ptr %r256, align 4
  %r258 = alloca i32, align 4
  store i32 %r257, ptr %r258, align 4
  %r260 = alloca i32, align 4
  store i32 %r259, ptr %r260, align 4
  br label %bb59

bb59:                                             ; preds = %bb60
  store i32 0, ptr %r261, align 4
  store i32 0, ptr %r262, align 4
  store i32 1, ptr %r266, align 4
  br label %bb61

bb61:                                             ; preds = %bb84, %bb59
  %r267 = load i32, ptr %r266, align 4
  %r268 = load i32, ptr %r266, align 4
  %r269 = icmp eq i32 %r267, %r268
  br i1 %r269, label %bb62, label %bb63

bb62:                                             ; preds = %bb61
  store i32 0, ptr %r262, align 4
  br label %bb64

bb64:                                             ; preds = %bb81, %bb62
  %r270 = load i32, ptr %r266, align 4
  %r271 = load i32, ptr %r266, align 4
  %r272 = icmp eq i32 %r270, %r271
  br i1 %r272, label %bb65, label %bb66

bb65:                                             ; preds = %bb64
  store i32 0, ptr %r265, align 4
  %r273 = load i32, ptr %r261, align 4
  %r274 = load i32, ptr %r260, align 4
  %r275 = sdiv i32 %r274, 2
  %r276 = sub i32 %r273, %r275
  store i32 %r276, ptr %r263, align 4
  br label %bb67

bb67:                                             ; preds = %bb78, %bb65
  %r277 = load i32, ptr %r266, align 4
  %r278 = load i32, ptr %r266, align 4
  %r279 = icmp eq i32 %r277, %r278
  br i1 %r279, label %bb68, label %bb69

bb68:                                             ; preds = %bb67
  %r280 = load i32, ptr %r262, align 4
  %r281 = load i32, ptr %r260, align 4
  %r282 = sdiv i32 %r281, 2
  %r283 = sub i32 %r280, %r282
  store i32 %r283, ptr %r264, align 4
  br label %bb70

bb70:                                             ; preds = %bb75, %bb68
  %r284 = load i32, ptr %r266, align 4
  %r285 = load i32, ptr %r266, align 4
  %r286 = icmp eq i32 %r284, %r285
  br i1 %r286, label %bb71, label %bb72

bb71:                                             ; preds = %bb70
  %r287 = load i32, ptr %r252, align 4
  %r288 = load i32, ptr %r265, align 4
  %r289 = load i32, ptr %r256, align 4
  %r290 = load i32, ptr %r258, align 4
  %r291 = load i32, ptr %r263, align 4
  %r292 = load i32, ptr %r264, align 4
  %r293 = call i32 @getvalue(ptr %r253, i32 %r289, i32 %r290, i32 %r291, i32 %r292)
  %r294 = call i32 @reduce(i32 %r287, i32 %r288, i32 %r293)
  store i32 %r294, ptr %r265, align 4
  %r295 = load i32, ptr %r264, align 4
  %r296 = add i32 %r295, 1
  store i32 %r296, ptr %r264, align 4
  %r297 = load i32, ptr %r264, align 4
  %r298 = load i32, ptr %r262, align 4
  %r299 = load i32, ptr %r260, align 4
  %r300 = sdiv i32 %r299, 2
  %r301 = add i32 %r298, %r300
  %r302 = icmp sge i32 %r297, %r301
  br i1 %r302, label %bb73, label %bb74

bb73:                                             ; preds = %bb71
  br label %bb72

0:                                                ; No predecessors!
  br label %bb75

bb74:                                             ; preds = %bb71
  br label %bb75

bb75:                                             ; preds = %bb74, %0
  br label %bb70

bb72:                                             ; preds = %bb73, %bb70
  %r303 = load i32, ptr %r263, align 4
  %r304 = add i32 %r303, 1
  store i32 %r304, ptr %r263, align 4
  %r305 = load i32, ptr %r263, align 4
  %r306 = load i32, ptr %r261, align 4
  %r307 = load i32, ptr %r260, align 4
  %r308 = sdiv i32 %r307, 2
  %r309 = add i32 %r306, %r308
  %r310 = icmp sge i32 %r305, %r309
  br i1 %r310, label %bb76, label %bb77

bb76:                                             ; preds = %bb72
  br label %bb69

1:                                                ; No predecessors!
  br label %bb78

bb77:                                             ; preds = %bb72
  br label %bb78

bb78:                                             ; preds = %bb77, %1
  br label %bb67

bb69:                                             ; preds = %bb76, %bb67
  %r312 = load i32, ptr %r261, align 4
  %r313 = load i32, ptr %r258, align 4
  %r314 = mul i32 %r312, %r313
  %r315 = load i32, ptr %r262, align 4
  %r316 = add i32 %r314, %r315
  store i32 %r316, ptr %r311, align 4
  %r317 = load i32, ptr %r265, align 4
  %r318 = load i32, ptr %r311, align 4
  %r319 = getelementptr i32, ptr %r254, i32 %r318
  store i32 %r317, ptr %r319, align 4
  %r320 = load i32, ptr %r262, align 4
  %r321 = add i32 %r320, 1
  store i32 %r321, ptr %r262, align 4
  %r322 = load i32, ptr %r262, align 4
  %r323 = load i32, ptr %r258, align 4
  %r324 = icmp sge i32 %r322, %r323
  br i1 %r324, label %bb79, label %bb80

bb79:                                             ; preds = %bb69
  br label %bb66

2:                                                ; No predecessors!
  br label %bb81

bb80:                                             ; preds = %bb69
  br label %bb81

bb81:                                             ; preds = %bb80, %2
  br label %bb64

bb66:                                             ; preds = %bb79, %bb64
  %r325 = load i32, ptr %r261, align 4
  %r326 = add i32 %r325, 1
  store i32 %r326, ptr %r261, align 4
  %r327 = load i32, ptr %r261, align 4
  %r328 = load i32, ptr %r256, align 4
  %r329 = icmp sge i32 %r327, %r328
  br i1 %r329, label %bb82, label %bb83

bb82:                                             ; preds = %bb66
  br label %bb63

3:                                                ; No predecessors!
  br label %bb84

bb83:                                             ; preds = %bb66
  br label %bb84

bb84:                                             ; preds = %bb83, %3
  br label %bb61

bb63:                                             ; preds = %bb82, %bb61
  ret i32 0
}

define void @memmove(ptr %r330, ptr %r331, i32 %r332) {
bb86:
  %r334 = alloca i32, align 4
  %r333 = alloca i32, align 4
  store i32 %r332, ptr %r333, align 4
  br label %bb85

bb85:                                             ; preds = %bb86
  store i32 0, ptr %r334, align 4
  br label %bb87

bb87:                                             ; preds = %bb88, %bb85
  %r335 = load i32, ptr %r334, align 4
  %r336 = load i32, ptr %r333, align 4
  %r337 = icmp slt i32 %r335, %r336
  br i1 %r337, label %bb88, label %bb89

bb88:                                             ; preds = %bb87
  %r338 = load i32, ptr %r334, align 4
  %r339 = getelementptr i32, ptr %r331, i32 %r338
  %r340 = load i32, ptr %r339, align 4
  %r341 = load i32, ptr %r334, align 4
  %r342 = getelementptr i32, ptr %r330, i32 %r341
  store i32 %r340, ptr %r342, align 4
  %r343 = load i32, ptr %r334, align 4
  %r344 = add i32 %r343, 1
  store i32 %r344, ptr %r334, align 4
  br label %bb87

bb89:                                             ; preds = %bb87
  ret void
}

define i32 @main() {
bb90:
  %r373 = alloca i32, align 4
  %r371 = alloca i32, align 4
  %r346 = call i32 @getint()
  %r345 = alloca i32, align 4
  store i32 %r346, ptr %r345, align 4
  %r348 = call i32 @getint()
  %r347 = alloca i32, align 4
  store i32 %r348, ptr %r347, align 4
  %r350 = call i32 @getint()
  %r349 = alloca i32, align 4
  store i32 %r350, ptr %r349, align 4
  %r351 = alloca i32, align 4
  %r352 = call i32 @getint()
  store i32 %r352, ptr %r351, align 4
  %r353 = alloca i32, align 4
  store i32 0, ptr %r353, align 4
  br label %bb91

bb91:                                             ; preds = %bb92, %bb90
  %r354 = load i32, ptr %r353, align 4
  %r355 = load i32, ptr %r351, align 4
  %r356 = icmp slt i32 %r354, %r355
  br i1 %r356, label %bb92, label %bb93

bb92:                                             ; preds = %bb91
  %r357 = call i32 @getint()
  %r358 = load i32, ptr %r353, align 4
  %r359 = getelementptr [10000000 x i32], ptr @a, i32 0, i32 %r358
  store i32 %r357, ptr %r359, align 4
  %r360 = load i32, ptr %r353, align 4
  %r361 = add i32 %r360, 1
  store i32 %r361, ptr %r353, align 4
  br label %bb91

bb93:                                             ; preds = %bb91
  %r362 = call i32 @getint()
  store i32 %r362, ptr %r351, align 4
  store i32 0, ptr %r353, align 4
  br label %bb94

bb94:                                             ; preds = %bb95, %bb93
  %r363 = load i32, ptr %r353, align 4
  %r364 = load i32, ptr %r351, align 4
  %r365 = icmp slt i32 %r363, %r364
  br i1 %r365, label %bb95, label %bb96

bb95:                                             ; preds = %bb94
  %r366 = call i32 @getint()
  %r367 = load i32, ptr %r353, align 4
  %r368 = getelementptr [10000 x i32], ptr @kernelid, i32 0, i32 %r367
  store i32 %r366, ptr %r368, align 4
  %r369 = load i32, ptr %r353, align 4
  %r370 = add i32 %r369, 1
  store i32 %r370, ptr %r353, align 4
  br label %bb94

bb96:                                             ; preds = %bb94
  %r372 = load i32, ptr %r351, align 4
  store i32 %r372, ptr %r371, align 4
  call void @_sysy_starttime(i32 209)
  store i32 0, ptr %r373, align 4
  br label %bb97

bb97:                                             ; preds = %bb98, %bb96
  %r374 = load i32, ptr %r373, align 4
  %r375 = load i32, ptr %r371, align 4
  %r376 = icmp slt i32 %r374, %r375
  br i1 %r376, label %bb98, label %bb99

bb98:                                             ; preds = %bb97
  %r377 = load i32, ptr %r373, align 4
  %r378 = getelementptr [10000 x i32], ptr @kernelid, i32 0, i32 %r377
  %r379 = load i32, ptr %r378, align 4
  %r380 = getelementptr [10000000 x i32], ptr @a, i32 0, i32 0
  %r381 = getelementptr [10000000 x i32], ptr @b, i32 0, i32 0
  %r382 = load i32, ptr %r347, align 4
  %r383 = load i32, ptr %r347, align 4
  %r384 = load i32, ptr %r349, align 4
  %r385 = load i32, ptr %r349, align 4
  %r386 = load i32, ptr %r345, align 4
  %r387 = load i32, ptr %r345, align 4
  %r388 = call i32 @convn(i32 %r379, ptr %r380, ptr %r381, i32 %r383, i32 %r385, i32 %r387)
  %r389 = getelementptr [10000000 x i32], ptr @a, i32 0, i32 0
  %r390 = getelementptr [10000000 x i32], ptr @b, i32 0, i32 0
  %r391 = load i32, ptr %r347, align 4
  %r392 = load i32, ptr %r349, align 4
  %r393 = mul i32 %r391, %r392
  call void @memmove(ptr %r389, ptr %r390, i32 %r393)
  %r394 = load i32, ptr %r373, align 4
  %r395 = add i32 %r394, 1
  store i32 %r395, ptr %r373, align 4
  br label %bb97

bb99:                                             ; preds = %bb97
  call void @_sysy_stoptime(i32 312)
  %r396 = load i32, ptr %r347, align 4
  %r397 = load i32, ptr %r349, align 4
  %r398 = mul i32 %r396, %r397
  %r399 = getelementptr [10000000 x i32], ptr @a, i32 0, i32 0
  call void @putarray(i32 %r398, ptr %r399)
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
