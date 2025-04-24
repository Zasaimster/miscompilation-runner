; 154066140568447338208939132911963440851
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/154066140568447338208939132911963440851_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/154066140568447338208939132911963440851.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_t = type { float, float }
%struct.struct_list = type { float }

@.str = private unnamed_addr constant [20 x i8] c"This is dead code.\0A\00", align 1
@pos = dso_local global [1 x %struct.vector_t] zeroinitializer, align 4
@limit = dso_local global [2 x %struct.vector_t] [%struct.vector_t zeroinitializer, %struct.vector_t { float 1.000000e+00, float 1.000000e+00 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @w(float noundef %x, float noundef %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  store float %x, ptr %x.addr, align 4
  store float %y, ptr %y.addr, align 4
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1(float noundef %x, float noundef %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  store float %x, ptr %x.addr, align 4
  store float %y, ptr %y.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load float, ptr %y.addr, align 4
  %cmp1 = fcmp une float %0, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2(float noundef %x, float noundef %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  store float %x, ptr %x.addr, align 4
  store float %y, ptr %y.addr, align 4
  %0 = load float, ptr %x.addr, align 4
  %cmp = fcmp une float %0, 1.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load float, ptr %y.addr, align 4
  %cmp1 = fcmp une float %1, 1.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gitter(i32 noundef %count, ptr noundef %pos, ptr noundef %list, ptr noundef %nww, ptr noundef %limit, float noundef %r) #0 {
entry:
  %retval = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %pos.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %nww.addr = alloca ptr, align 8
  %limit.addr = alloca ptr, align 8
  %r.addr = alloca float, align 4
  %d = alloca float, align 4
  store i32 %count, ptr %count.addr, align 4
  store ptr %pos, ptr %pos.addr, align 8
  store ptr %list, ptr %list.addr, align 8
  store ptr %nww, ptr %nww.addr, align 8
  store ptr %limit, ptr %limit.addr, align 8
  store float %r, ptr %r.addr, align 4
  %0 = load ptr, ptr %limit.addr, align 8
  %arrayidx = getelementptr inbounds %struct.vector_t, ptr %0, i64 0
  %x = getelementptr inbounds nuw %struct.vector_t, ptr %arrayidx, i32 0, i32 0
  %1 = load float, ptr %x, align 4
  %2 = load ptr, ptr %limit.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.vector_t, ptr %2, i64 0
  %y = getelementptr inbounds nuw %struct.vector_t, ptr %arrayidx1, i32 0, i32 1
  %3 = load float, ptr %y, align 4
  %call = call i32 @f1(float noundef %1, float noundef %3)
  %4 = load ptr, ptr %limit.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.vector_t, ptr %4, i64 1
  %x3 = getelementptr inbounds nuw %struct.vector_t, ptr %arrayidx2, i32 0, i32 0
  %5 = load float, ptr %x3, align 4
  %6 = load ptr, ptr %limit.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.vector_t, ptr %6, i64 1
  %y5 = getelementptr inbounds nuw %struct.vector_t, ptr %arrayidx4, i32 0, i32 1
  %7 = load float, ptr %y5, align 4
  %call6 = call i32 @f2(float noundef %5, float noundef %7)
  %8 = load ptr, ptr %nww.addr, align 8
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %pos.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.vector_t, ptr %9, i64 0
  %x8 = getelementptr inbounds nuw %struct.vector_t, ptr %arrayidx7, i32 0, i32 0
  %10 = load float, ptr %x8, align 4
  store float %10, ptr %d, align 4
  %11 = load float, ptr %d, align 4
  %conv = fpext float %11 to double
  %cmp = fcmp ole double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %12 = load float, ptr %d, align 4
  %13 = load float, ptr %r.addr, align 4
  %call10 = call i32 @w(float noundef %12, float noundef %13)
  %14 = load float, ptr %d, align 4
  %conv11 = fpext float %14 to double
  %15 = load float, ptr %r.addr, align 4
  %conv12 = fpext float %15 to double
  %mul = fmul double %conv12, 5.000000e-01
  %cmp13 = fcmp ole double %conv11, %mul
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  %16 = load float, ptr %d, align 4
  %17 = load float, ptr %r.addr, align 4
  %call16 = call i32 @w(float noundef %16, float noundef %17)
  %18 = load ptr, ptr %list.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.struct_list, ptr %18, i64 0
  %wsx = getelementptr inbounds nuw %struct.struct_list, ptr %arrayidx17, i32 0, i32 0
  store float 1.000000e+00, ptr %wsx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then
  br label %if.end18

if.end18:                                         ; preds = %if.end, %entry
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nww = alloca i32, align 4
  %list = alloca %struct.struct_list, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @gitter(i32 noundef 1, ptr noundef @pos, ptr noundef %list, ptr noundef %nww, ptr noundef @limit, float noundef 1.000000e+00)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
