; 11577894298786642003224672571210762315
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/11577894298786642003224672571210762315_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/11577894298786642003224672571210762315.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, [48 x i8] }
%struct.vc = type { ptr }

@a_con = dso_local global %struct.vc_data zeroinitializer, align 8
@vc_cons = dso_local global <{ %struct.vc, [62 x %struct.vc] }> <{ %struct.vc { ptr @a_con }, [62 x %struct.vc] zeroinitializer }>, align 16
@default_red = dso_local global [16 x i32] zeroinitializer, align 16
@default_grn = dso_local global [16 x i32] zeroinitializer, align 16
@default_blu = dso_local global [16 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @reset_palette(i32 noundef %currcons) #0 {
entry:
  %currcons.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %currcons, ptr %currcons.addr, align 4
  store i32 0, ptr %k, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %j, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr @default_red, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %2 to i8
  %3 = load i32, ptr %currcons.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [63 x %struct.vc], ptr @vc_cons, i64 0, i64 %idxprom1
  %d = getelementptr inbounds nuw %struct.vc, ptr %arrayidx2, i32 0, i32 0
  %4 = load ptr, ptr %d, align 8
  %vc_palette = getelementptr inbounds nuw %struct.vc_data, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %k, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %k, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [48 x i8], ptr %vc_palette, i64 0, i64 %idxprom3
  store i8 %conv, ptr %arrayidx4, align 1
  %6 = load i32, ptr %j, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [16 x i32], ptr @default_grn, i64 0, i64 %idxprom5
  %7 = load i32, ptr %arrayidx6, align 4
  %conv7 = trunc i32 %7 to i8
  %8 = load i32, ptr %currcons.addr, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [63 x %struct.vc], ptr @vc_cons, i64 0, i64 %idxprom8
  %d10 = getelementptr inbounds nuw %struct.vc, ptr %arrayidx9, i32 0, i32 0
  %9 = load ptr, ptr %d10, align 8
  %vc_palette11 = getelementptr inbounds nuw %struct.vc_data, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %k, align 4
  %inc12 = add nsw i32 %10, 1
  store i32 %inc12, ptr %k, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [48 x i8], ptr %vc_palette11, i64 0, i64 %idxprom13
  store i8 %conv7, ptr %arrayidx14, align 1
  %11 = load i32, ptr %j, align 4
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [16 x i32], ptr @default_blu, i64 0, i64 %idxprom15
  %12 = load i32, ptr %arrayidx16, align 4
  %conv17 = trunc i32 %12 to i8
  %13 = load i32, ptr %currcons.addr, align 4
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [63 x %struct.vc], ptr @vc_cons, i64 0, i64 %idxprom18
  %d20 = getelementptr inbounds nuw %struct.vc, ptr %arrayidx19, i32 0, i32 0
  %14 = load ptr, ptr %d20, align 8
  %vc_palette21 = getelementptr inbounds nuw %struct.vc_data, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %k, align 4
  %inc22 = add nsw i32 %15, 1
  store i32 %inc22, ptr %k, align 4
  %idxprom23 = sext i32 %15 to i64
  %arrayidx24 = getelementptr inbounds [48 x i8], ptr %vc_palette21, i64 0, i64 %idxprom23
  store i8 %conv17, ptr %arrayidx24, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %j, align 4
  %inc25 = add nsw i32 %16, 1
  store i32 %inc25, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %k) #0 {
entry:
  %k.addr = alloca i32, align 4
  store i32 %k, ptr %k.addr, align 4
  %0 = load i32, ptr %k.addr, align 4
  %cmp = icmp ne i32 %0, 48
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @reset_palette(i32 noundef 0)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn }

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
