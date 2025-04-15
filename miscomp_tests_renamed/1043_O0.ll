; 175287124601684356709310577361251454809
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/175287124601684356709310577361251454809.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/175287124601684356709310577361251454809.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { i32, i32 }
%struct.A = type { i32, %struct.B }

@__const.f.b = private unnamed_addr constant %struct.B { i32 0, i32 1 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i32 } @f() #0 {
entry:
  %retval = alloca %struct.A, align 4
  %b = alloca %struct.B, align 4
  %retval.coerce = alloca { i64, i32 }, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b, ptr align 4 @__const.f.b, i64 8, i1 false)
  %z = getelementptr inbounds nuw %struct.A, ptr %retval, i32 0, i32 0
  store i32 2, ptr %z, align 4
  %b1 = getelementptr inbounds nuw %struct.A, ptr %retval, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b1, ptr align 4 %b, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval.coerce, ptr align 4 %retval, i64 12, i1 false)
  %0 = load { i64, i32 }, ptr %retval.coerce, align 8
  ret { i64, i32 } %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %struct.A, align 4
  %tmp.coerce = alloca { i64, i32 }, align 8
  store i32 0, ptr %retval, align 4
  %call = call { i64, i32 } @f()
  store { i64, i32 } %call, ptr %tmp.coerce, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %tmp.coerce, i64 12, i1 false)
  %z = getelementptr inbounds nuw %struct.A, ptr %a, i32 0, i32 0
  %0 = load i32, ptr %z, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %b = getelementptr inbounds nuw %struct.A, ptr %a, i32 0, i32 1
  %x = getelementptr inbounds nuw %struct.B, ptr %b, i32 0, i32 0
  %1 = load i32, ptr %x, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %b3 = getelementptr inbounds nuw %struct.A, ptr %a, i32 0, i32 1
  %y = getelementptr inbounds nuw %struct.B, ptr %b3, i32 0, i32 1
  %2 = load i32, ptr %y, align 4
  %cmp4 = icmp ne i32 %2, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
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
