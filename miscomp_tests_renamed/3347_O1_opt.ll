; 164290758517691360620574325490909856500
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/164290758517691360620574325490909856500_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/164290758517691360620574325490909856500.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = tail call x86_fp80 asm sideeffect "fsqrt", "={st},0,~{dirflag},~{fpsr},~{flags}"(x86_fp80 0xK3FFF8000000000000000) #1, !srcloc !5
  %1 = tail call x86_fp80 asm sideeffect "fpatan\0A\09", "={st},0,{st(1)},~{st(1)},~{dirflag},~{fpsr},~{flags}"(x86_fp80 %0, x86_fp80 0xK80000000000000000000) #1, !srcloc !6
  ret i32 0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{i64 567}
!6 = !{i64 363, i64 372}
