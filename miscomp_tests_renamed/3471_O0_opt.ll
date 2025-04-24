; 160745556720641471296752206237546908871
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/160745556720641471296752206237546908871_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/160745556720641471296752206237546908871.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@which_alternative = internal global i32 3, align 4
@.str = private unnamed_addr constant [9 x i8] c"ld\09%1,%0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"st\09%1,%0\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"foo\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @output_25()
  store ptr %call, ptr %s, align 8
  %0 = load ptr, ptr %s, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 115
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @output_25() #0 {
entry:
  %retval = alloca ptr, align 8
  %0 = load i32, ptr @which_alternative, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %call = call ptr @i960_output_ldconst()
  store ptr %call, ptr %retval, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store ptr @.str, ptr %retval, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store ptr @.str.1, ptr %retval, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb, %entry
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal ptr @i960_output_ldconst() #0 {
entry:
  ret ptr @.str.2
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
