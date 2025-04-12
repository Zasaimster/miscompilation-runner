; 183134039472263996783790984395249345613
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/183134039472263996783790984395249345613_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/183134039472263996783790984395249345613.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baz = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"This will never be printed.\0A\00", align 1
@c = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %b) #0 {
entry:
  %b.addr = alloca i32, align 4
  store i32 %b, ptr %b.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i64 %a.coerce0, i32 %a.coerce1, i32 noundef %b) #0 {
entry:
  %a = alloca %struct.baz, align 4
  %coerce = alloca { i64, i32 }, align 4
  %b.addr = alloca i32, align 4
  %0 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 0
  store i64 %a.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 1
  store i32 %a.coerce1, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 4 %coerce, i64 12, i1 false)
  store i32 %b, ptr %b.addr, align 4
  store ptr %a, ptr @c, align 8
  %2 = load i32, ptr %b.addr, align 4
  call void @bar(i32 noundef %2)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %struct.baz, align 4
  %a.coerce = alloca { i64, i32 }, align 4
  store i32 0, ptr %retval, align 4
  %a1 = getelementptr inbounds nuw %struct.baz, ptr %a, i32 0, i32 0
  store i32 1, ptr %a1, align 4
  %b = getelementptr inbounds nuw %struct.baz, ptr %a, i32 0, i32 1
  store i32 2, ptr %b, align 4
  %c = getelementptr inbounds nuw %struct.baz, ptr %a, i32 0, i32 2
  store i32 3, ptr %c, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a.coerce, ptr align 4 %a, i64 12, i1 false)
  %0 = getelementptr inbounds nuw { i64, i32 }, ptr %a.coerce, i32 0, i32 0
  %1 = load i64, ptr %0, align 4
  %2 = getelementptr inbounds nuw { i64, i32 }, ptr %a.coerce, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  call void @foo(i64 %1, i32 %3, i32 noundef 4)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
