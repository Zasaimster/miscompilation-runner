; 127761526727102167558905833316258598160
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/127761526727102167558905833316258598160.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/127761526727102167558905833316258598160.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client_s = type { i32, i32, [0 x %struct.client_frame_t] }
%struct.client_frame_t = type { double, float, %struct.packet_entities_t }
%struct.packet_entities_t = type { i32, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CalcPing(ptr noundef %cl) #0 {
entry:
  %retval = alloca i32, align 4
  %cl.addr = alloca ptr, align 8
  %ping = alloca float, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %frame = alloca ptr, align 8
  store ptr %cl, ptr %cl.addr, align 8
  %0 = load ptr, ptr %cl.addr, align 8
  %state = getelementptr inbounds nuw %struct.client_s, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %state, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cl.addr, align 8
  %ping1 = getelementptr inbounds nuw %struct.client_s, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %ping1, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store float 0.000000e+00, ptr %ping, align 4
  store i32 0, ptr %count, align 4
  %4 = load ptr, ptr %cl.addr, align 8
  %frames = getelementptr inbounds nuw %struct.client_s, ptr %4, i32 0, i32 2
  %arraydecay = getelementptr inbounds [0 x %struct.client_frame_t], ptr %frames, i64 0, i64 0
  store ptr %arraydecay, ptr %frame, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %5, 64
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %frame, align 8
  %ping_time = getelementptr inbounds nuw %struct.client_frame_t, ptr %6, i32 0, i32 1
  %7 = load float, ptr %ping_time, align 8
  %cmp3 = fcmp ogt float %7, 0.000000e+00
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %for.body
  %8 = load ptr, ptr %frame, align 8
  %ping_time5 = getelementptr inbounds nuw %struct.client_frame_t, ptr %8, i32 0, i32 1
  %9 = load float, ptr %ping_time5, align 8
  %10 = load float, ptr %ping, align 4
  %add = fadd float %10, %9
  store float %add, ptr %ping, align 4
  %11 = load i32, ptr %count, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %count, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %12 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %12, 1
  store i32 %inc7, ptr %i, align 4
  %13 = load ptr, ptr %frame, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.client_frame_t, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %frame, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %14 = load i32, ptr %count, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end9, label %if.then8

if.then8:                                         ; preds = %for.end
  store i32 9999, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %for.end
  %15 = load i32, ptr %count, align 4
  %conv = sitofp i32 %15 to float
  %16 = load float, ptr %ping, align 4
  %div = fdiv float %16, %conv
  store float %div, ptr %ping, align 4
  %17 = load float, ptr %ping, align 4
  %mul = fmul float %17, 1.000000e+03
  %conv10 = fptosi float %mul to i32
  store i32 %conv10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %cl = alloca %struct.client_s, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %cl, i8 0, i64 8, i1 false)
  %frames = getelementptr inbounds nuw %struct.client_s, ptr %cl, i32 0, i32 2
  %arrayidx = getelementptr inbounds [0 x %struct.client_frame_t], ptr %frames, i64 0, i64 0
  %ping_time = getelementptr inbounds nuw %struct.client_frame_t, ptr %arrayidx, i32 0, i32 1
  store float 1.000000e+00, ptr %ping_time, align 8
  %call = call i32 @CalcPing(ptr noundef %cl)
  %cmp = icmp ne i32 %call, 1000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
