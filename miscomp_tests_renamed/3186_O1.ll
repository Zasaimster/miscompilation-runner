; 153875624916300545482595998758406115200
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/153875624916300545482595998758406115200.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/153875624916300545482595998758406115200.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i0 = dso_local global i32 0, align 4
@ca = dso_local constant [2 x [3 x i8]] [[3 x i8] c"12\00", [3 x i8] zeroinitializer], align 1
@cb = dso_local constant [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"4\00\00"], align 1
@va = dso_local global [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] zeroinitializer], align 1
@vb = dso_local global [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"45\00"], align 1
@.str = private unnamed_addr constant [7 x i8] c"123456\00", align 1
@s = dso_local local_unnamed_addr global ptr @.str, align 8
@pca = dso_local local_unnamed_addr global ptr @ca, align 8
@pcb = dso_local local_unnamed_addr global ptr @cb, align 8
@pva = dso_local local_unnamed_addr global ptr @va, align 8
@pvb = dso_local local_unnamed_addr global ptr @vb, align 8
@nfails = dso_local local_unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@__const.test_binary_cond_expr_local.lva = private unnamed_addr constant [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] zeroinitializer], align 1
@__const.test_binary_cond_expr_local.lvb = private unnamed_addr constant [2 x [3 x i8]] [[3 x i8] c"123", [3 x i8] c"45\00"], align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"1234\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %lca.i = alloca [2 x [3 x i8]], align 1
  %lcb.i = alloca [2 x [3 x i8]], align 1
  %lva.i = alloca [2 x [3 x i8]], align 1
  %lvb.i = alloca [2 x [3 x i8]], align 1
  %0 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %tobool.not.i = icmp eq i32 %0, 0
  %cond.i = select i1 %tobool.not.i, ptr @ca, ptr @.str.1
  %call.i = tail call i32 (ptr, i32, ...) @A(ptr noundef nonnull %cond.i, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %lca.i) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %lca.i, ptr noundef nonnull align 1 dereferenceable(6) @ca, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %lcb.i) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %lcb.i, ptr noundef nonnull align 1 dereferenceable(6) @cb, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %lva.i) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %lva.i, ptr noundef nonnull align 1 dereferenceable(6) @__const.test_binary_cond_expr_local.lva, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %lvb.i) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %lvb.i, ptr noundef nonnull align 1 dereferenceable(6) @__const.test_binary_cond_expr_local.lvb, i64 6, i1 false)
  %1 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %tobool.not.i1 = icmp eq i32 %1, 0
  %cond.i2 = select i1 %tobool.not.i1, ptr %lca.i, ptr @.str.1
  %call.i3 = call i32 (ptr, i32, ...) @A(ptr noundef nonnull %cond.i2, i32 noundef 2) #5
  %2 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %tobool1.not.i = icmp eq i32 %2, 0
  %cond7.i = select i1 %tobool1.not.i, ptr @.str.2, ptr %lca.i
  %call8.i = call i32 (ptr, i32, ...) @A(ptr noundef nonnull %cond7.i, i32 noundef 3) #5
  %3 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %tobool9.not.i = icmp eq i32 %3, 0
  %cond15.i = select i1 %tobool9.not.i, ptr %lcb.i, ptr @.str.1
  %call16.i = call i32 (ptr, i32, ...) @A(ptr noundef nonnull %cond15.i, i32 noundef 4) #5
  %4 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %tobool17.not.i = icmp eq i32 %4, 0
  %cond23.i = select i1 %tobool17.not.i, ptr @.str.3, ptr %lcb.i
  %call24.i = call i32 (ptr, i32, ...) @A(ptr noundef nonnull %cond23.i, i32 noundef 2) #5
  %5 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %tobool25.not.i = icmp eq i32 %5, 0
  %cond31.i = select i1 %tobool25.not.i, ptr %lva.i, ptr @.str.1
  %call32.i = call i32 (ptr, i32, ...) @A(ptr noundef nonnull %cond31.i, i32 noundef 3) #5
  %6 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %tobool33.not.i = icmp eq i32 %6, 0
  %cond39.i = select i1 %tobool33.not.i, ptr @.str.4, ptr %lva.i
  %call40.i = call i32 (ptr, i32, ...) @A(ptr noundef nonnull %cond39.i, i32 noundef 4) #5
  %7 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %tobool41.not.i = icmp eq i32 %7, 0
  %cond47.i = select i1 %tobool41.not.i, ptr %lvb.i, ptr @.str.1
  %call48.i = call i32 (ptr, i32, ...) @A(ptr noundef nonnull %cond47.i, i32 noundef 5) #5
  %8 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %tobool49.not.i = icmp eq i32 %8, 0
  %cond55.i = select i1 %tobool49.not.i, ptr @.str.3, ptr %lvb.i
  %call56.i = call i32 (ptr, i32, ...) @A(ptr noundef nonnull %cond55.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %lvb.i) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %lva.i) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %lcb.i) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %lca.i) #5
  %9 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  %10 = load ptr, ptr @s, align 8, !tbaa !9
  br label %cond.end.i

cond.false.i:                                     ; preds = %entry
  %11 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %cmp1.i = icmp eq i32 %11, 1
  %cond.i4 = select i1 %cmp1.i, ptr @vb, ptr @.str.2
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond2.i = phi ptr [ %10, %cond.true.i ], [ %cond.i4, %cond.false.i ]
  %call.i5 = call i32 (ptr, i32, ...) @A(ptr noundef %cond2.i, i32 noundef 6) #5
  %12 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %cmp3.i = icmp eq i32 %12, 0
  br i1 %cmp3.i, label %cond.end11.i, label %cond.false5.i

cond.false5.i:                                    ; preds = %cond.end.i
  %13 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %cmp6.i = icmp eq i32 %13, 1
  %14 = load ptr, ptr @s, align 8
  %cond10.i = select i1 %cmp6.i, ptr %14, ptr @.str.2
  br label %cond.end11.i

cond.end11.i:                                     ; preds = %cond.false5.i, %cond.end.i
  %cond12.i = phi ptr [ %cond10.i, %cond.false5.i ], [ @vb, %cond.end.i ]
  %call13.i = call i32 (ptr, i32, ...) @A(ptr noundef %cond12.i, i32 noundef 5) #5
  %15 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %cmp14.i = icmp eq i32 %15, 0
  br i1 %cmp14.i, label %test_ternary_cond_expr.exit, label %cond.false16.i

cond.false16.i:                                   ; preds = %cond.end11.i
  %16 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %cmp17.i = icmp eq i32 %16, 1
  %17 = load ptr, ptr @s, align 8
  %cond21.i = select i1 %cmp17.i, ptr %17, ptr @vb
  br label %test_ternary_cond_expr.exit

test_ternary_cond_expr.exit:                      ; preds = %cond.end11.i, %cond.false16.i
  %cond23.i6 = phi ptr [ %cond21.i, %cond.false16.i ], [ @.str.2, %cond.end11.i ]
  %call24.i7 = call i32 (ptr, i32, ...) @A(ptr noundef %cond23.i6, i32 noundef 3) #5
  %18 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %tobool.not.i8 = icmp eq i32 %18, 0
  %19 = load ptr, ptr @pca, align 8
  %20 = load ptr, ptr @pcb, align 8
  %cond.i9 = select i1 %tobool.not.i8, ptr %20, ptr %19
  %call.i10 = call i32 (ptr, i32, ...) @A(ptr noundef %cond.i9, i32 noundef 4) #5
  %21 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %tobool2.not.i = icmp eq i32 %21, 0
  %22 = load ptr, ptr @pcb, align 8
  %23 = load ptr, ptr @pca, align 8
  %cond8.i = select i1 %tobool2.not.i, ptr %23, ptr %22
  %call9.i = call i32 (ptr, i32, ...) @A(ptr noundef %cond8.i, i32 noundef 2) #5
  %24 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %tobool10.not.i = icmp eq i32 %24, 0
  %25 = load ptr, ptr @pva, align 8
  %26 = load ptr, ptr @pvb, align 8
  %cond16.i = select i1 %tobool10.not.i, ptr %26, ptr %25
  %call17.i = call i32 (ptr, i32, ...) @A(ptr noundef %cond16.i, i32 noundef 5) #5
  %27 = load volatile i32, ptr @i0, align 4, !tbaa !5
  %tobool18.not.i = icmp eq i32 %27, 0
  %28 = load ptr, ptr @pvb, align 8
  %29 = load ptr, ptr @pva, align 8
  %cond24.i = select i1 %tobool18.not.i, ptr %29, ptr %28
  %call25.i = call i32 (ptr, i32, ...) @A(ptr noundef %cond24.i, i32 noundef 3) #5
  %30 = load i32, ptr @nfails, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %test_ternary_cond_expr.exit
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %test_ternary_cond_expr.exit
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

declare i32 @A(...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
