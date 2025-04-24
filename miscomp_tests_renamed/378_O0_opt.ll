; 106320763389918327514552125020052789930
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/106320763389918327514552125020052789930_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/106320763389918327514552125020052789930.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trio = type { i32, i32, i32 }

@__const.main.t = private unnamed_addr constant %struct.trio { i32 1, i32 2, i32 3 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %i, i32 noundef %j, i32 noundef %k, i64 %t.coerce0, i32 %t.coerce1) #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca %struct.trio, align 4
  %coerce = alloca { i64, i32 }, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %0 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 0
  store i64 %t.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 1
  store i32 %t.coerce1, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %t, ptr align 4 %coerce, i64 12, i1 false)
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  store i32 %k, ptr %k.addr, align 4
  %b = getelementptr inbounds nuw %struct.trio, ptr %t, i32 0, i32 1
  %2 = load i32, ptr %b, align 4
  %cmp = icmp ne i32 %2, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %c = getelementptr inbounds nuw %struct.trio, ptr %t, i32 0, i32 2
  %3 = load i32, ptr %c, align 4
  %cmp1 = icmp ne i32 %3, 3
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load i32, ptr %i.addr, align 4
  %cmp3 = icmp ne i32 %4, 4
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load i32, ptr %j.addr, align 4
  %cmp5 = icmp ne i32 %5, 5
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %6 = load i32, ptr %k.addr, align 4
  %cmp7 = icmp ne i32 %6, 6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false6
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i64 %t.coerce0, i32 %t.coerce1, i32 noundef %i, i32 noundef %j, i32 noundef %k) #0 {
entry:
  %t = alloca %struct.trio, align 4
  %coerce = alloca { i64, i32 }, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %t.coerce = alloca { i64, i32 }, align 4
  %0 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 0
  store i64 %t.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 1
  store i32 %t.coerce1, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %t, ptr align 4 %coerce, i64 12, i1 false)
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  store i32 %k, ptr %k.addr, align 4
  %2 = load i32, ptr %i.addr, align 4
  %3 = load i32, ptr %j.addr, align 4
  %4 = load i32, ptr %k.addr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %t.coerce, ptr align 4 %t, i64 12, i1 false)
  %5 = getelementptr inbounds nuw { i64, i32 }, ptr %t.coerce, i32 0, i32 0
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds nuw { i64, i32 }, ptr %t.coerce, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %call = call i32 @bar(i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 %6, i32 %8)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca %struct.trio, align 4
  %t.coerce = alloca { i64, i32 }, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %t, ptr align 4 @__const.main.t, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %t.coerce, ptr align 4 %t, i64 12, i1 false)
  %0 = getelementptr inbounds nuw { i64, i32 }, ptr %t.coerce, i32 0, i32 0
  %1 = load i64, ptr %0, align 4
  %2 = getelementptr inbounds nuw { i64, i32 }, ptr %t.coerce, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %call = call i32 @foo(i64 %1, i32 %3, i32 noundef 4, i32 noundef 5, i32 noundef 6)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
