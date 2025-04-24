; 185630659600227343239359511205434273221
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/185630659600227343239359511205434273221.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/185630659600227343239359511205434273221.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@check = dso_local global i32 0, align 4
@o = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@__const.main.args = private unnamed_addr constant [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], align 16
@h = dso_local global ptr null, align 8
@u = dso_local global ptr null, align 8
@r.c = internal global [2 x i8] c"b\00", align 1
@r.cnt = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %args = alloca [5 x ptr], align 16
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %args, ptr align 16 @__const.main.args, i64 40, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @x(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %opt = alloca i32, align 4
  %g = alloca ptr, align 8
  %p = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %opt, align 4
  store ptr null, ptr %g, align 8
  store ptr null, ptr %p, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load i32, ptr @o, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp sgt i32 %2, 2
  br i1 %cmp1, label %land.lhs.true2, label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %argv.addr, align 8
  %4 = load i32, ptr @o, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true2
  %6 = load ptr, ptr %argv.addr, align 8
  %7 = load i32, ptr @o, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %6, i64 %idxprom3
  %8 = load ptr, ptr %arrayidx4, align 8
  %call = call ptr @s(ptr noundef %8, ptr noundef %p)
  store ptr %call, ptr %g, align 8
  %9 = load ptr, ptr %g, align 8
  %tobool5 = icmp ne ptr %9, null
  br i1 %tobool5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.then
  %10 = load ptr, ptr %g, align 8
  %call7 = call ptr @s(ptr noundef %10, ptr noundef %p)
  store ptr %call7, ptr @h, align 8
  %11 = ptrtoint ptr %call7 to i8
  %12 = load ptr, ptr %g, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %g, align 8
  store i8 %11, ptr %12, align 1
  %13 = load ptr, ptr %g, align 8
  %14 = load ptr, ptr %p, align 8
  %cmp8 = icmp eq ptr %13, %14
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then6
  %15 = load ptr, ptr %g, align 8
  %call10 = call ptr @m(ptr noundef %15)
  store ptr %call10, ptr @h, align 8
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then6
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  %16 = load ptr, ptr %argv.addr, align 8
  %17 = load i32, ptr @o, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %16, i64 %idxprom12
  %18 = load ptr, ptr %arrayidx13, align 8
  %call14 = call ptr @s(ptr noundef %18, ptr noundef %p)
  store ptr %call14, ptr @u, align 8
  %19 = load ptr, ptr %argv.addr, align 8
  %20 = load i32, ptr @o, align 4
  %idxprom15 = sext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %19, i64 %idxprom15
  %21 = load ptr, ptr %arrayidx16, align 8
  %22 = load ptr, ptr %p, align 8
  %cmp17 = icmp eq ptr %21, %22
  br i1 %cmp17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end11
  %23 = load ptr, ptr %argv.addr, align 8
  %24 = load i32, ptr @o, align 4
  %idxprom19 = sext i32 %24 to i64
  %arrayidx20 = getelementptr inbounds ptr, ptr %23, i64 %idxprom19
  %25 = load ptr, ptr %arrayidx20, align 8
  %call21 = call ptr @m(ptr noundef %25)
  store ptr %call21, ptr @u, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end11
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true2, %land.lhs.true, %entry
  call void @abort() #4
  unreachable

if.end23:                                         ; preds = %if.end22
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %if.end23
  %26 = load i32, ptr @o, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr @o, align 4
  %27 = load i32, ptr %argc.addr, align 4
  %cmp24 = icmp slt i32 %inc, %27
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load ptr, ptr %argv.addr, align 8
  %29 = load i32, ptr @o, align 4
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %28, i64 %idxprom25
  %30 = load ptr, ptr %arrayidx26, align 8
  %call27 = call i32 @r(ptr noundef %30)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then29
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @s(ptr noundef %v, ptr noundef %pp) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %pp.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %v.addr, align 8
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef @.str) #5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @check, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @check, align 4
  %cmp1 = icmp sgt i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %v.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load ptr, ptr %pp.addr, align 8
  store ptr %add.ptr, ptr %3, align 8
  ret ptr null
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @m(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @abort() #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @r(ptr noundef %f) #0 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  %0 = load ptr, ptr %f.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8, ptr @r.c, align 1
  %conv1 = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %f.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx, align 1
  %conv3 = sext i8 %4 to i32
  %5 = load i8, ptr getelementptr inbounds ([2 x i8], ptr @r.c, i64 0, i64 1), align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp ne i32 %conv3, %conv4
  br i1 %cmp5, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %6 = load i32, ptr @r.cnt, align 4
  %cmp8 = icmp sgt i32 %6, 3
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false, %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  %7 = load i8, ptr @r.c, align 1
  %inc = add i8 %7, 1
  store i8 %inc, ptr @r.c, align 1
  %8 = load i32, ptr @r.cnt, align 4
  %inc10 = add nsw i32 %8, 1
  store i32 %inc10, ptr @r.cnt, align 4
  ret i32 1
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

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
