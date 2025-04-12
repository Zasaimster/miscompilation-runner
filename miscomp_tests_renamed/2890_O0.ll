; 100112374685633520978373131720793207580
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/100112374685633520978373131720793207580.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/100112374685633520978373131720793207580.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @foo(ptr noundef %x, i32 noundef %b) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %b.addr = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store i32 %b, ptr %b.addr, align 4
  %0 = load ptr, ptr %x.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %x.addr, align 8
  store i32 55, ptr %0, align 4
  ret ptr null
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [5 x i32], align 16
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 1, i64 20, i1 false)
  %arraydecay1 = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 0
  %call = call ptr @foo(ptr noundef %arraydecay1, i32 noundef 0)
  %arraydecay2 = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp = icmp ne i64 %sub.ptr.div, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 0
  %0 = load i32, ptr %arrayidx, align 16
  %cmp3 = icmp ne i32 %0, 55
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arrayidx5 = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 1
  %1 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 4
  %2 = load i32, ptr %arrayidx6, align 16
  %cmp7 = icmp ne i32 %1, %2
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  %arraydecay8 = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay8, i8 1, i64 20, i1 false)
  %arraydecay9 = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 0
  %call10 = call ptr @foo(ptr noundef %arraydecay9, i32 noundef 2)
  %arraydecay11 = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 0
  %sub.ptr.lhs.cast12 = ptrtoint ptr %call10 to i64
  %sub.ptr.rhs.cast13 = ptrtoint ptr %arraydecay11 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %sub.ptr.div15 = sdiv exact i64 %sub.ptr.sub14, 4
  %cmp16 = icmp ne i64 %sub.ptr.div15, 2
  br i1 %cmp16, label %if.then23, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end
  %arrayidx18 = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 0
  %3 = load i32, ptr %arrayidx18, align 16
  %cmp19 = icmp ne i32 %3, 55
  br i1 %cmp19, label %if.then23, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %arrayidx21 = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 1
  %4 = load i32, ptr %arrayidx21, align 4
  %cmp22 = icmp ne i32 %4, 2
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false20, %lor.lhs.false17, %if.end
  call void @abort() #4
  unreachable

if.end24:                                         ; preds = %lor.lhs.false20
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
