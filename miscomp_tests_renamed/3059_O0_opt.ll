; 153681764470492458593045981830772538060
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/153681764470492458593045981830772538060_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/153681764470492458593045981830772538060.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i64, i64, i64 }

@a = dso_local global { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] } { i8 0, i8 0, i8 16, i8 0, i8 0, [3 x i8] zeroinitializer, i8 0, i8 0, i8 16, i8 0, i8 0, [3 x i8] zeroinitializer, i8 0, i8 0, i8 16, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 8
@b = dso_local global { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] } { i8 0, i8 0, i8 0, i8 0, i8 1, [3 x i8] zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 1, [3 x i8] zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, [2 x i8] zeroinitializer }, align 8
@c = dso_local global { i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, i8, [2 x i8] } { i8 -1, i8 -1, i8 -1, i8 -1, i8 1, [3 x i8] zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 8
@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %bf.load = load i64, ptr @a, align 8
  %bf.clear = and i64 %bf.load, 8589934591
  %bf.load1 = load i64, ptr @a, align 8
  %bf.clear2 = and i64 %bf.load1, 8589934591
  %mul = mul i64 %bf.clear, %bf.clear2
  %cmp = icmp ne i64 %mul, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %bf.load3 = load i64, ptr @a, align 8
  %bf.clear4 = and i64 %bf.load3, 8589934591
  %bf.load5 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 1), align 8
  %bf.clear6 = and i64 %bf.load5, 1099511627775
  %mul7 = mul i64 %bf.clear4, %bf.clear6
  %cmp8 = icmp ne i64 %mul7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %bf.load10 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 1), align 8
  %bf.clear11 = and i64 %bf.load10, 1099511627775
  %bf.load12 = load i64, ptr @a, align 8
  %bf.clear13 = and i64 %bf.load12, 8589934591
  %mul14 = mul i64 %bf.clear11, %bf.clear13
  %cmp15 = icmp ne i64 %mul14, 0
  br i1 %cmp15, label %if.then, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false9
  %bf.load17 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 1), align 8
  %bf.clear18 = and i64 %bf.load17, 1099511627775
  %bf.load19 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 1), align 8
  %bf.clear20 = and i64 %bf.load19, 1099511627775
  %mul21 = mul i64 %bf.clear18, %bf.clear20
  %cmp22 = icmp ne i64 %mul21, 0
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false16, %lor.lhs.false9, %lor.lhs.false, %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false16
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %bf.load23 = load i64, ptr @a, align 8
  %bf.clear24 = and i64 %bf.load23, 8589934591
  %bf.load25 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 2), align 8
  %bf.clear26 = and i64 %bf.load25, 2199023255551
  %mul27 = mul i64 %bf.clear24, %bf.clear26
  %cmp28 = icmp ne i64 %mul27, 1099511627776
  br i1 %cmp28, label %if.then57, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end
  %bf.load30 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 1), align 8
  %bf.clear31 = and i64 %bf.load30, 1099511627775
  %bf.load32 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 2), align 8
  %bf.clear33 = and i64 %bf.load32, 2199023255551
  %mul34 = mul i64 %bf.clear31, %bf.clear33
  %cmp35 = icmp ne i64 %mul34, 1099511627776
  br i1 %cmp35, label %if.then57, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false29
  %bf.load37 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 2), align 8
  %bf.clear38 = and i64 %bf.load37, 2199023255551
  %bf.load39 = load i64, ptr @a, align 8
  %bf.clear40 = and i64 %bf.load39, 8589934591
  %mul41 = mul i64 %bf.clear38, %bf.clear40
  %cmp42 = icmp ne i64 %mul41, 1099511627776
  br i1 %cmp42, label %if.then57, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false36
  %bf.load44 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 2), align 8
  %bf.clear45 = and i64 %bf.load44, 2199023255551
  %bf.load46 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 1), align 8
  %bf.clear47 = and i64 %bf.load46, 1099511627775
  %mul48 = mul i64 %bf.clear45, %bf.clear47
  %cmp49 = icmp ne i64 %mul48, 1099511627776
  br i1 %cmp49, label %if.then57, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false43
  %bf.load51 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 2), align 8
  %bf.clear52 = and i64 %bf.load51, 2199023255551
  %bf.load53 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 2), align 8
  %bf.clear54 = and i64 %bf.load53, 2199023255551
  %mul55 = mul i64 %bf.clear52, %bf.clear54
  %cmp56 = icmp ne i64 %mul55, 1099511627776
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %lor.lhs.false50, %lor.lhs.false43, %lor.lhs.false36, %lor.lhs.false29, %if.end
  call void @abort() #4
  unreachable

if.end58:                                         ; preds = %lor.lhs.false50
  %bf.load59 = load i64, ptr @b, align 8
  %bf.clear60 = and i64 %bf.load59, 8589934591
  %bf.load61 = load i64, ptr @b, align 8
  %bf.clear62 = and i64 %bf.load61, 8589934591
  %add = add i64 %bf.clear60, %bf.clear62
  %cmp63 = icmp ne i64 %add, 0
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end58
  call void @abort() #4
  unreachable

if.end65:                                         ; preds = %if.end58
  %bf.load66 = load i64, ptr @b, align 8
  %bf.clear67 = and i64 %bf.load66, 8589934591
  %bf.load68 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @b, i32 0, i32 1), align 8
  %bf.clear69 = and i64 %bf.load68, 1099511627775
  %add70 = add i64 %bf.clear67, %bf.clear69
  %cmp71 = icmp ne i64 %add70, 8589934592
  br i1 %cmp71, label %if.then121, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.end65
  %bf.load73 = load i64, ptr @b, align 8
  %bf.clear74 = and i64 %bf.load73, 8589934591
  %bf.load75 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @b, i32 0, i32 2), align 8
  %bf.clear76 = and i64 %bf.load75, 2199023255551
  %add77 = add i64 %bf.clear74, %bf.clear76
  %cmp78 = icmp ne i64 %add77, 8589934592
  br i1 %cmp78, label %if.then121, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %lor.lhs.false72
  %bf.load80 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @b, i32 0, i32 1), align 8
  %bf.clear81 = and i64 %bf.load80, 1099511627775
  %bf.load82 = load i64, ptr @b, align 8
  %bf.clear83 = and i64 %bf.load82, 8589934591
  %add84 = add i64 %bf.clear81, %bf.clear83
  %cmp85 = icmp ne i64 %add84, 8589934592
  br i1 %cmp85, label %if.then121, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false79
  %bf.load87 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @b, i32 0, i32 1), align 8
  %bf.clear88 = and i64 %bf.load87, 1099511627775
  %bf.load89 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @b, i32 0, i32 1), align 8
  %bf.clear90 = and i64 %bf.load89, 1099511627775
  %add91 = add i64 %bf.clear88, %bf.clear90
  %cmp92 = icmp ne i64 %add91, 8589934592
  br i1 %cmp92, label %if.then121, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %lor.lhs.false86
  %bf.load94 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @b, i32 0, i32 1), align 8
  %bf.clear95 = and i64 %bf.load94, 1099511627775
  %bf.load96 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @b, i32 0, i32 2), align 8
  %bf.clear97 = and i64 %bf.load96, 2199023255551
  %add98 = add i64 %bf.clear95, %bf.clear97
  %cmp99 = icmp ne i64 %add98, 8589934592
  br i1 %cmp99, label %if.then121, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %lor.lhs.false93
  %bf.load101 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @b, i32 0, i32 2), align 8
  %bf.clear102 = and i64 %bf.load101, 2199023255551
  %bf.load103 = load i64, ptr @b, align 8
  %bf.clear104 = and i64 %bf.load103, 8589934591
  %add105 = add i64 %bf.clear102, %bf.clear104
  %cmp106 = icmp ne i64 %add105, 8589934592
  br i1 %cmp106, label %if.then121, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %lor.lhs.false100
  %bf.load108 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @b, i32 0, i32 2), align 8
  %bf.clear109 = and i64 %bf.load108, 2199023255551
  %bf.load110 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @b, i32 0, i32 1), align 8
  %bf.clear111 = and i64 %bf.load110, 1099511627775
  %add112 = add i64 %bf.clear109, %bf.clear111
  %cmp113 = icmp ne i64 %add112, 8589934592
  br i1 %cmp113, label %if.then121, label %lor.lhs.false114

lor.lhs.false114:                                 ; preds = %lor.lhs.false107
  %bf.load115 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @b, i32 0, i32 2), align 8
  %bf.clear116 = and i64 %bf.load115, 2199023255551
  %bf.load117 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @b, i32 0, i32 2), align 8
  %bf.clear118 = and i64 %bf.load117, 2199023255551
  %add119 = add i64 %bf.clear116, %bf.clear118
  %cmp120 = icmp ne i64 %add119, 8589934592
  br i1 %cmp120, label %if.then121, label %if.end122

if.then121:                                       ; preds = %lor.lhs.false114, %lor.lhs.false107, %lor.lhs.false100, %lor.lhs.false93, %lor.lhs.false86, %lor.lhs.false79, %lor.lhs.false72, %if.end65
  call void @abort() #4
  unreachable

if.end122:                                        ; preds = %lor.lhs.false114
  %bf.load123 = load i64, ptr @a, align 8
  %bf.clear124 = and i64 %bf.load123, 8589934591
  %bf.load125 = load i64, ptr @b, align 8
  %bf.clear126 = and i64 %bf.load125, 8589934591
  %sub = sub i64 %bf.clear124, %bf.clear126
  %cmp127 = icmp ne i64 %sub, 4296015872
  br i1 %cmp127, label %if.then184, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %if.end122
  %bf.load129 = load i64, ptr @a, align 8
  %bf.clear130 = and i64 %bf.load129, 8589934591
  %bf.load131 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @b, i32 0, i32 1), align 8
  %bf.clear132 = and i64 %bf.load131, 1099511627775
  %sub133 = sub i64 %bf.clear130, %bf.clear132
  %cmp134 = icmp ne i64 %sub133, 1095217709056
  br i1 %cmp134, label %if.then184, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %lor.lhs.false128
  %bf.load136 = load i64, ptr @a, align 8
  %bf.clear137 = and i64 %bf.load136, 8589934591
  %bf.load138 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @b, i32 0, i32 2), align 8
  %bf.clear139 = and i64 %bf.load138, 2199023255551
  %sub140 = sub i64 %bf.clear137, %bf.clear139
  %cmp141 = icmp ne i64 %sub140, 2194729336832
  br i1 %cmp141, label %if.then184, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %lor.lhs.false135
  %bf.load143 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 1), align 8
  %bf.clear144 = and i64 %bf.load143, 1099511627775
  %bf.load145 = load i64, ptr @b, align 8
  %bf.clear146 = and i64 %bf.load145, 8589934591
  %sub147 = sub i64 %bf.clear144, %bf.clear146
  %cmp148 = icmp ne i64 %sub147, 1095217709056
  br i1 %cmp148, label %if.then184, label %lor.lhs.false149

lor.lhs.false149:                                 ; preds = %lor.lhs.false142
  %bf.load150 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 1), align 8
  %bf.clear151 = and i64 %bf.load150, 1099511627775
  %bf.load152 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @b, i32 0, i32 1), align 8
  %bf.clear153 = and i64 %bf.load152, 1099511627775
  %sub154 = sub i64 %bf.clear151, %bf.clear153
  %cmp155 = icmp ne i64 %sub154, 1095217709056
  br i1 %cmp155, label %if.then184, label %lor.lhs.false156

lor.lhs.false156:                                 ; preds = %lor.lhs.false149
  %bf.load157 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 1), align 8
  %bf.clear158 = and i64 %bf.load157, 1099511627775
  %bf.load159 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @b, i32 0, i32 2), align 8
  %bf.clear160 = and i64 %bf.load159, 2199023255551
  %sub161 = sub i64 %bf.clear158, %bf.clear160
  %cmp162 = icmp ne i64 %sub161, 2194729336832
  br i1 %cmp162, label %if.then184, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %lor.lhs.false156
  %bf.load164 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 2), align 8
  %bf.clear165 = and i64 %bf.load164, 2199023255551
  %bf.load166 = load i64, ptr @b, align 8
  %bf.clear167 = and i64 %bf.load166, 8589934591
  %sub168 = sub i64 %bf.clear165, %bf.clear167
  %cmp169 = icmp ne i64 %sub168, 2194729336832
  br i1 %cmp169, label %if.then184, label %lor.lhs.false170

lor.lhs.false170:                                 ; preds = %lor.lhs.false163
  %bf.load171 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 2), align 8
  %bf.clear172 = and i64 %bf.load171, 2199023255551
  %bf.load173 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @b, i32 0, i32 1), align 8
  %bf.clear174 = and i64 %bf.load173, 1099511627775
  %sub175 = sub i64 %bf.clear172, %bf.clear174
  %cmp176 = icmp ne i64 %sub175, 2194729336832
  br i1 %cmp176, label %if.then184, label %lor.lhs.false177

lor.lhs.false177:                                 ; preds = %lor.lhs.false170
  %bf.load178 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @a, i32 0, i32 2), align 8
  %bf.clear179 = and i64 %bf.load178, 2199023255551
  %bf.load180 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @b, i32 0, i32 2), align 8
  %bf.clear181 = and i64 %bf.load180, 2199023255551
  %sub182 = sub i64 %bf.clear179, %bf.clear181
  %cmp183 = icmp ne i64 %sub182, 2194729336832
  br i1 %cmp183, label %if.then184, label %if.end185

if.then184:                                       ; preds = %lor.lhs.false177, %lor.lhs.false170, %lor.lhs.false163, %lor.lhs.false156, %lor.lhs.false149, %lor.lhs.false142, %lor.lhs.false135, %lor.lhs.false128, %if.end122
  call void @abort() #4
  unreachable

if.end185:                                        ; preds = %lor.lhs.false177
  %bf.load186 = load i64, ptr @c, align 8
  %bf.clear187 = and i64 %bf.load186, 8589934591
  %inc = add i64 %bf.clear187, 1
  %bf.load188 = load i64, ptr @c, align 8
  %bf.value = and i64 %inc, 8589934591
  %bf.clear189 = and i64 %bf.load188, -8589934592
  %bf.set = or i64 %bf.clear189, %bf.value
  store i64 %bf.set, ptr @c, align 8
  %cmp190 = icmp ne i64 %bf.value, 0
  br i1 %cmp190, label %if.then208, label %lor.lhs.false191

lor.lhs.false191:                                 ; preds = %if.end185
  %bf.load192 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @c, i32 0, i32 1), align 8
  %bf.clear193 = and i64 %bf.load192, 1099511627775
  %dec = add i64 %bf.clear193, -1
  %bf.load194 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @c, i32 0, i32 1), align 8
  %bf.value195 = and i64 %dec, 1099511627775
  %bf.clear196 = and i64 %bf.load194, -1099511627776
  %bf.set197 = or i64 %bf.clear196, %bf.value195
  store i64 %bf.set197, ptr getelementptr inbounds nuw (%struct.s, ptr @c, i32 0, i32 1), align 8
  %cmp198 = icmp ne i64 %bf.value195, 1099511627775
  br i1 %cmp198, label %if.then208, label %lor.lhs.false199

lor.lhs.false199:                                 ; preds = %lor.lhs.false191
  %bf.load200 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @c, i32 0, i32 2), align 8
  %bf.clear201 = and i64 %bf.load200, 2199023255551
  %dec202 = add i64 %bf.clear201, -1
  %bf.load203 = load i64, ptr getelementptr inbounds nuw (%struct.s, ptr @c, i32 0, i32 2), align 8
  %bf.value204 = and i64 %dec202, 2199023255551
  %bf.clear205 = and i64 %bf.load203, -2199023255552
  %bf.set206 = or i64 %bf.clear205, %bf.value204
  store i64 %bf.set206, ptr getelementptr inbounds nuw (%struct.s, ptr @c, i32 0, i32 2), align 8
  %cmp207 = icmp ne i64 %bf.clear201, 0
  br i1 %cmp207, label %if.then208, label %if.end209

if.then208:                                       ; preds = %lor.lhs.false199, %lor.lhs.false191, %if.end185
  call void @abort() #4
  unreachable

if.end209:                                        ; preds = %lor.lhs.false199
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
