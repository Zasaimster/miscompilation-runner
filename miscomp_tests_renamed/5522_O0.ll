; 165205851910114041151794065839167915493
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/165205851910114041151794065839167915493.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/165205851910114041151794065839167915493.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neon_s8 = type { i8, i8, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @helper_neon_rshl_s8(i32 noundef %arg1, i32 noundef %arg2) #0 {
entry:
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca i32, align 4
  %res = alloca i32, align 4
  %vsrc1 = alloca %struct.neon_s8, align 1
  %vsrc2 = alloca %struct.neon_s8, align 1
  %vdest = alloca %struct.neon_s8, align 1
  %conv_u = alloca %union.anon, align 4
  %conv_u2 = alloca %union.anon.0, align 4
  %tmp = alloca i8, align 1
  %tmp57 = alloca i8, align 1
  %tmp120 = alloca i8, align 1
  %tmp183 = alloca i8, align 1
  %conv_u246 = alloca %union.anon.1, align 4
  store i32 %arg1, ptr %arg1.addr, align 4
  store i32 %arg2, ptr %arg2.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %arg1.addr, align 4
  store i32 %0, ptr %conv_u, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %vsrc1, ptr align 4 %conv_u, i64 4, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %1 = load i32, ptr %arg2.addr, align 4
  store i32 %1, ptr %conv_u2, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %vsrc2, ptr align 4 %conv_u2, i64 4, i1 false)
  br label %do.end3

do.end3:                                          ; preds = %do.body1
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  %v1 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc2, i32 0, i32 0
  %2 = load i8, ptr %v1, align 1
  store i8 %2, ptr %tmp, align 1
  %3 = load i8, ptr %tmp, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body4
  %v16 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 0
  store i8 0, ptr %v16, align 1
  br label %if.end54

if.else:                                          ; preds = %do.body4
  %4 = load i8, ptr %tmp, align 1
  %conv7 = sext i8 %4 to i32
  %cmp8 = icmp slt i32 %conv7, -8
  br i1 %cmp8, label %if.then10, label %if.else15

if.then10:                                        ; preds = %if.else
  %v111 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc1, i32 0, i32 0
  %5 = load i8, ptr %v111, align 1
  %conv12 = sext i8 %5 to i32
  %shr = ashr i32 %conv12, 7
  %conv13 = trunc i32 %shr to i8
  %v114 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 0
  store i8 %conv13, ptr %v114, align 1
  br label %if.end53

if.else15:                                        ; preds = %if.else
  %6 = load i8, ptr %tmp, align 1
  %conv16 = sext i8 %6 to i32
  %cmp17 = icmp eq i32 %conv16, -8
  br i1 %cmp17, label %if.then19, label %if.else31

if.then19:                                        ; preds = %if.else15
  %v120 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc1, i32 0, i32 0
  %7 = load i8, ptr %v120, align 1
  %conv21 = sext i8 %7 to i32
  %8 = load i8, ptr %tmp, align 1
  %conv22 = sext i8 %8 to i32
  %sub = sub nsw i32 %conv22, 1
  %shr23 = ashr i32 %conv21, %sub
  %conv24 = trunc i32 %shr23 to i8
  %v125 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 0
  store i8 %conv24, ptr %v125, align 1
  %v126 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 0
  %9 = load i8, ptr %v126, align 1
  %inc = add i8 %9, 1
  store i8 %inc, ptr %v126, align 1
  %v127 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 0
  %10 = load i8, ptr %v127, align 1
  %conv28 = sext i8 %10 to i32
  %shr29 = ashr i32 %conv28, 1
  %conv30 = trunc i32 %shr29 to i8
  store i8 %conv30, ptr %v127, align 1
  br label %if.end52

if.else31:                                        ; preds = %if.else15
  %11 = load i8, ptr %tmp, align 1
  %conv32 = sext i8 %11 to i32
  %cmp33 = icmp slt i32 %conv32, 0
  br i1 %cmp33, label %if.then35, label %if.else45

if.then35:                                        ; preds = %if.else31
  %v136 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc1, i32 0, i32 0
  %12 = load i8, ptr %v136, align 1
  %conv37 = sext i8 %12 to i32
  %13 = load i8, ptr %tmp, align 1
  %conv38 = sext i8 %13 to i32
  %sub39 = sub nsw i32 -1, %conv38
  %shl = shl i32 1, %sub39
  %add = add nsw i32 %conv37, %shl
  %14 = load i8, ptr %tmp, align 1
  %conv40 = sext i8 %14 to i32
  %sub41 = sub nsw i32 0, %conv40
  %shr42 = ashr i32 %add, %sub41
  %conv43 = trunc i32 %shr42 to i8
  %v144 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 0
  store i8 %conv43, ptr %v144, align 1
  br label %if.end

if.else45:                                        ; preds = %if.else31
  %v146 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc1, i32 0, i32 0
  %15 = load i8, ptr %v146, align 1
  %conv47 = sext i8 %15 to i32
  %16 = load i8, ptr %tmp, align 1
  %conv48 = sext i8 %16 to i32
  %shl49 = shl i32 %conv47, %conv48
  %conv50 = trunc i32 %shl49 to i8
  %v151 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 0
  store i8 %conv50, ptr %v151, align 1
  br label %if.end

if.end:                                           ; preds = %if.else45, %if.then35
  br label %if.end52

if.end52:                                         ; preds = %if.end, %if.then19
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then10
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then
  br label %do.end55

do.end55:                                         ; preds = %if.end54
  br label %do.body56

do.body56:                                        ; preds = %do.end55
  %v2 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc2, i32 0, i32 1
  %17 = load i8, ptr %v2, align 1
  store i8 %17, ptr %tmp57, align 1
  %18 = load i8, ptr %tmp57, align 1
  %conv58 = sext i8 %18 to i32
  %cmp59 = icmp sge i32 %conv58, 8
  br i1 %cmp59, label %if.then61, label %if.else63

if.then61:                                        ; preds = %do.body56
  %v262 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 1
  store i8 0, ptr %v262, align 1
  br label %if.end117

if.else63:                                        ; preds = %do.body56
  %19 = load i8, ptr %tmp57, align 1
  %conv64 = sext i8 %19 to i32
  %cmp65 = icmp slt i32 %conv64, -8
  br i1 %cmp65, label %if.then67, label %if.else73

if.then67:                                        ; preds = %if.else63
  %v268 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc1, i32 0, i32 1
  %20 = load i8, ptr %v268, align 1
  %conv69 = sext i8 %20 to i32
  %shr70 = ashr i32 %conv69, 7
  %conv71 = trunc i32 %shr70 to i8
  %v272 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 1
  store i8 %conv71, ptr %v272, align 1
  br label %if.end116

if.else73:                                        ; preds = %if.else63
  %21 = load i8, ptr %tmp57, align 1
  %conv74 = sext i8 %21 to i32
  %cmp75 = icmp eq i32 %conv74, -8
  br i1 %cmp75, label %if.then77, label %if.else91

if.then77:                                        ; preds = %if.else73
  %v278 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc1, i32 0, i32 1
  %22 = load i8, ptr %v278, align 1
  %conv79 = sext i8 %22 to i32
  %23 = load i8, ptr %tmp57, align 1
  %conv80 = sext i8 %23 to i32
  %sub81 = sub nsw i32 %conv80, 1
  %shr82 = ashr i32 %conv79, %sub81
  %conv83 = trunc i32 %shr82 to i8
  %v284 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 1
  store i8 %conv83, ptr %v284, align 1
  %v285 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 1
  %24 = load i8, ptr %v285, align 1
  %inc86 = add i8 %24, 1
  store i8 %inc86, ptr %v285, align 1
  %v287 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 1
  %25 = load i8, ptr %v287, align 1
  %conv88 = sext i8 %25 to i32
  %shr89 = ashr i32 %conv88, 1
  %conv90 = trunc i32 %shr89 to i8
  store i8 %conv90, ptr %v287, align 1
  br label %if.end115

if.else91:                                        ; preds = %if.else73
  %26 = load i8, ptr %tmp57, align 1
  %conv92 = sext i8 %26 to i32
  %cmp93 = icmp slt i32 %conv92, 0
  br i1 %cmp93, label %if.then95, label %if.else107

if.then95:                                        ; preds = %if.else91
  %v296 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc1, i32 0, i32 1
  %27 = load i8, ptr %v296, align 1
  %conv97 = sext i8 %27 to i32
  %28 = load i8, ptr %tmp57, align 1
  %conv98 = sext i8 %28 to i32
  %sub99 = sub nsw i32 -1, %conv98
  %shl100 = shl i32 1, %sub99
  %add101 = add nsw i32 %conv97, %shl100
  %29 = load i8, ptr %tmp57, align 1
  %conv102 = sext i8 %29 to i32
  %sub103 = sub nsw i32 0, %conv102
  %shr104 = ashr i32 %add101, %sub103
  %conv105 = trunc i32 %shr104 to i8
  %v2106 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 1
  store i8 %conv105, ptr %v2106, align 1
  br label %if.end114

if.else107:                                       ; preds = %if.else91
  %v2108 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc1, i32 0, i32 1
  %30 = load i8, ptr %v2108, align 1
  %conv109 = sext i8 %30 to i32
  %31 = load i8, ptr %tmp57, align 1
  %conv110 = sext i8 %31 to i32
  %shl111 = shl i32 %conv109, %conv110
  %conv112 = trunc i32 %shl111 to i8
  %v2113 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 1
  store i8 %conv112, ptr %v2113, align 1
  br label %if.end114

if.end114:                                        ; preds = %if.else107, %if.then95
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.then77
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.then67
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then61
  br label %do.end118

do.end118:                                        ; preds = %if.end117
  br label %do.body119

do.body119:                                       ; preds = %do.end118
  %v3 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc2, i32 0, i32 2
  %32 = load i8, ptr %v3, align 1
  store i8 %32, ptr %tmp120, align 1
  %33 = load i8, ptr %tmp120, align 1
  %conv121 = sext i8 %33 to i32
  %cmp122 = icmp sge i32 %conv121, 8
  br i1 %cmp122, label %if.then124, label %if.else126

if.then124:                                       ; preds = %do.body119
  %v3125 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 2
  store i8 0, ptr %v3125, align 1
  br label %if.end180

if.else126:                                       ; preds = %do.body119
  %34 = load i8, ptr %tmp120, align 1
  %conv127 = sext i8 %34 to i32
  %cmp128 = icmp slt i32 %conv127, -8
  br i1 %cmp128, label %if.then130, label %if.else136

if.then130:                                       ; preds = %if.else126
  %v3131 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc1, i32 0, i32 2
  %35 = load i8, ptr %v3131, align 1
  %conv132 = sext i8 %35 to i32
  %shr133 = ashr i32 %conv132, 7
  %conv134 = trunc i32 %shr133 to i8
  %v3135 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 2
  store i8 %conv134, ptr %v3135, align 1
  br label %if.end179

if.else136:                                       ; preds = %if.else126
  %36 = load i8, ptr %tmp120, align 1
  %conv137 = sext i8 %36 to i32
  %cmp138 = icmp eq i32 %conv137, -8
  br i1 %cmp138, label %if.then140, label %if.else154

if.then140:                                       ; preds = %if.else136
  %v3141 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc1, i32 0, i32 2
  %37 = load i8, ptr %v3141, align 1
  %conv142 = sext i8 %37 to i32
  %38 = load i8, ptr %tmp120, align 1
  %conv143 = sext i8 %38 to i32
  %sub144 = sub nsw i32 %conv143, 1
  %shr145 = ashr i32 %conv142, %sub144
  %conv146 = trunc i32 %shr145 to i8
  %v3147 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 2
  store i8 %conv146, ptr %v3147, align 1
  %v3148 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 2
  %39 = load i8, ptr %v3148, align 1
  %inc149 = add i8 %39, 1
  store i8 %inc149, ptr %v3148, align 1
  %v3150 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 2
  %40 = load i8, ptr %v3150, align 1
  %conv151 = sext i8 %40 to i32
  %shr152 = ashr i32 %conv151, 1
  %conv153 = trunc i32 %shr152 to i8
  store i8 %conv153, ptr %v3150, align 1
  br label %if.end178

if.else154:                                       ; preds = %if.else136
  %41 = load i8, ptr %tmp120, align 1
  %conv155 = sext i8 %41 to i32
  %cmp156 = icmp slt i32 %conv155, 0
  br i1 %cmp156, label %if.then158, label %if.else170

if.then158:                                       ; preds = %if.else154
  %v3159 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc1, i32 0, i32 2
  %42 = load i8, ptr %v3159, align 1
  %conv160 = sext i8 %42 to i32
  %43 = load i8, ptr %tmp120, align 1
  %conv161 = sext i8 %43 to i32
  %sub162 = sub nsw i32 -1, %conv161
  %shl163 = shl i32 1, %sub162
  %add164 = add nsw i32 %conv160, %shl163
  %44 = load i8, ptr %tmp120, align 1
  %conv165 = sext i8 %44 to i32
  %sub166 = sub nsw i32 0, %conv165
  %shr167 = ashr i32 %add164, %sub166
  %conv168 = trunc i32 %shr167 to i8
  %v3169 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 2
  store i8 %conv168, ptr %v3169, align 1
  br label %if.end177

if.else170:                                       ; preds = %if.else154
  %v3171 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc1, i32 0, i32 2
  %45 = load i8, ptr %v3171, align 1
  %conv172 = sext i8 %45 to i32
  %46 = load i8, ptr %tmp120, align 1
  %conv173 = sext i8 %46 to i32
  %shl174 = shl i32 %conv172, %conv173
  %conv175 = trunc i32 %shl174 to i8
  %v3176 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 2
  store i8 %conv175, ptr %v3176, align 1
  br label %if.end177

if.end177:                                        ; preds = %if.else170, %if.then158
  br label %if.end178

if.end178:                                        ; preds = %if.end177, %if.then140
  br label %if.end179

if.end179:                                        ; preds = %if.end178, %if.then130
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %if.then124
  br label %do.end181

do.end181:                                        ; preds = %if.end180
  br label %do.body182

do.body182:                                       ; preds = %do.end181
  %v4 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc2, i32 0, i32 3
  %47 = load i8, ptr %v4, align 1
  store i8 %47, ptr %tmp183, align 1
  %48 = load i8, ptr %tmp183, align 1
  %conv184 = sext i8 %48 to i32
  %cmp185 = icmp sge i32 %conv184, 8
  br i1 %cmp185, label %if.then187, label %if.else189

if.then187:                                       ; preds = %do.body182
  %v4188 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 3
  store i8 0, ptr %v4188, align 1
  br label %if.end243

if.else189:                                       ; preds = %do.body182
  %49 = load i8, ptr %tmp183, align 1
  %conv190 = sext i8 %49 to i32
  %cmp191 = icmp slt i32 %conv190, -8
  br i1 %cmp191, label %if.then193, label %if.else199

if.then193:                                       ; preds = %if.else189
  %v4194 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc1, i32 0, i32 3
  %50 = load i8, ptr %v4194, align 1
  %conv195 = sext i8 %50 to i32
  %shr196 = ashr i32 %conv195, 7
  %conv197 = trunc i32 %shr196 to i8
  %v4198 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 3
  store i8 %conv197, ptr %v4198, align 1
  br label %if.end242

if.else199:                                       ; preds = %if.else189
  %51 = load i8, ptr %tmp183, align 1
  %conv200 = sext i8 %51 to i32
  %cmp201 = icmp eq i32 %conv200, -8
  br i1 %cmp201, label %if.then203, label %if.else217

if.then203:                                       ; preds = %if.else199
  %v4204 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc1, i32 0, i32 3
  %52 = load i8, ptr %v4204, align 1
  %conv205 = sext i8 %52 to i32
  %53 = load i8, ptr %tmp183, align 1
  %conv206 = sext i8 %53 to i32
  %sub207 = sub nsw i32 %conv206, 1
  %shr208 = ashr i32 %conv205, %sub207
  %conv209 = trunc i32 %shr208 to i8
  %v4210 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 3
  store i8 %conv209, ptr %v4210, align 1
  %v4211 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 3
  %54 = load i8, ptr %v4211, align 1
  %inc212 = add i8 %54, 1
  store i8 %inc212, ptr %v4211, align 1
  %v4213 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 3
  %55 = load i8, ptr %v4213, align 1
  %conv214 = sext i8 %55 to i32
  %shr215 = ashr i32 %conv214, 1
  %conv216 = trunc i32 %shr215 to i8
  store i8 %conv216, ptr %v4213, align 1
  br label %if.end241

if.else217:                                       ; preds = %if.else199
  %56 = load i8, ptr %tmp183, align 1
  %conv218 = sext i8 %56 to i32
  %cmp219 = icmp slt i32 %conv218, 0
  br i1 %cmp219, label %if.then221, label %if.else233

if.then221:                                       ; preds = %if.else217
  %v4222 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc1, i32 0, i32 3
  %57 = load i8, ptr %v4222, align 1
  %conv223 = sext i8 %57 to i32
  %58 = load i8, ptr %tmp183, align 1
  %conv224 = sext i8 %58 to i32
  %sub225 = sub nsw i32 -1, %conv224
  %shl226 = shl i32 1, %sub225
  %add227 = add nsw i32 %conv223, %shl226
  %59 = load i8, ptr %tmp183, align 1
  %conv228 = sext i8 %59 to i32
  %sub229 = sub nsw i32 0, %conv228
  %shr230 = ashr i32 %add227, %sub229
  %conv231 = trunc i32 %shr230 to i8
  %v4232 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 3
  store i8 %conv231, ptr %v4232, align 1
  br label %if.end240

if.else233:                                       ; preds = %if.else217
  %v4234 = getelementptr inbounds nuw %struct.neon_s8, ptr %vsrc1, i32 0, i32 3
  %60 = load i8, ptr %v4234, align 1
  %conv235 = sext i8 %60 to i32
  %61 = load i8, ptr %tmp183, align 1
  %conv236 = sext i8 %61 to i32
  %shl237 = shl i32 %conv235, %conv236
  %conv238 = trunc i32 %shl237 to i8
  %v4239 = getelementptr inbounds nuw %struct.neon_s8, ptr %vdest, i32 0, i32 3
  store i8 %conv238, ptr %v4239, align 1
  br label %if.end240

if.end240:                                        ; preds = %if.else233, %if.then221
  br label %if.end241

if.end241:                                        ; preds = %if.end240, %if.then203
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %if.then193
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %if.then187
  br label %do.end244

do.end244:                                        ; preds = %if.end243
  br label %do.body245

do.body245:                                       ; preds = %do.end244
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %conv_u246, ptr align 1 %vdest, i64 4, i1 false)
  %62 = load i32, ptr %conv_u246, align 4
  store i32 %62, ptr %res, align 4
  br label %do.end247

do.end247:                                        ; preds = %do.body245
  %63 = load i32, ptr %res, align 4
  ret i32 %63
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @helper_neon_rshl_s8(i32 noundef 84215045, i32 noundef 16843009)
  store i32 %call, ptr %r, align 4
  %0 = load i32, ptr %r, align 4
  %cmp = icmp ne i32 %0, 168430090
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
