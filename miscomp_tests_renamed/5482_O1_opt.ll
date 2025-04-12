; 127051363724027408667777853485693021175
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/127051363724027408667777853485693021175_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/127051363724027408667777853485693021175.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baz = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"Value: %d\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @bar(ptr noundef %x, i32 noundef %f, i32 noundef %g, i32 noundef %h, i32 noundef %i, i32 noundef %j) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %x)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @foo(ptr noundef byval(%struct.baz) align 8 %x, ptr noundef readnone captures(none) %y) local_unnamed_addr #0 {
entry:
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %x)
  ret void
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %x1 = alloca %struct.baz, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %x1)
  store i32 1, ptr %x1, align 8
  %x.sroa.3.0.x1.sroa_idx = getelementptr inbounds nuw i8, ptr %x1, i64 4
  store i32 2, ptr %x.sroa.3.0.x1.sroa_idx, align 4
  %x.sroa.4.0.x1.sroa_idx = getelementptr inbounds nuw i8, ptr %x1, i64 8
  store i32 3, ptr %x.sroa.4.0.x1.sroa_idx, align 8
  %x.sroa.5.0.x1.sroa_idx = getelementptr inbounds nuw i8, ptr %x1, i64 12
  store i32 4, ptr %x.sroa.5.0.x1.sroa_idx, align 4
  %x.sroa.6.0.x1.sroa_idx = getelementptr inbounds nuw i8, ptr %x1, i64 16
  store i32 5, ptr %x.sroa.6.0.x1.sroa_idx, align 8
  %call.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull align 8 %x1)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %x1)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
