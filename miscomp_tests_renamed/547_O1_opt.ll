; 105443270812615458876141143254057089140
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/105443270812615458876141143254057089140_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/105443270812615458876141143254057089140.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._st = type { i64 }

@next = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @example6(i32 noundef %flag) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @f() local_unnamed_addr #2 {
entry:
  %0 = load ptr, ptr @next, align 8, !tbaa !5
  %bf.load = load i64, ptr %0, align 4
  %bf.clear = and i64 %bf.load, -16777216
  %bf.set = or disjoint i64 %bf.clear, 16711422
  store i64 %bf.set, ptr %0, align 4
  %1 = load ptr, ptr @next, align 8, !tbaa !5
  %bf.load3 = load i64, ptr %1, align 4
  %bf.clear5 = and i64 %bf.load3, -72057589742960641
  %bf.set6 = or disjoint i64 %bf.clear5, 71775010959654912
  store i64 %bf.set6, ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %a = alloca %struct._st, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #4
  store ptr %a, ptr @next, align 8, !tbaa !5
  %bf.load.i = load i64, ptr %a, align 8
  %bf.clear.i = and i64 %bf.load.i, -72057589759737856
  %bf.set6.i = or disjoint i64 %bf.clear.i, 71775010976366334
  store i64 %bf.set6.i, ptr %a, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #4
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTS3_st", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
