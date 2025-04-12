; 180333791191493426069398412075554941558
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/180333791191493426069398412075554941558.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/180333791191493426069398412075554941558.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Function called\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @foo(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %call1 = tail call i32 (i32, ...) @square(i32 noundef 5) #5
  %tobool2 = icmp ne i32 %call1, 0
  %0 = zext i1 %tobool2 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %lor.ext = phi i32 [ 1, %entry ], [ %0, %lor.rhs ]
  ret i32 %lor.ext
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

declare i32 @square(...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @bar(i32 noundef %x) local_unnamed_addr #3 {
entry:
  %0 = icmp ne i32 %x, 0
  %lor.ext = zext i1 %0 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.end

lor.rhs.i:                                        ; preds = %entry
  %call1.i = tail call i32 (i32, ...) @square(i32 noundef 5) #5
  %tobool2.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool2.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.rhs.i
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry, %lor.rhs.i
  %call.i21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %tobool.not.i22 = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i22, label %lor.rhs.i24, label %if.then3

lor.rhs.i24:                                      ; preds = %if.end
  %call1.i25 = tail call i32 (i32, ...) @square(i32 noundef 5) #5
  %tobool2.i26.not = icmp eq i32 %call1.i25, 0
  br i1 %tobool2.i26.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end, %lor.rhs.i24
  tail call void @abort() #6
  unreachable

if.end4:                                          ; preds = %lor.rhs.i24
  %call.i28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %lor.rhs.i31, label %if.end20

lor.rhs.i31:                                      ; preds = %if.end4
  %call1.i32 = tail call i32 (i32, ...) @square(i32 noundef 5) #5
  %tobool2.i33.not = icmp eq i32 %call1.i32, 0
  br i1 %tobool2.i33.not, label %if.then7, label %if.end20

if.then7:                                         ; preds = %lor.rhs.i31
  tail call void @abort() #6
  unreachable

if.end20:                                         ; preds = %if.end4, %lor.rhs.i31
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
