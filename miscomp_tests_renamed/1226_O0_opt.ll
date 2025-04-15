; 118334214465510249513763460971813575843
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/118334214465510249513763460971813575843_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/118334214465510249513763460971813575843.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i32 noundef %value, i32 noundef %expect) #0 {
entry:
  %value.addr = alloca i32, align 4
  %expect.addr = alloca i32, align 4
  store i32 %value, ptr %value.addr, align 4
  store i32 %expect, ptr %expect.addr, align 4
  %0 = load i32, ptr %expect.addr, align 4
  %cmp = icmp ne i32 0, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 7, ptr %a, align 4
  store i32 6, ptr %b, align 4
  store i32 4, ptr %c, align 4
  store i32 7, ptr %d, align 4
  store i32 2, ptr %e, align 4
  %0 = load i32, ptr %a, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %b, align 4
  %2 = load i32, ptr %c, align 4
  %rem = srem i32 %1, %2
  %tobool1 = icmp ne i32 %rem, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  call void @f(i32 noundef %lor.ext, i32 noundef 1)
  %4 = load i32, ptr %a, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end
  %5 = load i32, ptr %b, align 4
  %6 = load i32, ptr %c, align 4
  %rem3 = srem i32 %5, %6
  br label %cond.end

cond.false:                                       ; preds = %lor.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %rem3, %cond.true ], [ 0, %cond.false ]
  call void @f(i32 noundef %cond, i32 noundef 2)
  %7 = load i32, ptr %b, align 4
  %8 = load i32, ptr %c, align 4
  %rem4 = srem i32 %7, %8
  store i32 %rem4, ptr %a, align 4
  call void @f(i32 noundef %rem4, i32 noundef 2)
  %9 = load i32, ptr %b, align 4
  %10 = load i32, ptr %c, align 4
  %rem5 = srem i32 %9, %10
  %11 = load i32, ptr %a, align 4
  %mul = mul nsw i32 %11, %rem5
  store i32 %mul, ptr %a, align 4
  call void @f(i32 noundef %mul, i32 noundef 4)
  %12 = load i32, ptr %b, align 4
  %13 = load i32, ptr %c, align 4
  %rem6 = srem i32 %12, %13
  %14 = load i32, ptr %a, align 4
  %div = sdiv i32 %14, %rem6
  store i32 %div, ptr %a, align 4
  call void @f(i32 noundef %div, i32 noundef 2)
  %15 = load i32, ptr %b, align 4
  %16 = load i32, ptr %c, align 4
  %rem7 = srem i32 %15, %16
  %17 = load i32, ptr %a, align 4
  %rem8 = srem i32 %17, %rem7
  store i32 %rem8, ptr %a, align 4
  call void @f(i32 noundef %rem8, i32 noundef 0)
  %18 = load i32, ptr %b, align 4
  %19 = load i32, ptr %c, align 4
  %rem9 = srem i32 %18, %19
  %20 = load i32, ptr %a, align 4
  %add = add nsw i32 %20, %rem9
  store i32 %add, ptr %a, align 4
  call void @f(i32 noundef %add, i32 noundef 2)
  %21 = load i32, ptr %d, align 4
  %tobool10 = icmp ne i32 %21, 0
  br i1 %tobool10, label %lor.end14, label %lor.rhs11

lor.rhs11:                                        ; preds = %cond.end
  %22 = load i32, ptr %c, align 4
  %tobool12 = icmp ne i32 %22, 0
  br i1 %tobool12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs11
  %23 = load i32, ptr %e, align 4
  %tobool13 = icmp ne i32 %23, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs11
  %24 = phi i1 [ false, %lor.rhs11 ], [ %tobool13, %land.rhs ]
  br label %lor.end14

lor.end14:                                        ; preds = %land.end, %cond.end
  %25 = phi i1 [ true, %cond.end ], [ %24, %land.end ]
  %lor.ext15 = zext i1 %25 to i32
  call void @f(i32 noundef %lor.ext15, i32 noundef 1)
  %26 = load i32, ptr %d, align 4
  %tobool16 = icmp ne i32 %26, 0
  br i1 %tobool16, label %cond.true17, label %cond.false22

cond.true17:                                      ; preds = %lor.end14
  %27 = load i32, ptr %c, align 4
  %tobool18 = icmp ne i32 %27, 0
  br i1 %tobool18, label %land.rhs19, label %land.end21

land.rhs19:                                       ; preds = %cond.true17
  %28 = load i32, ptr %e, align 4
  %tobool20 = icmp ne i32 %28, 0
  br label %land.end21

land.end21:                                       ; preds = %land.rhs19, %cond.true17
  %29 = phi i1 [ false, %cond.true17 ], [ %tobool20, %land.rhs19 ]
  %land.ext = zext i1 %29 to i32
  br label %cond.end23

cond.false22:                                     ; preds = %lor.end14
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %land.end21
  %cond24 = phi i32 [ %land.ext, %land.end21 ], [ 0, %cond.false22 ]
  call void @f(i32 noundef %cond24, i32 noundef 1)
  %30 = load i32, ptr %c, align 4
  %tobool25 = icmp ne i32 %30, 0
  br i1 %tobool25, label %land.rhs26, label %land.end28

land.rhs26:                                       ; preds = %cond.end23
  %31 = load i32, ptr %e, align 4
  %tobool27 = icmp ne i32 %31, 0
  br label %land.end28

land.end28:                                       ; preds = %land.rhs26, %cond.end23
  %32 = phi i1 [ false, %cond.end23 ], [ %tobool27, %land.rhs26 ]
  %land.ext29 = zext i1 %32 to i32
  store i32 %land.ext29, ptr %d, align 4
  call void @f(i32 noundef %land.ext29, i32 noundef 1)
  %33 = load i32, ptr %c, align 4
  %tobool30 = icmp ne i32 %33, 0
  br i1 %tobool30, label %land.rhs31, label %land.end33

land.rhs31:                                       ; preds = %land.end28
  %34 = load i32, ptr %e, align 4
  %tobool32 = icmp ne i32 %34, 0
  br label %land.end33

land.end33:                                       ; preds = %land.rhs31, %land.end28
  %35 = phi i1 [ false, %land.end28 ], [ %tobool32, %land.rhs31 ]
  %land.ext34 = zext i1 %35 to i32
  %36 = load i32, ptr %d, align 4
  %mul35 = mul nsw i32 %36, %land.ext34
  store i32 %mul35, ptr %d, align 4
  call void @f(i32 noundef %mul35, i32 noundef 1)
  %37 = load i32, ptr %c, align 4
  %tobool36 = icmp ne i32 %37, 0
  br i1 %tobool36, label %land.rhs37, label %land.end39

land.rhs37:                                       ; preds = %land.end33
  %38 = load i32, ptr %e, align 4
  %tobool38 = icmp ne i32 %38, 0
  br label %land.end39

land.end39:                                       ; preds = %land.rhs37, %land.end33
  %39 = phi i1 [ false, %land.end33 ], [ %tobool38, %land.rhs37 ]
  %land.ext40 = zext i1 %39 to i32
  %40 = load i32, ptr %d, align 4
  %rem41 = srem i32 %40, %land.ext40
  store i32 %rem41, ptr %d, align 4
  call void @f(i32 noundef %rem41, i32 noundef 0)
  %41 = load i32, ptr %c, align 4
  %tobool42 = icmp ne i32 %41, 0
  br i1 %tobool42, label %land.rhs43, label %land.end45

land.rhs43:                                       ; preds = %land.end39
  %42 = load i32, ptr %e, align 4
  %tobool44 = icmp ne i32 %42, 0
  br label %land.end45

land.end45:                                       ; preds = %land.rhs43, %land.end39
  %43 = phi i1 [ false, %land.end39 ], [ %tobool44, %land.rhs43 ]
  %land.ext46 = zext i1 %43 to i32
  %44 = load i32, ptr %d, align 4
  %add47 = add nsw i32 %44, %land.ext46
  store i32 %add47, ptr %d, align 4
  call void @f(i32 noundef %add47, i32 noundef 1)
  %45 = load i32, ptr %c, align 4
  %tobool48 = icmp ne i32 %45, 0
  br i1 %tobool48, label %land.rhs49, label %land.end51

land.rhs49:                                       ; preds = %land.end45
  %46 = load i32, ptr %e, align 4
  %tobool50 = icmp ne i32 %46, 0
  br label %land.end51

land.end51:                                       ; preds = %land.rhs49, %land.end45
  %47 = phi i1 [ false, %land.end45 ], [ %tobool50, %land.rhs49 ]
  %land.ext52 = zext i1 %47 to i32
  %48 = load i32, ptr %d, align 4
  %sub = sub nsw i32 %48, %land.ext52
  store i32 %sub, ptr %d, align 4
  call void @f(i32 noundef %sub, i32 noundef 0)
  %49 = load i32, ptr %d, align 4
  %tobool53 = icmp ne i32 %49, 0
  br i1 %tobool53, label %lor.end57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end51
  %50 = load i32, ptr %c, align 4
  %tobool54 = icmp ne i32 %50, 0
  br i1 %tobool54, label %lor.end57, label %lor.rhs55

lor.rhs55:                                        ; preds = %lor.lhs.false
  %51 = load i32, ptr %e, align 4
  %tobool56 = icmp ne i32 %51, 0
  br label %lor.end57

lor.end57:                                        ; preds = %lor.rhs55, %lor.lhs.false, %land.end51
  %52 = phi i1 [ true, %lor.lhs.false ], [ true, %land.end51 ], [ %tobool56, %lor.rhs55 ]
  %lor.ext58 = zext i1 %52 to i32
  call void @f(i32 noundef %lor.ext58, i32 noundef 1)
  %53 = load i32, ptr %d, align 4
  %tobool59 = icmp ne i32 %53, 0
  br i1 %tobool59, label %cond.true60, label %cond.false66

cond.true60:                                      ; preds = %lor.end57
  %54 = load i32, ptr %c, align 4
  %tobool61 = icmp ne i32 %54, 0
  br i1 %tobool61, label %lor.end64, label %lor.rhs62

lor.rhs62:                                        ; preds = %cond.true60
  %55 = load i32, ptr %e, align 4
  %tobool63 = icmp ne i32 %55, 0
  br label %lor.end64

lor.end64:                                        ; preds = %lor.rhs62, %cond.true60
  %56 = phi i1 [ true, %cond.true60 ], [ %tobool63, %lor.rhs62 ]
  %lor.ext65 = zext i1 %56 to i32
  br label %cond.end67

cond.false66:                                     ; preds = %lor.end57
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false66, %lor.end64
  %cond68 = phi i32 [ %lor.ext65, %lor.end64 ], [ 0, %cond.false66 ]
  call void @f(i32 noundef %cond68, i32 noundef 0)
  %57 = load i32, ptr %c, align 4
  %tobool69 = icmp ne i32 %57, 0
  br i1 %tobool69, label %lor.end72, label %lor.rhs70

lor.rhs70:                                        ; preds = %cond.end67
  %58 = load i32, ptr %e, align 4
  %tobool71 = icmp ne i32 %58, 0
  br label %lor.end72

lor.end72:                                        ; preds = %lor.rhs70, %cond.end67
  %59 = phi i1 [ true, %cond.end67 ], [ %tobool71, %lor.rhs70 ]
  %lor.ext73 = zext i1 %59 to i32
  store i32 %lor.ext73, ptr %d, align 4
  call void @f(i32 noundef %lor.ext73, i32 noundef 1)
  %60 = load i32, ptr %c, align 4
  %tobool74 = icmp ne i32 %60, 0
  br i1 %tobool74, label %lor.end77, label %lor.rhs75

lor.rhs75:                                        ; preds = %lor.end72
  %61 = load i32, ptr %e, align 4
  %tobool76 = icmp ne i32 %61, 0
  br label %lor.end77

lor.end77:                                        ; preds = %lor.rhs75, %lor.end72
  %62 = phi i1 [ true, %lor.end72 ], [ %tobool76, %lor.rhs75 ]
  %lor.ext78 = zext i1 %62 to i32
  %63 = load i32, ptr %d, align 4
  %mul79 = mul nsw i32 %63, %lor.ext78
  store i32 %mul79, ptr %d, align 4
  call void @f(i32 noundef %mul79, i32 noundef 1)
  %64 = load i32, ptr %c, align 4
  %tobool80 = icmp ne i32 %64, 0
  br i1 %tobool80, label %lor.end83, label %lor.rhs81

lor.rhs81:                                        ; preds = %lor.end77
  %65 = load i32, ptr %e, align 4
  %tobool82 = icmp ne i32 %65, 0
  br label %lor.end83

lor.end83:                                        ; preds = %lor.rhs81, %lor.end77
  %66 = phi i1 [ true, %lor.end77 ], [ %tobool82, %lor.rhs81 ]
  %lor.ext84 = zext i1 %66 to i32
  %67 = load i32, ptr %d, align 4
  %rem85 = srem i32 %67, %lor.ext84
  store i32 %rem85, ptr %d, align 4
  call void @f(i32 noundef %rem85, i32 noundef 0)
  %68 = load i32, ptr %c, align 4
  %tobool86 = icmp ne i32 %68, 0
  br i1 %tobool86, label %lor.end89, label %lor.rhs87

lor.rhs87:                                        ; preds = %lor.end83
  %69 = load i32, ptr %e, align 4
  %tobool88 = icmp ne i32 %69, 0
  br label %lor.end89

lor.end89:                                        ; preds = %lor.rhs87, %lor.end83
  %70 = phi i1 [ true, %lor.end83 ], [ %tobool88, %lor.rhs87 ]
  %lor.ext90 = zext i1 %70 to i32
  %71 = load i32, ptr %d, align 4
  %add91 = add nsw i32 %71, %lor.ext90
  store i32 %add91, ptr %d, align 4
  call void @f(i32 noundef %add91, i32 noundef 1)
  %72 = load i32, ptr %c, align 4
  %tobool92 = icmp ne i32 %72, 0
  br i1 %tobool92, label %lor.end95, label %lor.rhs93

lor.rhs93:                                        ; preds = %lor.end89
  %73 = load i32, ptr %e, align 4
  %tobool94 = icmp ne i32 %73, 0
  br label %lor.end95

lor.end95:                                        ; preds = %lor.rhs93, %lor.end89
  %74 = phi i1 [ true, %lor.end89 ], [ %tobool94, %lor.rhs93 ]
  %lor.ext96 = zext i1 %74 to i32
  %75 = load i32, ptr %d, align 4
  %sub97 = sub nsw i32 %75, %lor.ext96
  store i32 %sub97, ptr %d, align 4
  call void @f(i32 noundef %sub97, i32 noundef 0)
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
