; 150646053895892939301153758809558840966
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/150646053895892939301153758809558840966.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/150646053895892939301153758809558840966.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bar = dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @baz1(ptr noundef readnone captures(none) %a) local_unnamed_addr #0 {
entry:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @baz2(ptr noundef readnone captures(none) %a) local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @baz3(i32 noundef %i) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i32 %i, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  ret i32 1
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @foo(ptr readnone captures(none) %a, i64 noundef %b, i32 noundef %c) local_unnamed_addr #1 {
entry:
  %cmp = icmp sgt i64 %b, 0
  br i1 %cmp, label %if.then.lr.ph, label %while.end

if.then.lr.ph:                                    ; preds = %entry
  %and = and i32 %c, 16
  %cmp14 = icmp ne i32 %and, 0
  %and18 = and i32 %c, 16
  %tobool19.not = icmp eq i32 %and18, 0
  %and21 = and i32 %c, 16384
  %tobool22 = icmp eq i32 %and21, 0
  %and26 = and i32 %c, 2
  %tobool27.not = icmp ne i32 %and26, 0
  %0 = and i32 %c, 13832
  %or.cond80 = icmp ne i32 %0, 0
  %and57 = and i32 %c, 128
  %tobool58.not = icmp eq i32 %and57, 0
  %1 = load ptr, ptr @bar, align 8
  %tobool60.not = icmp eq ptr %1, null
  %or.cond77 = select i1 %tobool58.not, i1 true, i1 %tobool60.not
  %2 = and i32 %c, 13834
  %brmerge83 = icmp ne i32 %2, 0
  %brmerge84 = select i1 %brmerge83, i1 true, i1 %or.cond77
  br label %if.then

if.then:                                          ; preds = %if.then.backedge, %if.then.lr.ph
  %tobool.not81.not = phi i1 [ false, %if.then.lr.ph ], [ %cmp14, %if.then.backedge ]
  br i1 %cmp14, label %if.end17, label %if.then.backedge

if.end17:                                         ; preds = %if.then
  br i1 %tobool19.not, label %land.lhs.true25, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %if.end17
  %or.cond67.not87 = or i1 %tobool22, %tobool.not81.not
  %or.cond.not86 = and i1 %tobool27.not, %or.cond67.not87
  %brmerge = or i1 %or.cond80, %or.cond.not86
  %brmerge85 = select i1 %brmerge, i1 true, i1 %or.cond77
  br i1 %brmerge85, label %if.then.backedge, label %for.body

if.then.backedge:                                 ; preds = %land.lhs.true20, %land.lhs.true25, %if.then
  br label %if.then

land.lhs.true25:                                  ; preds = %if.end17
  br i1 %brmerge84, label %if.then.backedge, label %for.body

for.body:                                         ; preds = %land.lhs.true20, %land.lhs.true25
  tail call void @abort() #6
  unreachable

while.end:                                        ; preds = %entry
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %n = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n) #7
  store ptr null, ptr %n, align 8, !tbaa !5
  store ptr %n, ptr @bar, align 8, !tbaa !9
  %call = call i32 @foo(ptr nonnull poison, i64 noundef 1, i32 noundef 51217)
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any p2 pointer", !6, i64 0}
