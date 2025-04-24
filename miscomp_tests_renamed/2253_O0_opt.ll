; 139287668639130442897442313075755389951
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/139287668639130442897442313075755389951_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/139287668639130442897442313075755389951.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { ptr, i32 }

@.str = private unnamed_addr constant [3 x i8] c"hi\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @bar()
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar() #0 {
entry:
  %.compoundliteral = alloca %struct.s, align 8
  %p = getelementptr inbounds nuw %struct.s, ptr %.compoundliteral, i32 0, i32 0
  store ptr @.str, ptr %p, align 8
  %t = getelementptr inbounds nuw %struct.s, ptr %.compoundliteral, i32 0, i32 1
  store i32 1, ptr %t, align 8
  %0 = getelementptr i8, ptr %.compoundliteral, i64 12
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 4, i1 false)
  call void @foo(ptr noundef %.compoundliteral)
  ret void
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %t = getelementptr inbounds nuw %struct.s, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %t, align 8
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %t1 = getelementptr inbounds nuw %struct.s, ptr %2, i32 0, i32 1
  store i32 2, ptr %t1, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
