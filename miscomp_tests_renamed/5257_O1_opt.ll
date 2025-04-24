; 192896638930389990982382472327050859749
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/192896638930389990982382472327050859749_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/192896638930389990982382472327050859749.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Function called\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test1(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (i32, ...) @square(i32 noundef 5) #6
  %call.off = add i32 %call, -20
  %cmp = icmp ult i32 %call.off, 10
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @square(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @test2(i32 noundef %x) local_unnamed_addr #2 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %call.off = add i32 %call, 9
  %cmp = icmp ult i32 %call.off, 19
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @test3(i32 noundef %x) local_unnamed_addr #4 {
entry:
  %x.off = add i32 %x, 29
  %cmp = icmp ult i32 %x.off, 10
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @test4(i32 noundef %x) local_unnamed_addr #4 {
entry:
  %x.off = add i32 %x, 29
  %cmp = icmp ult i32 %x.off, 10
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @test5(i32 noundef %x) local_unnamed_addr #4 {
entry:
  %x.off = add i32 %x, 9
  %cmp = icmp ult i32 %x.off, 19
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @test6(i32 noundef %x) local_unnamed_addr #4 {
entry:
  %x.off = add i32 %x, -20
  %cmp = icmp ult i32 %x.off, 10
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (i32, ...) @square(i32 noundef 5) #6
  %0 = add i32 %call.i, -30
  %cmp.i = icmp ult i32 %0, -10
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #7
  unreachable

if.end:                                           ; preds = %entry
  %call.i93 = tail call i32 (i32, ...) @square(i32 noundef 5) #6
  %1 = add i32 %call.i93, -30
  %cmp.i95 = icmp ult i32 %1, -10
  br i1 %cmp.i95, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @abort() #7
  unreachable

if.end4:                                          ; preds = %if.end
  %call.i97 = tail call i32 (i32, ...) @square(i32 noundef 5) #6
  %2 = add i32 %call.i97, -30
  %cmp.i99 = icmp ult i32 %2, -10
  br i1 %cmp.i99, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  tail call void @abort() #7
  unreachable

if.end8:                                          ; preds = %if.end4
  %call.i101 = tail call i32 (i32, ...) @square(i32 noundef 5) #6
  %3 = add i32 %call.i101, -30
  %cmp.i103 = icmp ult i32 %3, -10
  br i1 %cmp.i103, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  tail call void @abort() #7
  unreachable

if.end12:                                         ; preds = %if.end8
  %call.i105 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %4 = add i32 %call.i105, -10
  %cmp.i107 = icmp ult i32 %4, -19
  br i1 %cmp.i107, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  tail call void @abort() #7
  unreachable

if.end16:                                         ; preds = %if.end12
  %call.i109 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %5 = add i32 %call.i109, -10
  %cmp.i111 = icmp ult i32 %5, -19
  br i1 %cmp.i111, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  tail call void @abort() #7
  unreachable

if.end20:                                         ; preds = %if.end16
  %call.i113 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %6 = add i32 %call.i113, -10
  %cmp.i115 = icmp ult i32 %6, -19
  br i1 %cmp.i115, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  tail call void @abort() #7
  unreachable

if.end24:                                         ; preds = %if.end20
  %call.i117 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %7 = add i32 %call.i117, -10
  %cmp.i119 = icmp ult i32 %7, -19
  br i1 %cmp.i119, label %if.end92, label %if.then27

if.then27:                                        ; preds = %if.end24
  tail call void @abort() #7
  unreachable

if.end92:                                         ; preds = %if.end24
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
