; 12725072268450038599184232929028276209
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/12725072268450038599184232929028276209_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/12725072268450038599184232929028276209.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.U = type { [3 x i64] }
%struct.t = type { i32, [4 x i64] }

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@t = dso_local global { i8, i8, i8, i8, [4 x i8], [4 x i64] } { i8 26, i8 0, i8 0, i8 0, [4 x i8] zeroinitializer, [4 x i64] [i64 0, i64 21, i64 22, i64 23] }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @foo(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %d = alloca %struct.U, align 8
  %u = alloca %struct.U, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %d1 = getelementptr inbounds nuw %struct.t, ptr %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i64], ptr %d1, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %u, ptr align 8 %arrayidx, i64 24, i1 false)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %d, ptr align 8 %u, i64 24, i1 false)
  %1 = load ptr, ptr %x.addr, align 8
  %bf.load = load i32, ptr %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %call2 = call ptr @bar(ptr noundef byval(%struct.U) align 8 %d, i32 noundef %bf.clear)
  ret ptr %call2
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @bar(ptr noundef byval(%struct.U) align 8 %d, i32 noundef %m) #0 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  %r = getelementptr inbounds nuw %struct.U, ptr %d, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i64], ptr %r, i64 0, i64 0
  %0 = load i64, ptr %arrayidx, align 8
  %cmp = icmp ne i64 %0, 21
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %r1 = getelementptr inbounds nuw %struct.U, ptr %d, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x i64], ptr %r1, i64 0, i64 1
  %1 = load i64, ptr %arrayidx2, align 8
  %cmp3 = icmp ne i64 %1, 22
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %r5 = getelementptr inbounds nuw %struct.U, ptr %d, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x i64], ptr %r5, i64 0, i64 2
  %2 = load i64, ptr %arrayidx6, align 8
  %cmp7 = icmp ne i64 %2, 23
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  ret ptr null
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @baz(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %d = alloca %struct.U, align 8
  %u = alloca %struct.U, align 8
  store ptr %x, ptr %x.addr, align 8
  %r = getelementptr inbounds nuw %struct.U, ptr %d, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i64], ptr %r, i64 0, i64 0
  store i64 4886718345, ptr %arrayidx, align 8
  %r1 = getelementptr inbounds nuw %struct.U, ptr %d, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x i64], ptr %r1, i64 0, i64 1
  store i64 68414056839, ptr %arrayidx2, align 8
  %r3 = getelementptr inbounds nuw %struct.U, ptr %d, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x i64], ptr %r3, i64 0, i64 2
  store i64 46118400291, ptr %arrayidx4, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %d5 = getelementptr inbounds nuw %struct.t, ptr %0, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [4 x i64], ptr %d5, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %u, ptr align 8 %arrayidx6, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %d, ptr align 8 %u, i64 24, i1 false)
  %1 = load ptr, ptr %x.addr, align 8
  %bf.load = load i32, ptr %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %call = call ptr @bar(ptr noundef byval(%struct.U) align 8 %d, i32 noundef %bf.clear)
  ret ptr %call
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call ptr @baz(ptr noundef @t)
  %call1 = call ptr @foo(ptr noundef @t)
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
