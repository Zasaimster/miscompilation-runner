; 141314935592041406234446437378805124086
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/141314935592041406234446437378805124086_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/141314935592041406234446437378805124086.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Program runs!\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"inetd\00", align 1
@ap_standalone = dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"standalone\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"ServerType must be either 'inetd' or 'standalone'\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @ap_check_cmd_context(ptr noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %b, ptr %b.addr, align 4
  ret ptr null
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @server_type(ptr noundef %a, ptr noundef %b, ptr noundef %arg) #0 {
entry:
  %retval = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %err = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %conv = sext i32 %call to i64
  %0 = inttoptr i64 %conv to ptr
  store ptr %0, ptr %err, align 8
  %1 = load ptr, ptr %err, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %err, align 8
  store ptr %2, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arg.addr, align 8
  %call1 = call i32 @strcmp(ptr noundef %3, ptr noundef @.str.1) #3
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  store i32 0, ptr @ap_standalone, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  %4 = load ptr, ptr %arg.addr, align 8
  %call4 = call i32 @strcmp(ptr noundef %4, ptr noundef @.str.2) #3
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.else7, label %if.then6

if.then6:                                         ; preds = %if.else
  store i32 1, ptr @ap_standalone, align 4
  br label %if.end8

if.else7:                                         ; preds = %if.else
  store ptr @.str.3, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.then6
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then3
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.else7, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call ptr @server_type(ptr noundef null, ptr noundef null, ptr noundef @.str.2)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
