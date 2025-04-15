; 167804481796673597793974741366922706111
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/167804481796673597793974741366922706111.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/167804481796673597793974741366922706111.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32 }
%struct.B = type { ptr, ptr }
%struct.C = type { ptr, ptr }

@.compoundliteral = internal global %struct.A { i32 1, i32 2 }, align 4
@.compoundliteral.1 = internal global %struct.A { i32 3, i32 4 }, align 4
@.compoundliteral.2 = internal global %struct.B { ptr @.compoundliteral, ptr @.compoundliteral.1 }, align 8
@.compoundliteral.3 = internal global %struct.A { i32 5, i32 6 }, align 4
@e = dso_local global %struct.C { ptr @.compoundliteral.2, ptr @.compoundliteral.3 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load ptr, ptr @e, align 8
  %b = getelementptr inbounds nuw %struct.B, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %b, align 8
  %i = getelementptr inbounds nuw %struct.A, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %i, align 4
  %cmp = icmp ne i32 %2, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr @e, align 8
  %b1 = getelementptr inbounds nuw %struct.B, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %b1, align 8
  %j = getelementptr inbounds nuw %struct.A, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %j, align 4
  %cmp2 = icmp ne i32 %5, 4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr getelementptr inbounds nuw (%struct.C, ptr @e, i32 0, i32 1), align 8
  %i3 = getelementptr inbounds nuw %struct.A, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %i3, align 4
  %cmp4 = icmp ne i32 %7, 5
  br i1 %cmp4, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %8 = load ptr, ptr getelementptr inbounds nuw (%struct.C, ptr @e, i32 0, i32 1), align 8
  %j6 = getelementptr inbounds nuw %struct.A, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %j6, align 4
  %cmp7 = icmp ne i32 %9, 6
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false5, %if.end
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %lor.lhs.false5
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
