; 126780525537852164645981676947906089609
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/126780525537852164645981676947906089609_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/126780525537852164645981676947906089609.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t = type { ptr, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @f(ptr noundef %clas, i32 noundef %size) local_unnamed_addr #0 {
entry:
  %size1 = getelementptr inbounds nuw i8, ptr %clas, i64 12
  %0 = load i32, ptr %size1, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 inttoptr (i64 80 to ptr), ptr align 8 %clas, i64 %conv, i1 false)
  store ptr %clas, ptr inttoptr (i64 80 to ptr), align 16, !tbaa !11
  store i32 0, ptr inttoptr (i64 88 to ptr), align 8, !tbaa !12
  store i32 %size, ptr inttoptr (i64 92 to ptr), align 4, !tbaa !5
  ret ptr inttoptr (i64 80 to ptr)
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %foo = alloca %struct.t, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %foo) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %foo, i8 37, i64 16, i1 false)
  %size = getelementptr inbounds nuw i8, ptr %foo, i64 12
  store i32 16, ptr %size, align 4, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) inttoptr (i64 80 to ptr), ptr noundef nonnull align 8 dereferenceable(16) %foo, i64 16, i1 false)
  store ptr %foo, ptr inttoptr (i64 80 to ptr), align 16, !tbaa !11
  store i32 0, ptr inttoptr (i64 88 to ptr), align 8, !tbaa !12
  store i32 16, ptr inttoptr (i64 92 to ptr), align 4, !tbaa !5
  call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !10, i64 12}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!6, !10, i64 8}
