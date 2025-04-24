; 147750984094584379072854155330167727641
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/147750984094584379072854155330167727641.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/147750984094584379072854155330167727641.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, i32, i32, i32 }

@i = dso_local global i32 0, align 4
@h = internal global %struct.S zeroinitializer, align 4
@f = dso_local global %struct.S zeroinitializer, align 4
@g = internal global %struct.S zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @foo() #0 {
entry:
  %0 = load i32, ptr @i, align 4
  %conv = trunc i32 %0 to i8
  ret i8 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca %struct.S, align 4
  store i32 0, ptr %retval, align 4
  call void @bar(ptr dead_on_unwind writable sret(%struct.S) align 4 %tmp)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 @h, ptr align 4 %tmp, i64 20, i1 true)
  store i32 1, ptr getelementptr inbounds nuw (%struct.S, ptr @f, i32 0, i32 1), align 4
  %0 = load i32, ptr getelementptr inbounds nuw (%struct.S, ptr @h, i32 0, i32 1), align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @bar(ptr dead_on_unwind noalias writable sret(%struct.S) align 4 %agg.result) #0 {
entry:
  %call = call signext i8 @foo()
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.result, ptr align 4 @f, i64 20, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %agg.result, ptr align 4 @g, i64 20, i1 false)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
