; 188798920654359119498084530588935195948
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/188798920654359119498084530588935195948_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/188798920654359119498084530588935195948.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.struc = type { i8, [3 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @dummy(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  ret ptr null
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bogus(ptr noundef %insn, ptr noundef %thread, ptr noundef %delay_list) #0 {
entry:
  %insn.addr = alloca ptr, align 8
  %thread.addr = alloca ptr, align 8
  %delay_list.addr = alloca ptr, align 8
  %new_thread = alloca ptr, align 8
  %must_annul = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  store ptr %thread, ptr %thread.addr, align 8
  store ptr %delay_list, ptr %delay_list.addr, align 8
  %call = call ptr @dummy(ptr noundef %must_annul, ptr noundef %new_thread)
  store ptr %call, ptr %delay_list.addr, align 8
  %0 = load ptr, ptr %delay_list.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %new_thread, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %new_thread, align 8
  store ptr %2, ptr %thread.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load ptr, ptr %delay_list.addr, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %land.lhs.true2, label %if.end5

land.lhs.true2:                                   ; preds = %if.end
  %4 = load i32, ptr %must_annul, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true2
  %5 = load ptr, ptr %insn.addr, align 8
  %bf.load = load i8, ptr %5, align 4
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, ptr %5, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true2, %if.end
  %6 = load ptr, ptr %new_thread, align 8
  %7 = load ptr, ptr %thread.addr, align 8
  %cmp6 = icmp ne ptr %6, %7
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @abort() #3
  unreachable

if.end8:                                          ; preds = %if.end5
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %baz = alloca %struct.struc, align 4
  store i32 0, ptr %retval, align 4
  call void @bogus(ptr noundef %baz, ptr noundef inttoptr (i64 7 to ptr), ptr noundef null)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

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
