; 181896268184958610506097229686049756383
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/181896268184958610506097229686049756383.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/181896268184958610506097229686049756383.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmp = type { i64 }
%struct.tmp2 = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@__const.main.tmp = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 35, i8 -15, i8 0, i8 -16, i8 -1, i8 0, i8 -16, i8 -1 }, align 8
@__const.main.tmp2 = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 15, i8 0, i8 -1, i8 15, i8 0, i8 -1, i8 63, i8 18 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @sub(i64 %tmp.coerce) #0 {
entry:
  %retval = alloca %struct.tmp, align 8
  %tmp = alloca %struct.tmp, align 8
  %coerce.dive = getelementptr inbounds nuw %struct.tmp, ptr %tmp, i32 0, i32 0
  store i64 %tmp.coerce, ptr %coerce.dive, align 8
  %bf.load = load i64, ptr %tmp, align 8
  %bf.ashr = ashr i64 %bf.load, 12
  %or = or i64 %bf.ashr, 2381903268435576
  %bf.load1 = load i64, ptr %tmp, align 8
  %bf.value = and i64 %or, 4503599627370495
  %bf.shl = shl i64 %bf.value, 12
  %bf.clear = and i64 %bf.load1, 4095
  %bf.set = or i64 %bf.clear, %bf.shl
  store i64 %bf.set, ptr %tmp, align 8
  %bf.result.shl = shl i64 %bf.value, 12
  %bf.result.ashr = ashr i64 %bf.result.shl, 12
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %tmp, i64 8, i1 false)
  %coerce.dive2 = getelementptr inbounds nuw %struct.tmp, ptr %retval, i32 0, i32 0
  %0 = load i64, ptr %coerce.dive2, align 8
  ret i64 %0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @sub2(i64 %tmp2.coerce) #0 {
entry:
  %retval = alloca %struct.tmp2, align 8
  %tmp2 = alloca %struct.tmp2, align 8
  %coerce.dive = getelementptr inbounds nuw %struct.tmp2, ptr %tmp2, i32 0, i32 0
  store i64 %tmp2.coerce, ptr %coerce.dive, align 8
  %bf.load = load i64, ptr %tmp2, align 8
  %bf.shl = shl i64 %bf.load, 12
  %bf.ashr = ashr i64 %bf.shl, 12
  %or = or i64 %bf.ashr, 2381903268435576
  %bf.load1 = load i64, ptr %tmp2, align 8
  %bf.value = and i64 %or, 4503599627370495
  %bf.clear = and i64 %bf.load1, -4503599627370496
  %bf.set = or i64 %bf.clear, %bf.value
  store i64 %bf.set, ptr %tmp2, align 8
  %bf.result.shl = shl i64 %bf.value, 12
  %bf.result.ashr = ashr i64 %bf.result.shl, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %tmp2, i64 8, i1 false)
  %coerce.dive2 = getelementptr inbounds nuw %struct.tmp2, ptr %retval, i32 0, i32 0
  %0 = load i64, ptr %coerce.dive2, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca %struct.tmp, align 8
  %tmp2 = alloca %struct.tmp2, align 8
  %tmp1 = alloca %struct.tmp, align 8
  %tmp3 = alloca %struct.tmp2, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp, ptr align 8 @__const.main.tmp, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp2, ptr align 8 @__const.main.tmp2, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds nuw %struct.tmp, ptr %tmp, i32 0, i32 0
  %0 = load i64, ptr %coerce.dive, align 8
  %call = call i64 @sub(i64 %0)
  %coerce.dive2 = getelementptr inbounds nuw %struct.tmp, ptr %tmp1, i32 0, i32 0
  store i64 %call, ptr %coerce.dive2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp, ptr align 8 %tmp1, i64 8, i1 false)
  %coerce.dive4 = getelementptr inbounds nuw %struct.tmp2, ptr %tmp2, i32 0, i32 0
  %1 = load i64, ptr %coerce.dive4, align 8
  %call5 = call i64 @sub2(i64 %1)
  %coerce.dive6 = getelementptr inbounds nuw %struct.tmp2, ptr %tmp3, i32 0, i32 0
  store i64 %call5, ptr %coerce.dive6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp2, ptr align 8 %tmp3, i64 8, i1 false)
  %bf.load = load i64, ptr %tmp, align 8
  %bf.shl = shl i64 %bf.load, 52
  %bf.ashr = ashr i64 %bf.shl, 52
  %conv = trunc i64 %bf.ashr to i32
  %cmp = icmp ne i32 %conv, 291
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %bf.load8 = load i64, ptr %tmp, align 8
  %bf.ashr9 = ashr i64 %bf.load8, 12
  %cmp10 = icmp ne i64 %bf.ashr9, -738197547393
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %bf.load12 = load i64, ptr %tmp2, align 8
  %bf.ashr13 = ashr i64 %bf.load12, 52
  %conv14 = trunc i64 %bf.ashr13 to i32
  %cmp15 = icmp ne i32 %conv14, 291
  br i1 %cmp15, label %if.then23, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end
  %bf.load18 = load i64, ptr %tmp2, align 8
  %bf.shl19 = shl i64 %bf.load18, 12
  %bf.ashr20 = ashr i64 %bf.shl19, 12
  %cmp21 = icmp ne i64 %bf.ashr20, -738197547393
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false17, %if.end
  call void @abort() #5
  unreachable

if.end24:                                         ; preds = %lor.lhs.false17
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
