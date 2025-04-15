; 127826720437312312348557394092725076385
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/127826720437312312348557394092725076385.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/127826720437312312348557394092725076385.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %rq = alloca [256 x i64], align 16
  %wi = alloca [256 x i32], align 16
  %ri = alloca [256 x i32], align 16
  %ws = alloca [256 x i16], align 16
  %rs = alloca [256 x i16], align 16
  %wc = alloca [256 x i8], align 16
  %rc = alloca [256 x i8], align 16
  %t = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (...) @pointlessFunction()
  %0 = zext i32 %call to i64
  %1 = call ptr @llvm.stacksave.p0()
  store ptr %1, ptr %saved_stack, align 8
  %vla = alloca i64, i64 %0, align 16
  store i64 %0, ptr %__vla_expr0, align 8
  %2 = mul nuw i64 8, %0
  call void @llvm.memset.p0.i64(ptr align 16 %vla, i8 0, i64 %2, i1 false)
  %arraydecay = getelementptr inbounds [256 x i32], ptr %wi, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 1024, i1 false)
  %arraydecay1 = getelementptr inbounds [256 x i16], ptr %ws, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay1, i8 0, i64 512, i1 false)
  %arraydecay2 = getelementptr inbounds [256 x i8], ptr %wc, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay2, i8 0, i64 256, i1 false)
  %arrayidx = getelementptr inbounds i64, ptr %vla, i64 0
  store i64 81985529216486895, ptr %arrayidx, align 16
  %arrayidx3 = getelementptr inbounds [256 x i32], ptr %wi, i64 0, i64 0
  store i32 19088743, ptr %arrayidx3, align 16
  %arrayidx4 = getelementptr inbounds [256 x i16], ptr %ws, i64 0, i64 0
  store i16 17767, ptr %arrayidx4, align 16
  %arrayidx5 = getelementptr inbounds [256 x i8], ptr %wc, i64 0, i64 0
  store i8 115, ptr %arrayidx5, align 16
  %arrayidx6 = getelementptr inbounds [256 x i32], ptr %ri, i64 0, i64 0
  %3 = load i32, ptr %arrayidx6, align 16
  %cmp = icmp ne i32 %3, 1728127813
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arrayidx7 = getelementptr inbounds [256 x i32], ptr %ri, i64 0, i64 1
  %4 = load i32, ptr %arrayidx7, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx8 = getelementptr inbounds [256 x i16], ptr %rs, i64 0, i64 0
  %5 = load i16, ptr %arrayidx8, align 16
  %conv = zext i16 %5 to i32
  %cmp9 = icmp ne i32 %conv, 45986
  br i1 %cmp9, label %if.then15, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end
  %arrayidx12 = getelementptr inbounds [256 x i16], ptr %rs, i64 0, i64 1
  %6 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %6 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false11, %if.end
  call void @abort() #5
  unreachable

if.end16:                                         ; preds = %lor.lhs.false11
  %arrayidx17 = getelementptr inbounds [256 x i8], ptr %rc, i64 0, i64 0
  %7 = load i8, ptr %arrayidx17, align 16
  %conv18 = zext i8 %7 to i32
  %cmp19 = icmp ne i32 %conv18, 155
  br i1 %cmp19, label %if.then25, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end16
  %arrayidx22 = getelementptr inbounds [256 x i8], ptr %rc, i64 0, i64 1
  %8 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %8 to i32
  %tobool24 = icmp ne i32 %conv23, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %lor.lhs.false21, %if.end16
  call void @abort() #5
  unreachable

if.end26:                                         ; preds = %lor.lhs.false21
  store i32 0, ptr %retval, align 4
  %9 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %9)
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

declare i32 @pointlessFunction(...) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
