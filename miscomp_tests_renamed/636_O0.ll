; 111441248305178004150353528948824874103
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/111441248305178004150353528948824874103.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/111441248305178004150353528948824874103.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca [0 x i32], align 4
  %r = alloca ptr, align 8
  %s = alloca %struct.rtx_def, align 4
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr %s, ptr %r, align 8
  %0 = load ptr, ptr %r, align 8
  %code = getelementptr inbounds nuw %struct.rtx_def, ptr %0, i32 0, i32 0
  store i32 39, ptr %code, align 4
  %arraydecay = getelementptr inbounds [0 x i32], ptr %tmp, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %add.ptr = getelementptr inbounds i32, ptr %1, i64 1
  store ptr %add.ptr, ptr %q, align 8
  %2 = load ptr, ptr %q, align 8
  store i32 0, ptr %2, align 4
  %arrayidx = getelementptr inbounds [0 x i32], ptr %tmp, i64 0, i64 1
  store i32 39, ptr %arrayidx, align 4
  %3 = load ptr, ptr %q, align 8
  %4 = load i32, ptr %3, align 4
  %cmp = icmp ne i32 %4, 39
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

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
