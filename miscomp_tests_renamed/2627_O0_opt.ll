; 162465239449667399974875153856046206595
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/162465239449667399974875153856046206595_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/162465239449667399974875153856046206595.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { %struct.A, [1 x i32] }
%struct.A = type { i32, i32, i32, i32 }
%struct.C = type { %struct.A, [0 x i32] }
%struct.D = type { %struct.A, [0 x i32] }

@__const.main.b = private unnamed_addr constant %struct.B { %struct.A { i32 0, i32 5, i32 0, i32 0 }, [1 x i32] zeroinitializer }, align 4
@__const.main.c = private unnamed_addr constant %struct.C { %struct.A { i32 0, i32 5, i32 0, i32 0 }, [0 x i32] zeroinitializer }, align 4
@__const.main.d = private unnamed_addr constant %struct.D { %struct.A { i32 0, i32 5, i32 0, i32 0 }, [0 x i32] zeroinitializer }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %i = getelementptr inbounds nuw %struct.A, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %i, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %x.addr, align 8
  %j = getelementptr inbounds nuw %struct.A, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %j, align 4
  %cmp1 = icmp ne i32 %3, 5
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %x.addr, align 8
  %k = getelementptr inbounds nuw %struct.A, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %k, align 4
  %cmp3 = icmp ne i32 %5, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %x.addr, align 8
  %l = getelementptr inbounds nuw %struct.A, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %l, align 4
  %cmp5 = icmp ne i32 %7, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %b = alloca %struct.B, align 4
  %c = alloca %struct.C, align 4
  %d = alloca %struct.D, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b, ptr align 4 @__const.main.b, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %c, ptr align 4 @__const.main.c, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %d, ptr align 4 @__const.main.d, i64 16, i1 false)
  %a = getelementptr inbounds nuw %struct.B, ptr %b, i32 0, i32 0
  call void @foo(ptr noundef %a)
  %a1 = getelementptr inbounds nuw %struct.C, ptr %c, i32 0, i32 0
  call void @foo(ptr noundef %a1)
  %a2 = getelementptr inbounds nuw %struct.D, ptr %d, i32 0, i32 0
  call void @foo(ptr noundef %a2)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
