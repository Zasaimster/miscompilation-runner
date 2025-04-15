; 132184803003568990588979568024457148128
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/132184803003568990588979568024457148128.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/132184803003568990588979568024457148128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IOGBounds = type { i16, i16, i16, i16 }

@expectedwidth = dso_local global i32 50, align 4
@global_vramPtr = dso_local global ptr inttoptr (i64 40960 to ptr), align 8
@global_bounds = dso_local global %struct.IOGBounds { i16 100, i16 150, i16 100, i16 150 }, align 2
@global_saveRect = dso_local global %struct.IOGBounds { i16 75, i16 175, i16 75, i16 175 }, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %vramPtr = alloca ptr, align 8
  %width = alloca i32, align 4
  %saveRect = alloca %struct.IOGBounds, align 2
  %bounds = alloca %struct.IOGBounds, align 2
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %saveRect, ptr align 2 @global_saveRect, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %bounds, ptr align 2 @global_bounds, i64 8, i1 false)
  %minx = getelementptr inbounds nuw %struct.IOGBounds, ptr %saveRect, i32 0, i32 0
  %0 = load i16, ptr %minx, align 2
  %conv = sext i16 %0 to i32
  %minx1 = getelementptr inbounds nuw %struct.IOGBounds, ptr %bounds, i32 0, i32 0
  %1 = load i16, ptr %minx1, align 2
  %conv2 = sext i16 %1 to i32
  %cmp = icmp slt i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %minx4 = getelementptr inbounds nuw %struct.IOGBounds, ptr %bounds, i32 0, i32 0
  %2 = load i16, ptr %minx4, align 2
  %minx5 = getelementptr inbounds nuw %struct.IOGBounds, ptr %saveRect, i32 0, i32 0
  store i16 %2, ptr %minx5, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

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
