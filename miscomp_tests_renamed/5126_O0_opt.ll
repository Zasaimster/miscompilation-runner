; 190481229164092134982546126658182752595
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/190481229164092134982546126658182752595_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/190481229164092134982546126658182752595.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union._D_rep = type { double }

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@__const.main.infinit = private unnamed_addr constant { [4 x i16] } { [4 x i16] [i16 0, i16 0, i16 0, i16 32752] }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @add(ptr noundef %key, ptr noundef %table) #0 {
entry:
  %key.addr = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %deletedEntry = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  store ptr %table, ptr %table.addr, align 8
  store i32 0, ptr %i, align 4
  store ptr null, ptr %deletedEntry, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load ptr, ptr %deletedEntry, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %deletedEntry, align 8
  store double 0.000000e+00, ptr %1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %infinit = alloca %union._D_rep, align 8
  %table = alloca [2 x double], align 16
  %key = alloca double, align 8
  %ret = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %infinit, ptr align 8 @__const.main.infinit, i64 8, i1 false)
  %0 = load double, ptr %infinit, align 8
  store double %0, ptr %table, align 8
  %arrayinit.element = getelementptr inbounds double, ptr %table, i64 1
  store double 2.300000e+01, ptr %arrayinit.element, align 8
  store double 2.300000e+01, ptr %key, align 8
  %arraydecay = getelementptr inbounds [2 x double], ptr %table, i64 0, i64 0
  %call = call i32 @add(ptr noundef %key, ptr noundef %arraydecay)
  store i32 %call, ptr %ret, align 4
  %1 = load i32, ptr %ret, align 4
  ret i32 %1
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
