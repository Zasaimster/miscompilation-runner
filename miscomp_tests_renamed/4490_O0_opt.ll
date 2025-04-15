; 179019254034504788418688841907939518512
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/179019254034504788418688841907939518512_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/179019254034504788418688841907939518512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i16 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %n, i16 %x.coerce, i16 %y.coerce, i16 %z.coerce, i64 noundef %l) #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca %struct.tiny, align 2
  %y = alloca %struct.tiny, align 2
  %z = alloca %struct.tiny, align 2
  %n.addr = alloca i32, align 4
  %l.addr = alloca i64, align 8
  %coerce.dive = getelementptr inbounds nuw %struct.tiny, ptr %x, i32 0, i32 0
  store i16 %x.coerce, ptr %coerce.dive, align 2
  %coerce.dive1 = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 0
  store i16 %y.coerce, ptr %coerce.dive1, align 2
  %coerce.dive2 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 0
  store i16 %z.coerce, ptr %coerce.dive2, align 2
  store i32 %n, ptr %n.addr, align 4
  store i64 %l, ptr %l.addr, align 8
  %c = getelementptr inbounds nuw %struct.tiny, ptr %y, i32 0, i32 0
  %0 = load i16, ptr %c, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp ne i32 %conv, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %c4 = getelementptr inbounds nuw %struct.tiny, ptr %z, i32 0, i32 0
  %1 = load i16, ptr %c4, align 2
  %conv5 = sext i16 %1 to i32
  %cmp6 = icmp ne i32 %conv5, 12
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end9:                                          ; preds = %if.end
  %2 = load i64, ptr %l.addr, align 8
  %cmp10 = icmp ne i64 %2, 123
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @abort() #3
  unreachable

if.end13:                                         ; preds = %if.end9
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca [3 x %struct.tiny], align 2
  store i32 0, ptr %retval, align 4
  %arrayidx = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 0
  %c = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx, i32 0, i32 0
  store i16 10, ptr %c, align 2
  %arrayidx1 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 1
  %c2 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx1, i32 0, i32 0
  store i16 11, ptr %c2, align 2
  %arrayidx3 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 2
  %c4 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx3, i32 0, i32 0
  store i16 12, ptr %c4, align 2
  %arrayidx5 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 0
  %arrayidx6 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 1
  %arrayidx7 = getelementptr inbounds [3 x %struct.tiny], ptr %x, i64 0, i64 2
  %coerce.dive = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx5, i32 0, i32 0
  %0 = load i16, ptr %coerce.dive, align 2
  %coerce.dive8 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx6, i32 0, i32 0
  %1 = load i16, ptr %coerce.dive8, align 2
  %coerce.dive9 = getelementptr inbounds nuw %struct.tiny, ptr %arrayidx7, i32 0, i32 0
  %2 = load i16, ptr %coerce.dive9, align 2
  %call = call i32 @f(i32 noundef 3, i16 %0, i16 %1, i16 %2, i64 noundef 123)
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
