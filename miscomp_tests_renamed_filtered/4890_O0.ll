; 186501013349395144161360674505659925091
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/186501013349395144161360674505659925091.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/186501013349395144161360674505659925091.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xx = type { i32, ptr, i16 }

@.str = private unnamed_addr constant [30 x i8] c"Square calculation complete.\0A\00", align 1
@f1.beenhere = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(ptr noundef %p, i32 noundef %b, i32 noundef %c, i32 noundef %d) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %a = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %b, ptr %b.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  store i32 %d, ptr %d.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load i32, ptr %d.addr, align 4
  ret i32 %0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.xx, align 8
  store i32 0, ptr %retval, align 4
  %a = getelementptr inbounds nuw %struct.xx, ptr %s, i32 0, i32 0
  store i32 0, ptr %a, align 8
  %0 = getelementptr i8, ptr %s, i64 4
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 4, i1 false)
  %b = getelementptr inbounds nuw %struct.xx, ptr %s, i32 0, i32 1
  store ptr %s, ptr %b, align 8
  %c = getelementptr inbounds nuw %struct.xx, ptr %s, i32 0, i32 2
  store i16 23, ptr %c, align 8
  %1 = getelementptr i8, ptr %s, i64 18
  call void @llvm.memset.p0.i64(ptr align 2 %1, i8 0, i64 6, i1 false)
  %call = call i32 @foo(ptr noundef %s, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %a1 = getelementptr inbounds nuw %struct.xx, ptr %s, i32 0, i32 0
  %2 = load i32, ptr %a1, align 8
  %cmp2 = icmp ne i32 %2, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %b4 = getelementptr inbounds nuw %struct.xx, ptr %s, i32 0, i32 1
  %3 = load ptr, ptr %b4, align 8
  %cmp5 = icmp ne ptr %3, %s
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %c7 = getelementptr inbounds nuw %struct.xx, ptr %s, i32 0, i32 2
  %4 = load i16, ptr %c7, align 8
  %conv = sext i16 %4 to i32
  %cmp8 = icmp ne i32 %conv, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false6
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load i32, ptr @f1.beenhere, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @f1.beenhere, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @f1.beenhere, align 4
  %cmp1 = icmp sgt i32 %1, 1
  %conv = zext i1 %cmp1 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2() #0 {
entry:
  call void @abort() #5
  unreachable
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
