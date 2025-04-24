; 111703948955644316454696487748825201888
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/111703948955644316454696487748825201888.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/111703948955644316454696487748825201888.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i8, i8, i8, i16 }

; Function Attrs: noinline nounwind uwtable
define dso_local i48 @g() #0 {
entry:
  %retval = alloca %struct.T, align 2
  %retval.coerce = alloca i48, align 8
  %hours = getelementptr inbounds nuw %struct.T, ptr %retval, i32 0, i32 0
  store i8 1, ptr %hours, align 2
  br label %while.body

while.body:                                       ; preds = %entry
  br label %while.end

while.end:                                        ; preds = %while.body
  %day = getelementptr inbounds nuw %struct.T, ptr %retval, i32 0, i32 1
  store i8 2, ptr %day, align 1
  %month = getelementptr inbounds nuw %struct.T, ptr %retval, i32 0, i32 2
  store i8 3, ptr %month, align 2
  %year = getelementptr inbounds nuw %struct.T, ptr %retval, i32 0, i32 3
  store i16 4, ptr %year, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval.coerce, ptr align 2 %retval, i64 6, i1 false)
  %0 = load i48, ptr %retval.coerce, align 8
  ret i48 %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i48 @f() #0 {
entry:
  %retval = alloca %struct.T, align 2
  %tmp = alloca %struct.T, align 2
  %retval.coerce = alloca i48, align 8
  %call = call i48 @g()
  store i48 %call, ptr %tmp, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %retval, ptr align 2 %tmp, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval.coerce, ptr align 2 %retval, i64 6, i1 false)
  %0 = load i48, ptr %retval.coerce, align 8
  ret i48 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %coerce = alloca %struct.T, align 2
  %coerce3 = alloca %struct.T, align 2
  %coerce9 = alloca %struct.T, align 2
  %coerce15 = alloca %struct.T, align 2
  store i32 0, ptr %retval, align 4
  %call = call i48 @f()
  store i48 %call, ptr %coerce, align 2
  %hours = getelementptr inbounds nuw %struct.T, ptr %coerce, i32 0, i32 0
  %0 = load i8, ptr %hours, align 2
  %conv = sext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i48 @f()
  store i48 %call2, ptr %coerce3, align 2
  %day = getelementptr inbounds nuw %struct.T, ptr %coerce3, i32 0, i32 1
  %1 = load i8, ptr %day, align 1
  %conv4 = sext i8 %1 to i32
  %cmp5 = icmp ne i32 %conv4, 2
  br i1 %cmp5, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call i48 @f()
  store i48 %call8, ptr %coerce9, align 2
  %month = getelementptr inbounds nuw %struct.T, ptr %coerce9, i32 0, i32 2
  %2 = load i8, ptr %month, align 2
  %conv10 = sext i8 %2 to i32
  %cmp11 = icmp ne i32 %conv10, 3
  br i1 %cmp11, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %call14 = call i48 @f()
  store i48 %call14, ptr %coerce15, align 2
  %year = getelementptr inbounds nuw %struct.T, ptr %coerce15, i32 0, i32 3
  %3 = load i16, ptr %year, align 2
  %conv16 = sext i16 %3 to i32
  %cmp17 = icmp ne i32 %conv16, 4
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false13, %lor.lhs.false7, %lor.lhs.false, %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false13
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

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
