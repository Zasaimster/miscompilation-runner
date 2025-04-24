; 198095297960606045368856111281903206962
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/198095297960606045368856111281903206962_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/198095297960606045368856111281903206962.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epic_private = type { ptr, [1 x i32] }
%struct.epic_rx_desc = type { i32 }

@check_rx_ring = internal global [5 x i32] [i32 12, i32 14, i32 16, i32 18, i32 10], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ep = alloca %struct.epic_private, align 8
  %rx_ring = alloca [5 x %struct.epic_rx_desc], align 16
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.epic_rx_desc], ptr %rx_ring, i64 0, i64 %idxprom
  %next = getelementptr inbounds nuw %struct.epic_rx_desc, ptr %arrayidx, i32 0, i32 0
  store i32 0, ptr %next, align 4
  %rx_skbuff = getelementptr inbounds nuw %struct.epic_private, ptr %ep, i32 0, i32 1
  %2 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [1 x i32], ptr %rx_skbuff, i64 0, i64 %idxprom1
  store i32 5, ptr %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [5 x %struct.epic_rx_desc], ptr %rx_ring, i64 0, i64 0
  %rx_ring3 = getelementptr inbounds nuw %struct.epic_private, ptr %ep, i32 0, i32 0
  store ptr %arraydecay, ptr %rx_ring3, align 8
  call void @epic_init_ring(ptr noundef %ep)
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc19, %for.end
  %4 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %4, 5
  br i1 %cmp5, label %for.body6, label %for.end21

for.body6:                                        ; preds = %for.cond4
  %5 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [5 x %struct.epic_rx_desc], ptr %rx_ring, i64 0, i64 %idxprom7
  %next9 = getelementptr inbounds nuw %struct.epic_rx_desc, ptr %arrayidx8, i32 0, i32 0
  %6 = load i32, ptr %next9, align 4
  %7 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [5 x i32], ptr @check_rx_ring, i64 0, i64 %idxprom10
  %8 = load i32, ptr %arrayidx11, align 4
  %cmp12 = icmp ne i32 %6, %8
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body6
  %rx_skbuff13 = getelementptr inbounds nuw %struct.epic_private, ptr %ep, i32 0, i32 1
  %9 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [1 x i32], ptr %rx_skbuff13, i64 0, i64 %idxprom14
  %10 = load i32, ptr %arrayidx15, align 4
  %cmp16 = icmp ne i32 %10, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end
  call void @abort() #2
  unreachable

if.end18:                                         ; preds = %if.end
  br label %for.inc19

for.inc19:                                        ; preds = %if.end18
  %11 = load i32, ptr %i, align 4
  %inc20 = add nsw i32 %11, 1
  store i32 %inc20, ptr %i, align 4
  br label %for.cond4, !llvm.loop !8

for.end21:                                        ; preds = %for.cond4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @epic_init_ring(ptr noundef %ep) #0 {
entry:
  %ep.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %ep, ptr %ep.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %add = add nsw i32 %1, 1
  %mul = mul nsw i32 %add, 2
  %add1 = add nsw i32 10, %mul
  %2 = load ptr, ptr %ep.addr, align 8
  %rx_ring = getelementptr inbounds nuw %struct.epic_private, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %rx_ring, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.epic_rx_desc, ptr %3, i64 %idxprom
  %next = getelementptr inbounds nuw %struct.epic_rx_desc, ptr %arrayidx, i32 0, i32 0
  store i32 %add1, ptr %next, align 4
  %5 = load ptr, ptr %ep.addr, align 8
  %rx_skbuff = getelementptr inbounds nuw %struct.epic_private, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [1 x i32], ptr %rx_skbuff, i64 0, i64 %idxprom2
  store i32 0, ptr %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %ep.addr, align 8
  %rx_ring4 = getelementptr inbounds nuw %struct.epic_private, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %rx_ring4, align 8
  %10 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds %struct.epic_rx_desc, ptr %9, i64 %idxprom5
  %next7 = getelementptr inbounds nuw %struct.epic_rx_desc, ptr %arrayidx6, i32 0, i32 0
  store i32 10, ptr %next7, align 4
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
!9 = distinct !{!9, !7}
