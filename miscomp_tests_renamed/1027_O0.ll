; 118442075244385275140885794376092520050
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/118442075244385275140885794376092520050.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/118442075244385275140885794376092520050.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union._D_rep = type { double }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @add(ptr noundef %key, ptr noundef %table) #0 {
entry:
  %key.addr = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %deletedEntry = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %_D_inf = alloca %union._D_rep, align 8
  %_D_inf2 = alloca %union._D_rep, align 8
  store ptr %key, ptr %key.addr, align 8
  store ptr %table, ptr %table.addr, align 8
  store i32 0, ptr %i, align 4
  store ptr null, ptr %deletedEntry, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end6
  %0 = load ptr, ptr %table.addr, align 8
  %1 = load i32, ptr %i, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds nuw double, ptr %0, i64 %idx.ext
  store ptr %add.ptr, ptr %entry1, align 8
  %2 = load ptr, ptr %entry1, align 8
  %3 = load double, ptr %2, align 8
  %4 = load ptr, ptr %key.addr, align 8
  %5 = load double, ptr %4, align 8
  %cmp = fcmp oeq double %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @llvm.memset.p0.i64(ptr align 8 %_D_inf, i8 0, i64 8, i1 false)
  %6 = load ptr, ptr %entry1, align 8
  %7 = load double, ptr %6, align 8
  %8 = load double, ptr %_D_inf, align 8
  %cmp2 = fcmp une double %7, %8
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end4:                                          ; preds = %if.end
  call void @llvm.memset.p0.i64(ptr align 8 %_D_inf2, i8 0, i64 8, i1 false)
  %9 = load double, ptr %_D_inf2, align 8
  %tobool = fcmp une double %9, 0.000000e+00
  br i1 %tobool, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end4
  %10 = load ptr, ptr %entry1, align 8
  store ptr %10, ptr %deletedEntry, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end4
  %11 = load i32, ptr %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %while.body

while.end:                                        ; preds = %if.then
  %12 = load ptr, ptr %deletedEntry, align 8
  %tobool7 = icmp ne ptr %12, null
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.end
  %13 = load ptr, ptr %deletedEntry, align 8
  store double 0.000000e+00, ptr %13, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %while.end
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %infinit = alloca %union._D_rep, align 8
  %table = alloca [2 x double], align 16
  %key = alloca double, align 8
  %ret = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %infinit, i8 0, i64 8, i1 false)
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
