; 167710366452373177289251415274184912387
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/167710366452373177289251415274184912387_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/167710366452373177289251415274184912387.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [28 x i8] c"This will never be printed.\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %A = alloca [30 x i8], align 16
  %B = alloca [30 x i8], align 16
  %C = alloca [30 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %A) #6
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %B) #6
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %C) #6
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %B, i8 1, i64 30, i1 false)
  %scevgep = getelementptr inbounds nuw i8, ptr %A, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %scevgep, i8 0, i64 10, i1 false), !tbaa !5
  %scevgep16 = getelementptr inbounds nuw i8, ptr %B, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %scevgep16, i8 0, i64 10, i1 false), !tbaa !5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %C, i8 1, i64 30, i1 false)
  %add.ptr = getelementptr inbounds nuw i8, ptr %C, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %add.ptr, i8 0, i64 10, i1 false)
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(30) %A, ptr noundef nonnull dereferenceable(30) %C, i64 30)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %bcmp14 = call i32 @bcmp(ptr noundef nonnull dereferenceable(30) %B, ptr noundef nonnull dereferenceable(30) %C, i64 30)
  %tobool11.not = icmp eq i32 %bcmp14, 0
  br i1 %tobool11.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @abort() #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %C) #6
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %B) #6
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %A) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #5

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree nounwind willreturn memory(argmem: read) }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
