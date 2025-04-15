; 170345606155433025670774826879663257730
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/170345606155433025670774826879663257730.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/170345606155433025670774826879663257730.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }
%struct.T = type <{ i8, i16, i8 }>

@a = dso_local global i32 0, align 4
@c = dso_local global ptr @a, align 8
@__const.main.o = private unnamed_addr constant { i8, i8, i8, i8 } { i8 1, i8 64, i8 0, i8 0 }, align 4
@n = dso_local global i32 0, align 4
@m = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@__const.main.p = private unnamed_addr constant { i8, i8, i8, i8 } { i8 1, i8 64, i8 0, i8 0 }, align 4
@b = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Function called\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %o = alloca %struct.S, align 4
  %p = alloca %struct.T, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %o, ptr align 4 @__const.main.o, i64 4, i1 false)
  %coerce.dive = getelementptr inbounds nuw %struct.S, ptr %o, i32 0, i32 0
  %0 = load i32, ptr %coerce.dive, align 4
  %call = call i32 @foo(i32 %0)
  %1 = load i32, ptr @n, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %bf.load = load i32, ptr %o, align 4
  %bf.shl = shl i32 %bf.load, 24
  %bf.ashr = ashr i32 %bf.shl, 24
  %tobool1 = icmp ne i32 %bf.ashr, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  store i32 %lor.ext, ptr @m, align 4
  %3 = load i32, ptr @a, align 4
  %cmp = icmp ne i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.end
  store i32 0, ptr @e, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %p, ptr align 4 @__const.main.p, i64 4, i1 false)
  %4 = load i32, ptr %p, align 4
  %call2 = call i32 @bar(i32 %4)
  %5 = load i32, ptr @n, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %lor.end6, label %lor.rhs4

lor.rhs4:                                         ; preds = %if.end
  %f0 = getelementptr inbounds nuw %struct.T, ptr %p, i32 0, i32 0
  %6 = load i8, ptr %f0, align 4
  %conv = sext i8 %6 to i32
  %tobool5 = icmp ne i32 %conv, 0
  br label %lor.end6

lor.end6:                                         ; preds = %lor.rhs4, %if.end
  %7 = phi i1 [ true, %if.end ], [ %tobool5, %lor.rhs4 ]
  %lor.ext7 = zext i1 %7 to i32
  %8 = load i32, ptr @m, align 4
  %or = or i32 %8, %lor.ext7
  store i32 %or, ptr @m, align 4
  %9 = load i32, ptr @a, align 4
  %cmp8 = icmp ne i32 %9, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.end6
  call void @abort() #4
  unreachable

if.end11:                                         ; preds = %lor.end6
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(i32 %p.coerce) #0 {
entry:
  %p = alloca %struct.S, align 4
  %f = alloca [36 x ptr], align 16
  %coerce.dive = getelementptr inbounds nuw %struct.S, ptr %p, i32 0, i32 0
  store i32 %p.coerce, ptr %coerce.dive, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @bar(i32 %p.coerce) #0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca %struct.T, align 4
  %f = alloca [36 x ptr], align 16
  %i = alloca ptr, align 8
  store i32 %p.coerce, ptr %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @e, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [36 x ptr], ptr %f, i64 0, i64 0
  store ptr %arrayidx, ptr %i, align 8
  %1 = load ptr, ptr @c, align 8
  %2 = load i32, ptr %1, align 4
  %xor = xor i32 %2, 1
  store i32 %xor, ptr %1, align 4
  %f1 = getelementptr inbounds nuw %struct.T, ptr %p, i32 0, i32 1
  %bf.load = load i16, ptr %f1, align 1
  %bf.shl = shl i16 %bf.load, 5
  %bf.ashr = ashr i16 %bf.shl, 11
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %i, align 8
  store ptr null, ptr %3, align 8
  %4 = load i32, ptr @b, align 4
  store i32 %4, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr @e, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr @e, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
