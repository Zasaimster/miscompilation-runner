; 116798997237123592935148927406682955076
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/116798997237123592935148927406682955076.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/116798997237123592935148927406682955076.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Main function executed.\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483646, -2147483648) i32 @test_store_ccp(i32 noundef %i) local_unnamed_addr #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c)
  %call = tail call i32 (...) @printHello() #6
  %cmp = icmp slt i32 %call, 5
  br i1 %cmp, label %if.end5, label %if.else

if.else:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp2 = icmp sgt i32 %call1, 8
  %b.c = select i1 %cmp2, ptr %b, ptr %c
  br label %if.end5

if.end5:                                          ; preds = %if.else, %entry
  %p.0 = phi ptr [ %a, %entry ], [ %b.c, %if.else ]
  store i32 10, ptr %p.0, align 4, !tbaa !5
  store i32 3, ptr %b, align 4, !tbaa !5
  %0 = load i32, ptr %p.0, align 4, !tbaa !5
  %add = add nsw i32 %0, 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a)
  ret i32 %add
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printHello(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @test_store_copy_prop(i32 noundef %i) local_unnamed_addr #4 {
entry:
  %cmp1 = icmp sgt i32 %i, 8
  %.sroa.speculate.load.false.sroa.speculated = zext i1 %cmp1 to i32
  %.sroa.speculated = add nsw i32 %i, %.sroa.speculate.load.false.sroa.speculated
  ret i32 %.sroa.speculated
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a.i = alloca i32, align 4
  %b.i = alloca i32, align 4
  %c.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i)
  %call.i = tail call i32 (...) @printHello() #6
  %cmp.i = icmp slt i32 %call.i, 5
  br i1 %cmp.i, label %test_store_ccp.exit, label %if.else.i

if.else.i:                                        ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp2.i = icmp sgt i32 %call1.i, 8
  %b.c.i = select i1 %cmp2.i, ptr %b.i, ptr %c.i
  br label %test_store_ccp.exit

test_store_ccp.exit:                              ; preds = %entry, %if.else.i
  %p.0.i = phi ptr [ %a.i, %entry ], [ %b.c.i, %if.else.i ]
  store i32 10, ptr %p.0.i, align 4, !tbaa !5
  store i32 3, ptr %b.i, align 4, !tbaa !5
  %0 = load i32, ptr %p.0.i, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a.i)
  %cmp = icmp eq i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %test_store_ccp.exit
  tail call void @abort() #7
  unreachable

if.end4:                                          ; preds = %test_store_ccp.exit
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
