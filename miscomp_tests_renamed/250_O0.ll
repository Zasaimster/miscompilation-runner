; 104290119004163463712200418069582912401
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/104290119004163463712200418069582912401.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/104290119004163463712200418069582912401.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 5, align 4
@b = dso_local global ptr null, align 8
@c = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  %call = call i32 @foo(ptr noundef %i)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i = alloca [7 x [5 x ptr]], align 16
  %j = alloca [1 x [1 x ptr]], align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load i32, ptr @a, align 4
  %mul = mul nsw i32 %0, 2
  %1 = load i32, ptr @a, align 4
  %cmp = icmp eq i32 %mul, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 16 %i, i8 0, i64 280, i1 false)
  %arrayidx = getelementptr inbounds [7 x [5 x ptr]], ptr %i, i64 0, i64 0
  %arrayidx1 = getelementptr inbounds [5 x ptr], ptr %arrayidx, i64 0, i64 0
  %arrayidx2 = getelementptr inbounds [1 x [1 x ptr]], ptr %j, i64 0, i64 0
  %arrayidx3 = getelementptr inbounds [1 x ptr], ptr %arrayidx2, i64 0, i64 0
  store ptr %arrayidx1, ptr %arrayidx3, align 8
  %2 = load ptr, ptr @c, align 8
  %cmp4 = icmp ne ptr %p.addr, %2
  %conv = zext i1 %cmp4 to i32
  %3 = load ptr, ptr @b, align 8
  store i32 %conv, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
