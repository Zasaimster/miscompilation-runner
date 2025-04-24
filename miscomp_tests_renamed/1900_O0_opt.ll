; 133513904951001815089407291399298433343
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/133513904951001815089407291399298433343_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/133513904951001815089407291399298433343.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%lx%08.lx\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"12345678\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"aabbccdd12345678\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ffffffffffffffff\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"aabbccdd\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @proc1() #0 {
entry:
  ret i64 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @proc2() #0 {
entry:
  ret i64 305419895
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @proc3() #0 {
entry:
  ret i64 -6144092016751651208
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @proc4() #0 {
entry:
  ret i64 -1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @proc5() #0 {
entry:
  ret i64 2864434397
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @print_longlong(i64 noundef %x, ptr noundef %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %l = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  %0 = load i64, ptr %x.addr, align 8
  %shr = ashr i64 %0, 32
  %and = and i64 %shr, 4294967295
  store i64 %and, ptr %l, align 8
  %1 = load i64, ptr %l, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8
  %3 = load i64, ptr %l, align 8
  %4 = load i64, ptr %x.addr, align 8
  %and1 = and i64 %4, 4294967295
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef @.str, i64 noundef %3, i64 noundef %and1) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8
  %6 = load i64, ptr %x.addr, align 8
  %and2 = and i64 %6, 4294967295
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str.1, i64 noundef %and2) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buf = alloca [100 x i8], align 16
  store i32 0, ptr %retval, align 4
  %call = call i64 @proc1()
  %arraydecay = getelementptr inbounds [100 x i8], ptr %buf, i64 0, i64 0
  %call1 = call i32 @print_longlong(i64 noundef %call, ptr noundef %arraydecay)
  %arraydecay2 = getelementptr inbounds [100 x i8], ptr %buf, i64 0, i64 0
  %call3 = call i32 @strcmp(ptr noundef @.str.2, ptr noundef %arraydecay2) #4
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  %call4 = call i64 @proc2()
  %arraydecay5 = getelementptr inbounds [100 x i8], ptr %buf, i64 0, i64 0
  %call6 = call i32 @print_longlong(i64 noundef %call4, ptr noundef %arraydecay5)
  %arraydecay7 = getelementptr inbounds [100 x i8], ptr %buf, i64 0, i64 0
  %call8 = call i32 @strcmp(ptr noundef @.str.3, ptr noundef %arraydecay7) #4
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  call void @abort() #5
  unreachable

if.end11:                                         ; preds = %if.end
  %call12 = call i64 @proc3()
  %arraydecay13 = getelementptr inbounds [100 x i8], ptr %buf, i64 0, i64 0
  %call14 = call i32 @print_longlong(i64 noundef %call12, ptr noundef %arraydecay13)
  %arraydecay15 = getelementptr inbounds [100 x i8], ptr %buf, i64 0, i64 0
  %call16 = call i32 @strcmp(ptr noundef @.str.4, ptr noundef %arraydecay15) #4
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end11
  call void @abort() #5
  unreachable

if.end19:                                         ; preds = %if.end11
  %call20 = call i64 @proc4()
  %arraydecay21 = getelementptr inbounds [100 x i8], ptr %buf, i64 0, i64 0
  %call22 = call i32 @print_longlong(i64 noundef %call20, ptr noundef %arraydecay21)
  %arraydecay23 = getelementptr inbounds [100 x i8], ptr %buf, i64 0, i64 0
  %call24 = call i32 @strcmp(ptr noundef @.str.5, ptr noundef %arraydecay23) #4
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end19
  call void @abort() #5
  unreachable

if.end27:                                         ; preds = %if.end19
  %call28 = call i64 @proc5()
  %arraydecay29 = getelementptr inbounds [100 x i8], ptr %buf, i64 0, i64 0
  %call30 = call i32 @print_longlong(i64 noundef %call28, ptr noundef %arraydecay29)
  %arraydecay31 = getelementptr inbounds [100 x i8], ptr %buf, i64 0, i64 0
  %call32 = call i32 @strcmp(ptr noundef @.str.6, ptr noundef %arraydecay31) #4
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end27
  call void @abort() #5
  unreachable

if.end35:                                         ; preds = %if.end27
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
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
