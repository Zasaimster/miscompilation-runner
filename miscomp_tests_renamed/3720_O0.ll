; 16504975501678907938140418056457248421
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/16504975501678907938140418056457248421.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/16504975501678907938140418056457248421.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i16, i64, i16 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr dead_on_unwind noalias writable sret(%struct.s) align 8 %agg.result, ptr noundef byval(%struct.s) align 8 %s) #0 {
entry:
  %i2 = getelementptr inbounds nuw %struct.s, ptr %s, i32 0, i32 1
  %0 = load i64, ptr %i2, align 8
  %inc = add nsw i64 %0, 1
  store i64 %inc, ptr %i2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.result, ptr align 8 %s, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.s, align 8
  %.compoundliteral = alloca %struct.s, align 8
  store i32 0, ptr %retval, align 4
  %i1 = getelementptr inbounds nuw %struct.s, ptr %.compoundliteral, i32 0, i32 0
  store i16 1000, ptr %i1, align 8
  %0 = getelementptr i8, ptr %.compoundliteral, i64 2
  call void @llvm.memset.p0.i64(ptr align 2 %0, i8 0, i64 6, i1 false)
  %i2 = getelementptr inbounds nuw %struct.s, ptr %.compoundliteral, i32 0, i32 1
  store i64 2000, ptr %i2, align 8
  %i3 = getelementptr inbounds nuw %struct.s, ptr %.compoundliteral, i32 0, i32 2
  store i16 3000, ptr %i3, align 8
  %1 = getelementptr i8, ptr %.compoundliteral, i64 18
  call void @llvm.memset.p0.i64(ptr align 2 %1, i8 0, i64 6, i1 false)
  call void @foo(ptr dead_on_unwind writable sret(%struct.s) align 8 %s, ptr noundef byval(%struct.s) align 8 %.compoundliteral)
  %i11 = getelementptr inbounds nuw %struct.s, ptr %s, i32 0, i32 0
  %2 = load i16, ptr %i11, align 8
  %conv = sext i16 %2 to i32
  %cmp = icmp ne i32 %conv, 1000
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %i23 = getelementptr inbounds nuw %struct.s, ptr %s, i32 0, i32 1
  %3 = load i64, ptr %i23, align 8
  %cmp4 = icmp ne i64 %3, 2001
  br i1 %cmp4, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %i37 = getelementptr inbounds nuw %struct.s, ptr %s, i32 0, i32 2
  %4 = load i16, ptr %i37, align 8
  %conv8 = sext i16 %4 to i32
  %cmp9 = icmp ne i32 %conv8, 3000
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false, %entry
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
