; 180615477659938148926774583430034658949
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/180615477659938148926774583430034658949.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/180615477659938148926774583430034658949.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, [100 x i8], float }

@A = dso_local global [4 x i8] c"1234", align 4

; Function Attrs: nofree nounwind uwtable
define dso_local void @foo(ptr noundef readonly byval(%struct.S) align 8 captures(none) %s) local_unnamed_addr #0 {
entry:
  %arr = getelementptr inbounds nuw i8, ptr %s, i64 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %arr, ptr noundef nonnull dereferenceable(4) @A, i64 4)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s1 = alloca %struct.S, align 8
  %0 = load i32, ptr @A, align 4
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %s1)
  %s.sroa.3.0.s1.sroa_idx = getelementptr inbounds nuw i8, ptr %s1, i64 1
  store i32 %0, ptr %s.sroa.3.0.s1.sroa_idx, align 1
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(4) %s.sroa.3.0.s1.sroa_idx, ptr noundef nonnull dereferenceable(4) @A, i64 4)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %foo.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void @abort() #4
  unreachable

foo.exit:                                         ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %s1)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind willreturn memory(argmem: read) }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
