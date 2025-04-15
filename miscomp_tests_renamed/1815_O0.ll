; 14408778055761901155552347421228225893
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/14408778055761901155552347421228225893.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/14408778055761901155552347421228225893.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local global [5 x i16] [i16 1, i16 4, i16 16, i16 64, i16 256], align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bug(i16 noundef zeroext %value, ptr noundef %buffer, ptr noundef %bufend) #0 {
entry:
  %value.addr = alloca i16, align 2
  %buffer.addr = alloca ptr, align 8
  %bufend.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store i16 %value, ptr %value.addr, align 2
  store ptr %buffer, ptr %buffer.addr, align 8
  store ptr %bufend, ptr %bufend.addr, align 8
  %0 = load ptr, ptr %buffer.addr, align 8
  store ptr %0, ptr %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %tmp, align 8
  %2 = load ptr, ptr %bufend.addr, align 8
  %cmp = icmp ult ptr %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %tmp, align 8
  %4 = load i16, ptr %3, align 2
  %conv = zext i16 %4 to i32
  %5 = load i16, ptr %value.addr, align 2
  %conv1 = zext i16 %5 to i32
  %sub = sub nsw i32 %conv1, %conv
  %conv2 = trunc i32 %sub to i16
  store i16 %conv2, ptr %value.addr, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %tmp, align 8
  %incdec.ptr = getelementptr inbounds nuw i16, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %tmp, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %7 = load i16, ptr %value.addr, align 2
  %conv3 = zext i16 %7 to i32
  ret i32 %conv3
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
