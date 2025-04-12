; 17166765229601486359094579848076515166
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/17166765229601486359094579848076515166_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/17166765229601486359094579848076515166.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t = type { ptr, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @f(ptr noundef %clas, i32 noundef %size) #0 {
entry:
  %clas.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %child = alloca ptr, align 8
  store ptr %clas, ptr %clas.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store ptr null, ptr %child, align 8
  %0 = load ptr, ptr %child, align 8
  %1 = load ptr, ptr %clas.addr, align 8
  %2 = load ptr, ptr %clas.addr, align 8
  %size1 = getelementptr inbounds nuw %struct.t, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %size1, align 4
  %conv = sext i32 %3 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %conv, i1 false)
  %4 = load ptr, ptr %clas.addr, align 8
  %5 = load ptr, ptr %child, align 8
  %super = getelementptr inbounds nuw %struct.t, ptr %5, i32 0, i32 0
  store ptr %4, ptr %super, align 8
  %6 = load ptr, ptr %child, align 8
  %name = getelementptr inbounds nuw %struct.t, ptr %6, i32 0, i32 1
  store i32 0, ptr %name, align 8
  %7 = load i32, ptr %size.addr, align 4
  %8 = load ptr, ptr %child, align 8
  %size2 = getelementptr inbounds nuw %struct.t, ptr %8, i32 0, i32 2
  store i32 %7, ptr %size2, align 4
  %9 = load ptr, ptr %child, align 8
  ret ptr %9
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %foo = alloca %struct.t, align 8
  %bar = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %foo, i8 37, i64 16, i1 false)
  %size = getelementptr inbounds nuw %struct.t, ptr %foo, i32 0, i32 2
  store i32 16, ptr %size, align 4
  %call = call ptr @f(ptr noundef %foo, i32 noundef 16)
  store ptr %call, ptr %bar, align 8
  %0 = load ptr, ptr %bar, align 8
  %super = getelementptr inbounds nuw %struct.t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %super, align 8
  %cmp = icmp ne ptr %1, %foo
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %bar, align 8
  %name = getelementptr inbounds nuw %struct.t, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %name, align 8
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %bar, align 8
  %size3 = getelementptr inbounds nuw %struct.t, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %size3, align 4
  %conv = sext i32 %5 to i64
  %cmp4 = icmp ne i64 %conv, 16
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
