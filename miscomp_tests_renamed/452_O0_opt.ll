; 107560155195256578633395491555402487800
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/107560155195256578633395491555402487800_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/107560155195256578633395491555402487800.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._RenderInfo = type { i32, float, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %info = alloca %struct._RenderInfo, align 4
  store i32 0, ptr %retval, align 4
  %y = getelementptr inbounds nuw %struct._RenderInfo, ptr %info, i32 0, i32 0
  store i32 0, ptr %y, align 4
  %src_y = getelementptr inbounds nuw %struct._RenderInfo, ptr %info, i32 0, i32 2
  store i32 0, ptr %src_y, align 4
  %scaley = getelementptr inbounds nuw %struct._RenderInfo, ptr %info, i32 0, i32 1
  store float 1.000000e+00, ptr %scaley, align 4
  %call = call i32 @render_image_rgb_a(ptr noundef %info)
  %cmp = icmp ne i32 %call, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @render_image_rgb_a(ptr noundef %info) #0 {
entry:
  %info.addr = alloca ptr, align 8
  %y = alloca i32, align 4
  %ye = alloca i32, align 4
  %error = alloca float, align 4
  %step = alloca float, align 4
  store ptr %info, ptr %info.addr, align 8
  store i32 0, ptr %y, align 4
  store i32 256, ptr %ye, align 4
  %0 = load ptr, ptr %info.addr, align 8
  %scaley = getelementptr inbounds nuw %struct._RenderInfo, ptr %0, i32 0, i32 1
  %1 = load float, ptr %scaley, align 4
  %conv = fpext float %1 to double
  %div = fdiv double 1.000000e+00, %conv
  %conv1 = fptrunc double %div to float
  store float %conv1, ptr %step, align 4
  %2 = load i32, ptr %y, align 4
  %conv2 = sitofp i32 %2 to float
  %3 = load float, ptr %step, align 4
  %mul = fmul float %conv2, %3
  store float %mul, ptr %error, align 4
  %4 = load float, ptr %error, align 4
  %conv3 = fptosi float %4 to i32
  %conv4 = sitofp i32 %conv3 to float
  %5 = load float, ptr %step, align 4
  %sub = fsub float %conv4, %5
  %6 = load float, ptr %error, align 4
  %sub5 = fsub float %6, %sub
  store float %sub5, ptr %error, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %y, align 4
  %8 = load i32, ptr %ye, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load float, ptr %error, align 4
  %conv7 = fpext float %9 to double
  %cmp8 = fcmp oge double %conv7, 1.000000e+00
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load float, ptr %error, align 4
  %conv10 = fptosi float %10 to i32
  %11 = load ptr, ptr %info.addr, align 8
  %src_y = getelementptr inbounds nuw %struct._RenderInfo, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %src_y, align 4
  %add = add nsw i32 %12, %conv10
  store i32 %add, ptr %src_y, align 4
  %13 = load float, ptr %error, align 4
  %conv11 = fptosi float %13 to i32
  %conv12 = sitofp i32 %conv11 to float
  %14 = load float, ptr %error, align 4
  %sub13 = fsub float %14, %conv12
  store float %sub13, ptr %error, align 4
  call void @bar()
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %15 = load float, ptr %step, align 4
  %16 = load float, ptr %error, align 4
  %add14 = fadd float %16, %15
  store float %add14, ptr %error, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %y, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %y, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %info.addr, align 8
  %src_y15 = getelementptr inbounds nuw %struct._RenderInfo, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %src_y15, align 4
  ret i32 %19
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @bar() #0 {
entry:
  ret void
}

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
