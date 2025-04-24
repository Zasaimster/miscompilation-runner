; 159086615969964428521060459260103277117
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/159086615969964428521060459260103277117.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/159086615969964428521060459260103277117.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { ptr, i64 }

@nil = dso_local global i32 0, align 4
@cons1 = dso_local global [2 x %struct.object] [%struct.object { ptr @nil, i64 0 }, %struct.object { ptr @nil, i64 0 }], align 16
@cons2 = dso_local local_unnamed_addr global [2 x %struct.object] [%struct.object { ptr @cons1, i64 64 }, %struct.object { ptr @nil, i64 0 }], align 16

; Function Attrs: nounwind uwtable
define dso_local { ptr, i64 } @bar(ptr readnone captures(none) %blah.coerce0, i64 %blah.coerce1) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @deadFunction() #2
  ret { ptr, i64 } undef
}

declare i32 @deadFunction(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local { ptr, i64 } @foo(ptr readonly captures(none) %x.coerce0, i64 %x.coerce1, ptr %y.coerce0, i64 %y.coerce1) local_unnamed_addr #0 {
entry:
  %z.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %x.coerce0, i64 8
  %z.sroa.6.0.copyload = load i64, ptr %z.sroa.6.0..sroa_idx, align 8, !tbaa !5
  %and = and i64 %z.sroa.6.0.copyload, 64
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %z.sroa.0.0.copyload = load ptr, ptr %x.coerce0, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds nuw i8, ptr %z.sroa.0.0.copyload, i64 16
  %y.sroa.0.0.copyload = load ptr, ptr %add.ptr, align 8, !tbaa !9
  %y.sroa.5.0.add.ptr.sroa_idx = getelementptr inbounds nuw i8, ptr %z.sroa.0.0.copyload, i64 24
  %y.sroa.5.0.copyload = load i64, ptr %y.sroa.5.0.add.ptr.sroa_idx, align 8, !tbaa !5
  %z.sroa.6.0.z.sroa.0.0.8.sroa_idx = getelementptr inbounds nuw i8, ptr %z.sroa.0.0.copyload, i64 8
  %z.sroa.6.0.copyload10 = load i64, ptr %z.sroa.6.0.z.sroa.0.0.8.sroa_idx, align 8, !tbaa !5
  %and4 = and i64 %z.sroa.6.0.copyload10, 64
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.then
  %call.i = tail call i32 (...) @deadFunction() #2
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.then6, %entry
  %y.sroa.0.0 = phi ptr [ undef, %if.then6 ], [ %y.sroa.0.0.copyload, %if.then ], [ %y.coerce0, %entry ]
  %y.sroa.5.0 = phi i64 [ undef, %if.then6 ], [ %y.sroa.5.0.copyload, %if.then ], [ %y.coerce1, %entry ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %y.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %y.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %z.sroa.6.0.copyload.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @cons2, i64 8), align 8, !tbaa !5
  %and.i = and i64 %z.sroa.6.0.copyload.i, 64
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %foo.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %z.sroa.0.0.copyload.i = load ptr, ptr @cons2, align 16, !tbaa !9
  %z.sroa.6.0.z.sroa.0.0.8.sroa_idx.i = getelementptr inbounds nuw i8, ptr %z.sroa.0.0.copyload.i, i64 8
  %z.sroa.6.0.copyload10.i = load i64, ptr %z.sroa.6.0.z.sroa.0.0.8.sroa_idx.i, align 8, !tbaa !5
  %and4.i = and i64 %z.sroa.6.0.copyload10.i, 64
  %tobool5.not.i = icmp eq i64 %and4.i, 0
  br i1 %tobool5.not.i, label %foo.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.then.i
  %call.i.i = tail call i32 (...) @deadFunction() #2
  br label %foo.exit

foo.exit:                                         ; preds = %entry, %if.then.i, %if.then6.i
  ret i32 0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
