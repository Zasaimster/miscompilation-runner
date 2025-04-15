; 195348010477383679169075824581894380572
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/195348010477383679169075824581894380572.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/195348010477383679169075824581894380572.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@foo = dso_local global i32 10, align 4
@bar = dso_local global ptr null, align 8
@baz = dso_local global i32 100, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @pure_alloc() #0 {
entry:
  %res = alloca ptr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %0 = load i32, ptr @foo, align 4
  %1 = load ptr, ptr @bar, align 8
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  %2 = ptrtoint ptr %add.ptr to i32
  %and = and i32 %2, -2
  %conv = zext i32 %and to i64
  %3 = inttoptr i64 %conv to ptr
  store ptr %3, ptr %res, align 8
  %4 = load i32, ptr @foo, align 4
  %add = add nsw i32 %4, 2
  store i32 %add, ptr @foo, align 4
  %5 = load i32, ptr @foo, align 4
  %6 = load i32, ptr @baz, align 4
  %cmp = icmp ult i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load ptr, ptr %res, align 8
  ret ptr %7

if.end:                                           ; preds = %while.body
  store i32 0, ptr @foo, align 4
  br label %while.body
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call ptr @pure_alloc()
  %0 = load i32, ptr @foo, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
