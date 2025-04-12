; 148941806196688013222160466056463162776
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/148941806196688013222160466056463162776_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/148941806196688013222160466056463162776.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_struct = type { i32 }
%struct.asection_struct = type { i8, i64, i64, i32, i32 }

@hello = internal global [6 x i8] c"hello\00", align 1
@.str = private unnamed_addr constant [8 x i8] c".newsec\00", align 1
@bfd_openw_with_cleanup.foo_bfd = internal global %struct.bfd_struct zeroinitializer, align 4
@bfd_make_section_anyway.foo_section = internal global { i8, [7 x i8], i64, i64, i32, i32 } zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"This branch is executed.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @dump_bfd_file(ptr noundef null, ptr noundef null, ptr noundef null, i64 noundef 3735928559, ptr noundef @hello, i32 noundef 514703087)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @dump_bfd_file(ptr noundef %filename, ptr noundef %mode, ptr noundef %target, i64 noundef %vaddr, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %vaddr.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %obfd = alloca ptr, align 8
  %osection = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %mode, ptr %mode.addr, align 8
  store ptr %target, ptr %target.addr, align 8
  store i64 %vaddr, ptr %vaddr.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load ptr, ptr %filename.addr, align 8
  %1 = load ptr, ptr %target.addr, align 8
  %2 = load ptr, ptr %mode.addr, align 8
  %call = call ptr @bfd_openw_with_cleanup(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store ptr %call, ptr %obfd, align 8
  %3 = load ptr, ptr %obfd, align 8
  %call1 = call ptr @bfd_make_section_anyway(ptr noundef %3, ptr noundef @.str)
  store ptr %call1, ptr %osection, align 8
  %4 = load ptr, ptr %obfd, align 8
  %5 = load ptr, ptr %osection, align 8
  %6 = load i32, ptr %len.addr, align 4
  %conv = sext i32 %6 to i64
  %call2 = call i32 @bfd_set_section_size(ptr noundef %4, ptr noundef %5, i64 noundef %conv)
  %7 = load i64, ptr %vaddr.addr, align 8
  %8 = load ptr, ptr %osection, align 8
  %lma = getelementptr inbounds nuw %struct.asection_struct, ptr %8, i32 0, i32 2
  store i64 %7, ptr %lma, align 8
  %9 = load ptr, ptr %osection, align 8
  %vma = getelementptr inbounds nuw %struct.asection_struct, ptr %9, i32 0, i32 1
  store i64 %7, ptr %vma, align 8
  %10 = load ptr, ptr %osection, align 8
  %bf.load = load i8, ptr %10, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, ptr %10, align 8
  %11 = load ptr, ptr %osection, align 8
  %alignment_power = getelementptr inbounds nuw %struct.asection_struct, ptr %11, i32 0, i32 3
  store i32 0, ptr %alignment_power, align 8
  %12 = load ptr, ptr %obfd, align 8
  %13 = load ptr, ptr %osection, align 8
  %call3 = call i32 @bfd_set_section_flags(ptr noundef %12, ptr noundef %13, i32 noundef 515)
  %14 = load ptr, ptr %osection, align 8
  %entsize = getelementptr inbounds nuw %struct.asection_struct, ptr %14, i32 0, i32 4
  store i32 0, ptr %entsize, align 4
  %15 = load ptr, ptr %obfd, align 8
  %16 = load ptr, ptr %osection, align 8
  %17 = load ptr, ptr %buf.addr, align 8
  %18 = load i32, ptr %len.addr, align 4
  %conv4 = sext i32 %18 to i64
  %call5 = call i32 @bfd_set_section_contents(ptr noundef %15, ptr noundef %16, ptr noundef %17, i64 noundef 0, i64 noundef %conv4)
  ret void
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal ptr @bfd_openw_with_cleanup(ptr noundef %filename, ptr noundef %target, ptr noundef %mode) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %target, ptr %target.addr, align 8
  store ptr %mode, ptr %mode.addr, align 8
  ret ptr @bfd_openw_with_cleanup.foo_bfd
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @bfd_make_section_anyway(ptr noundef %abfd, ptr noundef %name) #0 {
entry:
  %abfd.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %abfd, ptr %abfd.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  ret ptr @bfd_make_section_anyway.foo_section
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bfd_set_section_size(ptr noundef %abfd, ptr noundef %sec, i64 noundef %val) #0 {
entry:
  %abfd.addr = alloca ptr, align 8
  %sec.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  store ptr %abfd, ptr %abfd.addr, align 8
  store ptr %sec, ptr %sec.addr, align 8
  store i64 %val, ptr %val.addr, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bfd_set_section_flags(ptr noundef %abfd, ptr noundef %sec, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %abfd.addr = alloca ptr, align 8
  %sec.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %abfd, ptr %abfd.addr, align 8
  store ptr %sec, ptr %sec.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bfd_set_section_contents(ptr noundef %abfd, ptr noundef %section, ptr noundef %data, i64 noundef %offset, i64 noundef %count) #0 {
entry:
  %retval = alloca i32, align 4
  %abfd.addr = alloca ptr, align 8
  %section.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store ptr %abfd, ptr %abfd.addr, align 8
  store ptr %section, ptr %section.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %offset, ptr %offset.addr, align 8
  store i64 %count, ptr %count.addr, align 8
  %0 = load i64, ptr %count.addr, align 8
  %cmp = icmp ne i64 %0, 514703087
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
