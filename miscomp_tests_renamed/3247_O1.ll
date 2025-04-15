; 139419908904968607347167029417569664275
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/139419908904968607347167029417569664275.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/139419908904968607347167029417569664275.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str = private unnamed_addr constant [4 x i8] c"joe\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @func6() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @joe() local_unnamed_addr #1 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret i32 1
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %call = tail call i32 (...) @fred() #6
  %tobool.not = icmp ne i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %land.ext = zext i1 %tobool.not to i32
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %land.ext)
  %call4 = tail call i32 (...) @fred() #6
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.end
  %puts.i60 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.end
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 1)
  %puts.i61 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %call12 = tail call i32 (...) @fred() #6
  %tobool13 = icmp ne i32 %call12, 0
  %land.ext15 = zext i1 %tobool13 to i32
  %call16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %land.ext15)
  %puts.i62 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %call24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 1)
  %call25 = tail call i32 (...) @fred() #6
  %tobool26.not = icmp ne i32 %call25, 0
  br i1 %tobool26.not, label %land.rhs27, label %land.end30

land.rhs27:                                       ; preds = %lor.end
  %puts.i63 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %land.end30

land.end30:                                       ; preds = %land.rhs27, %lor.end
  %land.ext31 = zext i1 %tobool26.not to i32
  %call32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %land.ext31)
  %call33 = tail call i32 (...) @fred() #6
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %lor.rhs35, label %lor.end39

lor.rhs35:                                        ; preds = %land.end30
  %puts.i64 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %lor.end39

lor.end39:                                        ; preds = %lor.rhs35, %land.end30
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 1)
  %puts.i65 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %call45 = tail call i32 (...) @fred() #6
  %tobool47 = icmp ne i32 %call45, 0
  %land.ext49 = zext i1 %tobool47 to i32
  %call50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %land.ext49)
  %puts.i66 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %call59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 1)
  ret i32 0
}

declare i32 @fred(...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
