; 143922131965942938082784471287708877895
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/143922131965942938082784471287708877895_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/143922131965942938082784471287708877895.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baz = type { i32, i32, i32 }

@c = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @computeValue() local_unnamed_addr #0 {
entry:
  ret i32 42
}

; Function Attrs: nounwind uwtable
define dso_local void @foo(i64 %a.coerce0, i32 %a.coerce1, i32 noundef %b) local_unnamed_addr #1 {
entry:
  %a = alloca %struct.baz, align 8
  store i64 %a.coerce0, ptr %a, align 8
  %coerce.sroa.2.0.a.sroa_idx = getelementptr inbounds nuw i8, ptr %a, i64 8
  store i32 %a.coerce1, ptr %coerce.sroa.2.0.a.sroa_idx, align 8
  store ptr %a, ptr @c, align 8, !tbaa !5
  %call = call i32 (i32, ...) @bar(i32 noundef %b) #6
  ret void
}

declare i32 @bar(...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %a.i = alloca %struct.baz, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %a.i)
  store i64 8589934593, ptr %a.i, align 8
  %coerce.sroa.2.0.a.sroa_idx.i = getelementptr inbounds nuw i8, ptr %a.i, i64 8
  store i32 3, ptr %coerce.sroa.2.0.a.sroa_idx.i, align 8
  store ptr %a.i, ptr @c, align 8, !tbaa !5
  %call.i = call i32 (i32, ...) @bar(i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %a.i)
  call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTS3baz", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
