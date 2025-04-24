; 17450393817167156349022631191381748870
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/17450393817167156349022631191381748870_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/17450393817167156349022631191381748870.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Test1 = type { [0 x i32] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @func1() #0 {
entry:
  %retval = alloca i32, align 4
  %test = alloca %struct.Test1, align 4
  %undef.agg.tmp = alloca %struct.Test1, align 4
  call void @func2()
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %test, ptr align 4 %undef.agg.tmp, i64 0, i1 false)
  %v = getelementptr inbounds nuw %struct.Test1, ptr %test, i32 0, i32 0
  %arrayidx = getelementptr inbounds [0 x i32], ptr %v, i64 0, i64 0
  %0 = load i32, ptr %arrayidx, align 4
  %cmp = icmp ne i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %v1 = getelementptr inbounds nuw %struct.Test1, ptr %test, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [0 x i32], ptr %v1, i64 0, i64 1
  %1 = load i32, ptr %arrayidx2, align 4
  %cmp3 = icmp ne i32 %1, 20
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end5:                                          ; preds = %if.end
  %v6 = getelementptr inbounds nuw %struct.Test1, ptr %test, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [0 x i32], ptr %v6, i64 0, i64 2
  %2 = load i32, ptr %arrayidx7, align 4
  %cmp8 = icmp ne i32 %2, 30
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @abort() #4
  unreachable

if.end10:                                         ; preds = %if.end5
  %v11 = getelementptr inbounds nuw %struct.Test1, ptr %test, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [0 x i32], ptr %v11, i64 0, i64 3
  %3 = load i32, ptr %arrayidx12, align 4
  %cmp13 = icmp ne i32 %3, 40
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  call void @abort() #4
  unreachable

if.end15:                                         ; preds = %if.end10
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @func2() #0 {
entry:
  %retval = alloca %struct.Test1, align 4
  %v = getelementptr inbounds nuw %struct.Test1, ptr %retval, i32 0, i32 0
  %arrayidx = getelementptr inbounds [0 x i32], ptr %v, i64 0, i64 0
  store i32 10, ptr %arrayidx, align 4
  %v1 = getelementptr inbounds nuw %struct.Test1, ptr %retval, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [0 x i32], ptr %v1, i64 0, i64 1
  store i32 20, ptr %arrayidx2, align 4
  %v3 = getelementptr inbounds nuw %struct.Test1, ptr %retval, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [0 x i32], ptr %v3, i64 0, i64 2
  store i32 30, ptr %arrayidx4, align 4
  %v5 = getelementptr inbounds nuw %struct.Test1, ptr %retval, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [0 x i32], ptr %v5, i64 0, i64 3
  store i32 40, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @func1()
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
