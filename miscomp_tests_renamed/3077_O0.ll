; 153933334140999154001842273740478130895
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/153933334140999154001842273740478130895.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/153933334140999154001842273740478130895.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t = type { ptr, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @func5() #0 {
entry:
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  store i32 7, ptr %p, align 4
  %0 = load i32, ptr %p, align 4
  store i32 %0, ptr %q, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %foo = alloca %struct.t, align 8
  %bar = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %foo, i8 37, i64 16, i1 false)
  %size = getelementptr inbounds nuw %struct.t, ptr %foo, i32 0, i32 2
  store i32 16, ptr %size, align 4
  %call = call i32 (ptr, i64, ...) @f(ptr noundef %foo, i64 noundef 16)
  %conv = sext i32 %call to i64
  %0 = inttoptr i64 %conv to ptr
  store ptr %0, ptr %bar, align 8
  %1 = load ptr, ptr %bar, align 8
  %super = getelementptr inbounds nuw %struct.t, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %super, align 8
  %cmp = icmp ne ptr %2, %foo
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %bar, align 8
  %name = getelementptr inbounds nuw %struct.t, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %name, align 8
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %bar, align 8
  %size5 = getelementptr inbounds nuw %struct.t, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %size5, align 4
  %conv6 = sext i32 %6 to i64
  %cmp7 = icmp ne i64 %conv6, 16
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @f(...) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
