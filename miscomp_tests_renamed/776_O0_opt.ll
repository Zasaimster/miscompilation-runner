; 113737501191888011998465140332272136519
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/113737501191888011998465140332272136519_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/113737501191888011998465140332272136519.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i16, [2 x i8] }

@__const.main.x = private unnamed_addr constant { i8, i8, [2 x i8] } { i8 -1, i8 1, [2 x i8] zeroinitializer }, align 4
@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca %struct.anon, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %x, ptr align 4 @__const.main.x, i64 4, i1 false)
  %bf.load = load i16, ptr %x, align 4
  %bf.lshr = lshr i16 %bf.load, 3
  %bf.clear = and i16 %bf.lshr, 7
  %bf.cast = zext i16 %bf.clear to i32
  %cmp = icmp ne i32 %bf.cast, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %bf.load1 = load i16, ptr %x, align 4
  %bf.shl = shl i16 %bf.load1, 13
  %bf.ashr = ashr i16 %bf.shl, 13
  %bf.cast2 = sext i16 %bf.ashr to i32
  %cmp3 = icmp ne i32 %bf.cast2, -1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @abort() #5
  unreachable

if.end5:                                          ; preds = %if.end
  %bf.load6 = load i16, ptr %x, align 4
  %bf.shl7 = shl i16 %bf.load6, 7
  %bf.ashr8 = ashr i16 %bf.shl7, 13
  %bf.cast9 = sext i16 %bf.ashr8 to i32
  %cmp10 = icmp ne i32 %bf.cast9, -1
  br i1 %cmp10, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end5
  %bf.load11 = load i16, ptr %x, align 4
  %bf.shl12 = shl i16 %bf.load11, 7
  %bf.ashr13 = ashr i16 %bf.shl12, 13
  %bf.cast14 = sext i16 %bf.ashr13 to i32
  %cmp15 = icmp ne i32 %bf.cast14, 7
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true
  call void @abort() #5
  unreachable

if.end17:                                         ; preds = %land.lhs.true, %if.end5
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
