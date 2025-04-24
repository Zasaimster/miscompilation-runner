; 185905910858677027403105326665194429769
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/185905910858677027403105326665194429769.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/185905910858677027403105326665194429769.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %wq = alloca [0 x i64], align 8
  %rq = alloca [256 x i64], align 16
  %wi = alloca [256 x i32], align 16
  %ri = alloca [256 x i32], align 16
  %ws = alloca [256 x i16], align 16
  %rs = alloca [256 x i16], align 16
  %wc = alloca [256 x i8], align 16
  %rc = alloca [256 x i8], align 16
  %t = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [0 x i64], ptr %wq, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay, i8 0, i64 0, i1 false)
  %arraydecay1 = getelementptr inbounds [256 x i32], ptr %wi, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay1, i8 0, i64 1024, i1 false)
  %arraydecay2 = getelementptr inbounds [256 x i16], ptr %ws, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay2, i8 0, i64 512, i1 false)
  %arraydecay3 = getelementptr inbounds [256 x i8], ptr %wc, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay3, i8 0, i64 256, i1 false)
  %arrayidx = getelementptr inbounds [0 x i64], ptr %wq, i64 0, i64 0
  store i64 81985529216486895, ptr %arrayidx, align 8
  %arrayidx4 = getelementptr inbounds [256 x i32], ptr %wi, i64 0, i64 0
  store i32 19088743, ptr %arrayidx4, align 16
  %arrayidx5 = getelementptr inbounds [256 x i16], ptr %ws, i64 0, i64 0
  store i16 17767, ptr %arrayidx5, align 16
  %arrayidx6 = getelementptr inbounds [256 x i8], ptr %wc, i64 0, i64 0
  store i8 115, ptr %arrayidx6, align 16
  %arrayidx7 = getelementptr inbounds [256 x i32], ptr %ri, i64 0, i64 0
  %0 = load i32, ptr %arrayidx7, align 16
  %cmp = icmp ne i32 %0, 1728127813
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arrayidx8 = getelementptr inbounds [256 x i32], ptr %ri, i64 0, i64 1
  %1 = load i32, ptr %arrayidx8, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx9 = getelementptr inbounds [256 x i16], ptr %rs, i64 0, i64 0
  %2 = load i16, ptr %arrayidx9, align 16
  %conv = zext i16 %2 to i32
  %cmp10 = icmp ne i32 %conv, 45986
  br i1 %cmp10, label %if.then16, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end
  %arrayidx13 = getelementptr inbounds [256 x i16], ptr %rs, i64 0, i64 1
  %3 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %3 to i32
  %tobool15 = icmp ne i32 %conv14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false12, %if.end
  call void @abort() #3
  unreachable

if.end17:                                         ; preds = %lor.lhs.false12
  %arrayidx18 = getelementptr inbounds [256 x i8], ptr %rc, i64 0, i64 0
  %4 = load i8, ptr %arrayidx18, align 16
  %conv19 = zext i8 %4 to i32
  %cmp20 = icmp ne i32 %conv19, 155
  br i1 %cmp20, label %if.then26, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end17
  %arrayidx23 = getelementptr inbounds [256 x i8], ptr %rc, i64 0, i64 1
  %5 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %5 to i32
  %tobool25 = icmp ne i32 %conv24, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %lor.lhs.false22, %if.end17
  call void @abort() #3
  unreachable

if.end27:                                         ; preds = %lor.lhs.false22
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
