; 138144250082502671240944276749763846541
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/138144250082502671240944276749763846541_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/138144250082502671240944276749763846541.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @test_endianness() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree norecurse nounwind memory(inaccessiblemem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @test_endianness_vol() local_unnamed_addr #2 {
entry:
  %dw.sroa.0 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dw.sroa.0)
  store volatile i64 4621819117588971520, ptr %dw.sroa.0, align 8, !tbaa !5
  %dw.sroa.0.0.dw.sroa.0.0.dw.sroa.0.0.dw.sroa.0.0.dw.sroa.0.0. = load volatile i64, ptr %dw.sroa.0, align 8, !tbaa !5
  %cmp.not = icmp ne i64 %dw.sroa.0.0.dw.sroa.0.0.dw.sroa.0.0.dw.sroa.0.0.dw.sroa.0.0., 0
  %cond = zext i1 %cmp.not to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dw.sroa.0)
  ret i32 %cond
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %dw.sroa.0.i = alloca i64, align 8
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dw.sroa.0.i)
  store volatile i64 4621819117588971520, ptr %dw.sroa.0.i, align 8, !tbaa !5
  %dw.sroa.0.i.0.dw.sroa.0.i.0.dw.sroa.0.i.0.dw.sroa.0.0.dw.sroa.0.0.dw.sroa.0.0.dw.sroa.0.0..i = load volatile i64, ptr %dw.sroa.0.i, align 8, !tbaa !5
  %cmp.not.i.not = icmp eq i64 %dw.sroa.0.i.0.dw.sroa.0.i.0.dw.sroa.0.i.0.dw.sroa.0.0.dw.sroa.0.0.dw.sroa.0.0.dw.sroa.0.0..i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dw.sroa.0.i)
  br i1 %cmp.not.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #7
  unreachable

if.end:                                           ; preds = %entry
  tail call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nounwind memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
