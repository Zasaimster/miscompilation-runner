; 184224210627791138118966709805720273257
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/184224210627791138118966709805720273257.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/184224210627791138118966709805720273257.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a = type { i32 }
%struct.c = type { %struct.b }
%struct.b = type { %struct.a }

@a = dso_local global %struct.a { i32 1 }, align 4
@val = dso_local global i32 0, align 4
@cptr = dso_local global ptr @val, align 8
@a2 = dso_local global %struct.a zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"This branch is executed.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load ptr, ptr @cptr, align 8
  %b = getelementptr inbounds nuw %struct.c, ptr %0, i32 0, i32 0
  %a = getelementptr inbounds nuw %struct.b, ptr %b, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 4 @a, i64 4, i1 false)
  store i32 2, ptr @val, align 4
  %1 = load ptr, ptr @cptr, align 8
  %b1 = getelementptr inbounds nuw %struct.c, ptr %1, i32 0, i32 0
  %a2 = getelementptr inbounds nuw %struct.b, ptr %b1, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 @a2, ptr align 4 %a2, i64 4, i1 false)
  %2 = load i32, ptr @a2, align 4
  %3 = load i32, ptr @a, align 4
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
