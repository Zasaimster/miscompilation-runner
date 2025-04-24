; 132313697535659885792839630654418235569
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/132313697535659885792839630654418235569_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/132313697535659885792839630654418235569.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i32, i32, i32, ptr, float }

; Function Attrs: nofree nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @f1(ptr noundef readonly byval(%struct.foo) align 8 %f, ptr noundef readonly captures(none) %p, i32 noundef %n, ...) local_unnamed_addr #0 {
entry:
  %call = call i32 (ptr, ptr, i32, ...) @f1(ptr noundef nonnull byval(%struct.foo) align 8 %f, ptr noundef nonnull %f, i32 noundef 2, i32 noundef 1, ptr noundef nonnull byval(%struct.foo) align 8 %f, ptr noundef nonnull %f)
  %0 = load i32, ptr %p, align 8, !tbaa !5
  %cmp.not = icmp eq i32 %call, %0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %j = getelementptr inbounds nuw i8, ptr %p, i64 4
  %1 = load i32, ptr %j, align 4, !tbaa !13
  %add = add nsw i32 %1, %n
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %add, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %f = alloca %struct.foo, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %f) #3
  %j = getelementptr inbounds nuw i8, ptr %f, i64 4
  store i32 1, ptr %j, align 4, !tbaa !13
  store i32 1, ptr %f, align 8, !tbaa !5
  %call = call i32 (ptr, ptr, i32, ...) @f1(ptr noundef nonnull byval(%struct.foo) align 8 %f, ptr noundef nonnull %f, i32 noundef 2)
  %call1 = call i32 (ptr, ptr, i32, ...) @f1(ptr noundef nonnull byval(%struct.foo) align 8 %f, ptr noundef nonnull %f, i32 noundef 2, i32 noundef 1, ptr noundef nonnull byval(%struct.foo) align 8 %f, ptr noundef nonnull %f)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %f) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

attributes #0 = { nofree nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"foo", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !12, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!6, !7, i64 4}
