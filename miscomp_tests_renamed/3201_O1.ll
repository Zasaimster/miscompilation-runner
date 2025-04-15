; 14369335251191820430731613703350142954
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/14369335251191820430731613703350142954.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/14369335251191820430731613703350142954.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32 }

@f = dso_local local_unnamed_addr global %struct.anon zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @foo(i16 noundef signext %j) local_unnamed_addr #0 {
entry:
  %bf.load = load i32, ptr @f, align 4
  %bf.clear = and i32 %bf.load, -536870912
  %bf.set = or disjoint i32 %bf.clear, 536870857
  store i32 %bf.set, ptr @f, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %bf.load.i = load i32, ptr @f, align 4
  %bf.clear.i = and i32 %bf.load.i, -536870912
  %bf.set.i = or disjoint i32 %bf.clear.i, 536870857
  store i32 %bf.set.i, ptr @f, align 4
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
