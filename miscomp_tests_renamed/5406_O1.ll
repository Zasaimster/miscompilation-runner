; 149523282359834115331731787108679284528
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/149523282359834115331731787108679284528.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/149523282359834115331731787108679284528.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @f(i32 noundef %value, i32 noundef %expect) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %value, %expect
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  %call = tail call i32 (...) @compute() #6
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

declare i32 @compute(...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %call.i = tail call i32 (...) @compute() #6
  %call.i153 = tail call i32 (...) @compute() #6
  %call.i154 = tail call i32 (...) @compute() #6
  %call.i155 = tail call i32 (...) @compute() #6
  %call.i156 = tail call i32 (...) @compute() #6
  %call.i157 = tail call i32 (...) @compute() #6
  %call.i158 = tail call i32 (...) @compute() #6
  %call.i159 = tail call i32 (...) @compute() #6
  %call.i160 = tail call i32 (...) @compute() #6
  %call.i161 = tail call i32 (...) @compute() #6
  %call.i162 = tail call i32 (...) @compute() #6
  %call.i163 = tail call i32 (...) @compute() #6
  %call.i164 = tail call i32 (...) @compute() #6
  %call.i165 = tail call i32 (...) @compute() #6
  %call.i166 = tail call i32 (...) @compute() #6
  %call.i167 = tail call i32 (...) @compute() #6
  %call.i168 = tail call i32 (...) @compute() #6
  %call.i169 = tail call i32 (...) @compute() #6
  %call.i170 = tail call i32 (...) @compute() #6
  %call.i171 = tail call i32 (...) @compute() #6
  %call.i172 = tail call i32 (...) @compute() #6
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
