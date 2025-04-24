; 157813615024638754960528116564161088868
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/157813615024638754960528116564161088868.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/157813615024638754960528116564161088868.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [16 x i8] c"Value of x: %d\0A\00", align 1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @foobar(i32 noundef %x, i32 noundef %y, i32 noundef %z) local_unnamed_addr #0 {
entry:
  %b = alloca %struct.x, align 4
  %0 = trunc i32 %x to i8
  %bf.value = and i8 %0, 1
  %1 = trunc i32 %y to i8
  %bf.value2 = shl i8 %1, 1
  %bf.shl = and i8 %bf.value2, 6
  %2 = trunc i32 %z to i8
  %bf.value6 = shl i8 %2, 3
  %bf.shl7 = and i8 %bf.value6, 56
  %3 = or disjoint i8 %bf.shl, %bf.value
  %bf.set9 = or disjoint i8 %3, %bf.shl7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #6
  store i8 %bf.set9, ptr %b, align 4
  %4 = getelementptr inbounds nuw i8, ptr %b, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i64 3, i1 false)
  %call = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %b)
  %bf.cast = and i32 %x, 1
  %cmp.not.not = icmp eq i32 %bf.cast, 0
  br i1 %cmp.not.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %bf.load26 = load i8, ptr %b, align 4
  %5 = and i8 %bf.load26, 56
  %cmp29.not = icmp eq i8 %5, 40
  br i1 %cmp29.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %b.i = alloca %struct.x, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i) #6
  store i8 29, ptr %b.i, align 4
  %0 = getelementptr inbounds nuw i8, ptr %b.i, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %0, i8 0, i64 3, i1 false)
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %b.i)
  %bf.load26.i = load i8, ptr %b.i, align 4
  %1 = and i8 %bf.load26.i, 56
  %cmp29.not.i = icmp eq i8 %1, 40
  br i1 %cmp29.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @abort() #7
  unreachable

if.end.i:                                         ; preds = %entry
  call void @exit(i32 noundef 0) #7
  unreachable
}

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
