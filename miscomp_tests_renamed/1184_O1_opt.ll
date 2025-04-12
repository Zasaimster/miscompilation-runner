; 105318548800836887751330190087962972292
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/105318548800836887751330190087962972292_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/105318548800836887751330190087962972292.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baz = type { i32, i32, i32 }

@c = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local void @bar(i32 noundef %b) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @c, align 8, !tbaa !5
  %b1 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %1 = load i32, ptr %b1, align 4, !tbaa !10
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = load i32, ptr %c, align 4, !tbaa !13
  %cmp2 = icmp ne i32 %2, 3
  %cmp4 = icmp ne i32 %b, 4
  %or.cond = or i1 %cmp4, %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @foo(i64 %a.coerce0, i32 %a.coerce1, i32 noundef %b) local_unnamed_addr #0 {
entry:
  %a = alloca %struct.baz, align 8
  store i64 %a.coerce0, ptr %a, align 8
  %coerce.sroa.2.0.a.sroa_idx = getelementptr inbounds nuw i8, ptr %a, i64 8
  store i32 %a.coerce1, ptr %coerce.sroa.2.0.a.sroa_idx, align 8
  store ptr %a, ptr @c, align 8, !tbaa !5
  %b1.i = getelementptr inbounds nuw i8, ptr %a, i64 4
  %0 = load i32, ptr %b1.i, align 4, !tbaa !10
  %cmp.not.i = icmp eq i32 %0, 2
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %cmp2.i = icmp ne i32 %a.coerce1, 3
  %cmp4.i = icmp ne i32 %b, 4
  %or.cond.i = or i1 %cmp2.i, %cmp4.i
  br i1 %or.cond.i, label %if.then.i, label %bar.exit

if.then.i:                                        ; preds = %lor.lhs.false.i, %entry
  call void @abort() #4
  unreachable

bar.exit:                                         ; preds = %lor.lhs.false.i
  ret void
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  tail call void @foo(i64 8589934593, i32 3, i32 noundef 4)
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
!10 = !{!11, !12, i64 4}
!11 = !{!"baz", !12, i64 0, !12, i64 4, !12, i64 8}
!12 = !{!"int", !8, i64 0}
!13 = !{!11, !12, i64 8}
