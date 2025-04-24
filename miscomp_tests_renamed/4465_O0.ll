; 178408234541048723814052116301907392749
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/178408234541048723814052116301907392749.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/178408234541048723814052116301907392749.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i32, %struct.anon }
%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"This won't be called.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %v = alloca %struct.s, align 4
  store i32 0, ptr %retval, align 4
  %x = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 0
  store i32 1, ptr %x, align 4
  %nest = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 1
  %y = getelementptr inbounds nuw %struct.anon, ptr %nest, i32 0, i32 0
  store i32 2, ptr %y, align 4
  %nest1 = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 1
  %z = getelementptr inbounds nuw %struct.anon, ptr %nest1, i32 0, i32 1
  store i32 3, ptr %z, align 4
  %x2 = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 0
  %0 = load i32, ptr %x2, align 4
  %nest3 = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 1
  %y4 = getelementptr inbounds nuw %struct.anon, ptr %nest3, i32 0, i32 0
  %1 = load i32, ptr %y4, align 4
  %add = add nsw i32 %0, %1
  %nest5 = getelementptr inbounds nuw %struct.s, ptr %v, i32 0, i32 1
  %z6 = getelementptr inbounds nuw %struct.anon, ptr %nest5, i32 0, i32 1
  %2 = load i32, ptr %z6, align 4
  %add7 = add nsw i32 %add, %2
  %cmp = icmp ne i32 %add7, 6
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @deadFunction() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
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
