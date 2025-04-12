; 199315969482348698715148534923646342803
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/199315969482348698715148534923646342803_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/199315969482348698715148534923646342803.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a = type { i32 }
%struct.c = type { %struct.b }
%struct.b = type { %struct.a }

@a = dso_local global %struct.a { i32 1 }, align 4
@val = dso_local global i32 0, align 4
@cptr = dso_local global ptr @val, align 8
@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@a2 = dso_local global %struct.a zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 2, ptr @val, align 4
  %0 = load ptr, ptr @cptr, align 8
  %b = getelementptr inbounds nuw %struct.c, ptr %0, i32 0, i32 0
  %a = getelementptr inbounds nuw %struct.b, ptr %b, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 @a2, ptr align 4 %a, i64 4, i1 false)
  %1 = load i32, ptr @a2, align 4
  %2 = load i32, ptr @a, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
