; 1659386893180797726661603138644496654
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/1659386893180797726661603138644496654_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/1659386893180797726661603138644496654.c"
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
  %0 = load float, ptr %error, align 4
  %conv = fptosi float %0 to i32
  %conv1 = sitofp i32 %conv to float
  %1 = load float, ptr %step, align 4
  %sub = fsub float %conv1, %1
  %conv2 = fptosi float %sub to i32
  store i32 %conv2, ptr %y, align 4
  store i32 256, ptr %ye, align 4
  %2 = load ptr, ptr %info.addr, align 8
  %scaley = getelementptr inbounds nuw %struct._RenderInfo, ptr %2, i32 0, i32 1
  %3 = load float, ptr %scaley, align 4
  %conv3 = fpext float %3 to double
  %div = fdiv double 1.000000e+00, %conv3
  %conv4 = fptrunc double %div to float
  store float %conv4, ptr %step, align 4
  %4 = load i32, ptr %y, align 4
  %conv5 = sitofp i32 %4 to float
  %5 = load float, ptr %step, align 4
  %mul = fmul float %conv5, %5
  store float %mul, ptr %error, align 4
  %6 = load float, ptr %error, align 4
  %conv6 = fptosi float %6 to i32
  %conv7 = sitofp i32 %conv6 to float
  %7 = load float, ptr %step, align 4
  %sub8 = fsub float %conv7, %7
  %8 = load float, ptr %error, align 4
  %sub9 = fsub float %8, %sub8
  store float %sub9, ptr %error, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, ptr %y, align 4
  %10 = load i32, ptr %ye, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load float, ptr %error, align 4
  %conv11 = fpext float %11 to double
  %cmp12 = fcmp oge double %conv11, 1.000000e+00
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load float, ptr %error, align 4
  %conv14 = fptosi float %12 to i32
  %13 = load ptr, ptr %info.addr, align 8
  %src_y = getelementptr inbounds nuw %struct._RenderInfo, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %src_y, align 4
  %add = add nsw i32 %14, %conv14
  store i32 %add, ptr %src_y, align 4
  %15 = load float, ptr %error, align 4
  %conv15 = fptosi float %15 to i32
  %conv16 = sitofp i32 %conv15 to float
  %16 = load float, ptr %error, align 4
  %sub17 = fsub float %16, %conv16
  store float %sub17, ptr %error, align 4
  call void @bar()
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %17 = load float, ptr %step, align 4
  %18 = load float, ptr %error, align 4
  %add18 = fadd float %18, %17
  store float %add18, ptr %error, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, ptr %y, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %y, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %info.addr, align 8
  %src_y19 = getelementptr inbounds nuw %struct._RenderInfo, ptr %20, i32 0, i32 2
  %21 = load i32, ptr %src_y19, align 4
  ret i32 %21
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
