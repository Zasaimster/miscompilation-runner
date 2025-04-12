; 195761346210598219970305207282112157177
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/195761346210598219970305207282112157177_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/195761346210598219970305207282112157177.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32 }

@f = dso_local global i32 1, align 4
@__const.foo.h = private unnamed_addr constant [70 x %struct.A] [%struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }, %struct.A { i32 1 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
entry:
  %retval = alloca %struct.A, align 4
  %h = alloca [70 x %struct.A], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %h, ptr align 16 @__const.foo.h, i64 280, i1 false)
  %arrayidx = getelementptr inbounds [70 x %struct.A], ptr %h, i64 0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %retval, ptr align 16 %arrayidx, i64 4, i1 false)
  %coerce.dive = getelementptr inbounds nuw %struct.A, ptr %retval, i32 0, i32 0
  %0 = load i32, ptr %coerce.dive, align 4
  ret i32 %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca %struct.A, align 4
  %j = alloca %struct.A, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @foo()
  %coerce.dive = getelementptr inbounds nuw %struct.A, ptr %i, i32 0, i32 0
  store i32 %call, ptr %coerce.dive, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %j, ptr align 4 %i, i64 4, i1 false)
  %b = getelementptr inbounds nuw %struct.A, ptr %j, i32 0, i32 0
  %0 = load i32, ptr %b, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  store i32 0, ptr @f, align 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = load i32, ptr @f, align 4
  ret i32 %1
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
