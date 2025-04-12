; 120399579777517228250687756935904241282
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/120399579777517228250687756935904241282.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/120399579777517228250687756935904241282.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"joe\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fred() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @joe() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @fred()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call1 = call i32 @joe()
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %land.ext)
  %call4 = call i32 @fred()
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.end
  %call6 = call i32 @joe()
  %tobool7 = icmp ne i32 %call6, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.end
  %1 = phi i1 [ true, %land.end ], [ %tobool7, %lor.rhs ]
  %lor.ext = zext i1 %1 to i32
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %lor.ext)
  %call9 = call i32 @joe()
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.rhs11, label %land.end14

land.rhs11:                                       ; preds = %lor.end
  %call12 = call i32 @fred()
  %tobool13 = icmp ne i32 %call12, 0
  br label %land.end14

land.end14:                                       ; preds = %land.rhs11, %lor.end
  %2 = phi i1 [ false, %lor.end ], [ %tobool13, %land.rhs11 ]
  %land.ext15 = zext i1 %2 to i32
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %land.ext15)
  %call17 = call i32 @joe()
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %lor.end22, label %lor.rhs19

lor.rhs19:                                        ; preds = %land.end14
  %call20 = call i32 @fred()
  %tobool21 = icmp ne i32 %call20, 0
  br label %lor.end22

lor.end22:                                        ; preds = %lor.rhs19, %land.end14
  %3 = phi i1 [ true, %land.end14 ], [ %tobool21, %lor.rhs19 ]
  %lor.ext23 = zext i1 %3 to i32
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %lor.ext23)
  %call25 = call i32 @fred()
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.rhs27, label %land.end30

land.rhs27:                                       ; preds = %lor.end22
  %call28 = call i32 @joe()
  %add = add nsw i32 1, %call28
  %tobool29 = icmp ne i32 %add, 0
  br label %land.end30

land.end30:                                       ; preds = %land.rhs27, %lor.end22
  %4 = phi i1 [ false, %lor.end22 ], [ %tobool29, %land.rhs27 ]
  %land.ext31 = zext i1 %4 to i32
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %land.ext31)
  %call33 = call i32 @fred()
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %lor.end39, label %lor.rhs35

lor.rhs35:                                        ; preds = %land.end30
  %call36 = call i32 @joe()
  %add37 = add nsw i32 0, %call36
  %tobool38 = icmp ne i32 %add37, 0
  br label %lor.end39

lor.end39:                                        ; preds = %lor.rhs35, %land.end30
  %5 = phi i1 [ true, %land.end30 ], [ %tobool38, %lor.rhs35 ]
  %lor.ext40 = zext i1 %5 to i32
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %lor.ext40)
  %call42 = call i32 @joe()
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %land.rhs44, label %land.end48

land.rhs44:                                       ; preds = %lor.end39
  %call45 = call i32 @fred()
  %add46 = add nsw i32 0, %call45
  %tobool47 = icmp ne i32 %add46, 0
  br label %land.end48

land.end48:                                       ; preds = %land.rhs44, %lor.end39
  %6 = phi i1 [ false, %lor.end39 ], [ %tobool47, %land.rhs44 ]
  %land.ext49 = zext i1 %6 to i32
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %land.ext49)
  %call51 = call i32 @joe()
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %lor.end57, label %lor.rhs53

lor.rhs53:                                        ; preds = %land.end48
  %call54 = call i32 @fred()
  %add55 = add nsw i32 1, %call54
  %tobool56 = icmp ne i32 %add55, 0
  br label %lor.end57

lor.end57:                                        ; preds = %lor.rhs53, %land.end48
  %7 = phi i1 [ true, %land.end48 ], [ %tobool56, %lor.rhs53 ]
  %lor.ext58 = zext i1 %7 to i32
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %lor.ext58)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
