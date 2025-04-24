; 164368214312446456369336212107484278946
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/164368214312446456369336212107484278946.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/164368214312446456369336212107484278946.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i32, %struct.anon }
%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"This function is never used.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %v = alloca %struct.s, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %x = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 0
  store i32 %call, ptr %x, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %nest = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 1
  %y = getelementptr inbounds nuw %struct.anon, ptr %nest, i32 0, i32 0
  store i32 %call1, ptr %y, align 4
  %nest2 = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 1
  %z = getelementptr inbounds nuw %struct.anon, ptr %nest2, i32 0, i32 1
  store i32 3, ptr %z, align 4
  %x3 = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 0
  %0 = load i32, ptr %x3, align 4
  %nest4 = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 1
  %y5 = getelementptr inbounds nuw %struct.anon, ptr %nest4, i32 0, i32 0
  %1 = load i32, ptr %y5, align 4
  %add = add nsw i32 %0, %1
  %nest6 = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 1
  %z7 = getelementptr inbounds nuw %struct.anon, ptr %nest6, i32 0, i32 1
  %2 = load i32, ptr %z7, align 4
  %add8 = add nsw i32 %add, %2
  %cmp = icmp ne i32 %add8, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
