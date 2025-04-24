; 10746450998912327272291749994008683128
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/10746450998912327272291749994008683128_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/10746450998912327272291749994008683128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sreal = type { i32, i32 }

@a = dso_local global [4 x %struct.sreal] [%struct.sreal zeroinitializer, %struct.sreal { i32 1, i32 0 }, %struct.sreal { i32 0, i32 1 }, %struct.sreal { i32 1, i32 1 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sreal_compare(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %call = call i32 (...) @anotherDummyFunc()
  %0 = load ptr, ptr %a.addr, align 8
  %exp = getelementptr inbounds nuw %struct.sreal, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %exp, align 4
  %2 = load ptr, ptr %b.addr, align 8
  %exp1 = getelementptr inbounds nuw %struct.sreal, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %exp1, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %a.addr, align 8
  %sig = getelementptr inbounds nuw %struct.sreal, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %sig, align 4
  %6 = load ptr, ptr %b.addr, align 8
  %sig2 = getelementptr inbounds nuw %struct.sreal, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %sig2, align 4
  %cmp3 = icmp ugt i32 %5, %7
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %a.addr, align 8
  %sig6 = getelementptr inbounds nuw %struct.sreal, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %sig6, align 4
  %10 = load ptr, ptr %b.addr, align 8
  %sig7 = getelementptr inbounds nuw %struct.sreal, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %sig7, align 4
  %cmp8 = icmp ult i32 %9, %11
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  store i32 -1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end5
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then9, %if.then4, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

declare i32 @anotherDummyFunc(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %j, align 4
  %cmp4 = icmp slt i32 %2, %3
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body3
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.sreal], ptr @a, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [4 x %struct.sreal], ptr @a, i64 0, i64 %idxprom5
  %call = call i32 @sreal_compare(ptr noundef %arrayidx, ptr noundef %arrayidx6)
  %cmp7 = icmp ne i32 %call, -1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %land.lhs.true, %for.body3
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %j, align 4
  %cmp8 = icmp eq i32 %6, %7
  br i1 %cmp8, label %land.lhs.true9, label %if.end17

land.lhs.true9:                                   ; preds = %if.end
  %8 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [4 x %struct.sreal], ptr @a, i64 0, i64 %idxprom10
  %9 = load i32, ptr %j, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [4 x %struct.sreal], ptr @a, i64 0, i64 %idxprom12
  %call14 = call i32 @sreal_compare(ptr noundef %arrayidx11, ptr noundef %arrayidx13)
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true9
  call void @abort() #3
  unreachable

if.end17:                                         ; preds = %land.lhs.true9, %if.end
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %j, align 4
  %cmp18 = icmp sgt i32 %10, %11
  br i1 %cmp18, label %land.lhs.true19, label %if.end27

land.lhs.true19:                                  ; preds = %if.end17
  %12 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %12 to i64
  %arrayidx21 = getelementptr inbounds [4 x %struct.sreal], ptr @a, i64 0, i64 %idxprom20
  %13 = load i32, ptr %j, align 4
  %idxprom22 = sext i32 %13 to i64
  %arrayidx23 = getelementptr inbounds [4 x %struct.sreal], ptr @a, i64 0, i64 %idxprom22
  %call24 = call i32 @sreal_compare(ptr noundef %arrayidx21, ptr noundef %arrayidx23)
  %cmp25 = icmp ne i32 %call24, 1
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %land.lhs.true19
  call void @abort() #3
  unreachable

if.end27:                                         ; preds = %land.lhs.true19, %if.end17
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %14 = load i32, ptr %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  br label %for.inc28

for.inc28:                                        ; preds = %for.end
  %15 = load i32, ptr %i, align 4
  %inc29 = add nsw i32 %15, 1
  store i32 %inc29, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end30:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
