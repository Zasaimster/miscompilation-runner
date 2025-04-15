; 174111284427177304969201599108989067492
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/174111284427177304969201599108989067492_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/174111284427177304969201599108989067492.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PT = type { [4 x i64], i64, i64, i64 }

@cases = dso_local global [9 x %struct.PT] [%struct.PT { [4 x i64] [i64 73400320, i64 262144, i64 805567999, i64 -1], i64 1, i64 2, i64 1 }, %struct.PT { [4 x i64] [i64 879754751, i64 262144, i64 262144, i64 805567999], i64 2, i64 3, i64 2 }, %struct.PT { [4 x i64] [i64 879754751, i64 805567999, i64 262144, i64 805567999], i64 1, i64 3, i64 2 }, %struct.PT { [4 x i64] [i64 879754751, i64 805830143, i64 524288, i64 -1], i64 1, i64 2, i64 1 }, %struct.PT { [4 x i64] [i64 879754751, i64 805830143, i64 1048576, i64 805830143], i64 1, i64 3, i64 1 }, %struct.PT { [4 x i64] [i64 879754751, i64 805830143, i64 262144, i64 262144], i64 1, i64 3, i64 1 }, %struct.PT { [4 x i64] [i64 73400320, i64 807403007, i64 807403007, i64 -1], i64 1, i64 2, i64 1 }, %struct.PT { [4 x i64] [i64 839122431, i64 2097152, i64 807403007, i64 -1], i64 0, i64 2, i64 1 }, %struct.PT { [4 x i64] [i64 67108864, i64 807403007, i64 134217728, i64 -1], i64 0, i64 2, i64 0 }], align 16
@.str = private unnamed_addr constant [21 x i8] c"cases[%d].c[%d]=%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cases[%d].b=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"cases[%d].e=%ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"cases[%d].k=%ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %0 = load i32, ptr %j, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 9
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %i, align 4
  %conv3 = sext i32 %1 to i64
  %cmp4 = icmp ult i64 %conv3, 4
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond2
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.PT], ptr @cases, i64 0, i64 %idxprom
  %c = getelementptr inbounds nuw %struct.PT, ptr %arrayidx, i32 0, i32 0
  %5 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [4 x i64], ptr %c, i64 0, i64 %idxprom7
  %6 = load i64, ptr %arrayidx8, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2, i32 noundef %3, i64 noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond2, !llvm.loop !6

for.end:                                          ; preds = %for.cond2
  %8 = load i32, ptr %j, align 4
  %9 = load i32, ptr %j, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [9 x %struct.PT], ptr @cases, i64 0, i64 %idxprom9
  %b = getelementptr inbounds nuw %struct.PT, ptr %arrayidx10, i32 0, i32 1
  %10 = load i64, ptr %b, align 8
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %8, i64 noundef %10)
  %11 = load i32, ptr %j, align 4
  %12 = load i32, ptr %j, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [9 x %struct.PT], ptr @cases, i64 0, i64 %idxprom12
  %e = getelementptr inbounds nuw %struct.PT, ptr %arrayidx13, i32 0, i32 2
  %13 = load i64, ptr %e, align 8
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %11, i64 noundef %13)
  %14 = load i32, ptr %j, align 4
  %15 = load i32, ptr %j, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [9 x %struct.PT], ptr @cases, i64 0, i64 %idxprom15
  %k = getelementptr inbounds nuw %struct.PT, ptr %arrayidx16, i32 0, i32 3
  %16 = load i64, ptr %k, align 8
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %14, i64 noundef %16)
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %17 = load i32, ptr %j, align 4
  %inc20 = add nsw i32 %17, 1
  store i32 %inc20, ptr %j, align 4
  br label %for.cond, !llvm.loop !8

for.end21:                                        ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = distinct !{!8, !7}
