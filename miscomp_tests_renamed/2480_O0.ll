; 142893971982822736269861759598180785758
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/142893971982822736269861759598180785758.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/142893971982822736269861759598180785758.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { [4 x i32] }

@__const.main.s = private unnamed_addr constant %struct.s { [4 x i32] [i32 1, i32 2, i32 3, i32 4] }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i64 %s.coerce0, i64 %s.coerce1, i32 noundef %x1, i32 noundef %x2, i32 noundef %x3, i32 noundef %x4, i32 noundef %x5, i32 noundef %x6, i32 noundef %x7) #0 {
entry:
  %s = alloca %struct.s, align 4
  %x1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %x3.addr = alloca i32, align 4
  %x4.addr = alloca i32, align 4
  %x5.addr = alloca i32, align 4
  %x6.addr = alloca i32, align 4
  %x7.addr = alloca i32, align 4
  %0 = getelementptr inbounds nuw { i64, i64 }, ptr %s, i32 0, i32 0
  store i64 %s.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds nuw { i64, i64 }, ptr %s, i32 0, i32 1
  store i64 %s.coerce1, ptr %1, align 4
  store i32 %x1, ptr %x1.addr, align 4
  store i32 %x2, ptr %x2.addr, align 4
  store i32 %x3, ptr %x3.addr, align 4
  store i32 %x4, ptr %x4.addr, align 4
  store i32 %x5, ptr %x5.addr, align 4
  store i32 %x6, ptr %x6.addr, align 4
  store i32 %x7, ptr %x7.addr, align 4
  %f = getelementptr inbounds nuw %struct.s, ptr %s, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i32], ptr %f, i64 0, i64 3
  %2 = load i32, ptr %arrayidx, align 4
  %3 = load i32, ptr %x7.addr, align 4
  %add = add nsw i32 %2, %3
  ret i32 %add
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.s, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %s, ptr align 4 @__const.main.s, i64 16, i1 false)
  %0 = getelementptr inbounds nuw { i64, i64 }, ptr %s, i32 0, i32 0
  %1 = load i64, ptr %0, align 4
  %2 = getelementptr inbounds nuw { i64, i64 }, ptr %s, i32 0, i32 1
  %3 = load i64, ptr %2, align 4
  %call = call i32 @foo(i64 %1, i64 %3, i32 noundef 100, i32 noundef 200, i32 noundef 300, i32 noundef 400, i32 noundef 500, i32 noundef 600, i32 noundef 700)
  %cmp = icmp ne i32 %call, 704
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
