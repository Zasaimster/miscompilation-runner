; 145369703633328117910733095675149315418
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/145369703633328117910733095675149315418.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/145369703633328117910733095675149315418.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trio = type { i32, i32, i32 }

@__const.main.t = private unnamed_addr constant %struct.trio { i32 1, i32 2, i32 3 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %i, i64 %t.coerce0, i32 %t.coerce1) #0 {
entry:
  %t = alloca %struct.trio, align 4
  %coerce = alloca { i64, i32 }, align 4
  %i.addr = alloca i32, align 4
  %0 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 0
  store i64 %t.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 1
  store i32 %t.coerce1, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %t, ptr align 4 %coerce, i64 12, i1 false)
  store i32 %i, ptr %i.addr, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i64 %t.coerce0, i32 %t.coerce1, i32 noundef %i) #0 {
entry:
  %t = alloca %struct.trio, align 4
  %coerce = alloca { i64, i32 }, align 4
  %i.addr = alloca i32, align 4
  %t.coerce = alloca { i64, i32 }, align 4
  %0 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 0
  store i64 %t.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 1
  store i32 %t.coerce1, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %t, ptr align 4 %coerce, i64 12, i1 false)
  store i32 %i, ptr %i.addr, align 4
  %2 = load i32, ptr %i.addr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %t.coerce, ptr align 4 %t, i64 12, i1 false)
  %3 = getelementptr inbounds nuw { i64, i32 }, ptr %t.coerce, i32 0, i32 0
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds nuw { i64, i32 }, ptr %t.coerce, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %call = call i32 @bar(i32 noundef %2, i64 %4, i32 %6)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca %struct.trio, align 4
  %t.coerce = alloca { i64, i32 }, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %t, ptr align 4 @__const.main.t, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %t.coerce, ptr align 4 %t, i64 12, i1 false)
  %0 = getelementptr inbounds nuw { i64, i32 }, ptr %t.coerce, i32 0, i32 0
  %1 = load i64, ptr %0, align 4
  %2 = getelementptr inbounds nuw { i64, i32 }, ptr %t.coerce, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %call = call i32 @foo(i64 %1, i32 %3, i32 noundef 4)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
