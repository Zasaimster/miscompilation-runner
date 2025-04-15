; 195226057948341101959265297196070907730
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/195226057948341101959265297196070907730.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/195226057948341101959265297196070907730.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Test1 = type { [4 x i32] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @func1() #0 {
entry:
  %test = alloca %struct.Test1, align 4
  %tmp = alloca %struct.Test1, align 4
  %call = call { i64, i64 } @func2()
  %coerce.dive = getelementptr inbounds nuw %struct.Test1, ptr %tmp, i32 0, i32 0
  %0 = getelementptr inbounds nuw { i64, i64 }, ptr %coerce.dive, i32 0, i32 0
  %1 = extractvalue { i64, i64 } %call, 0
  store i64 %1, ptr %0, align 4
  %2 = getelementptr inbounds nuw { i64, i64 }, ptr %coerce.dive, i32 0, i32 1
  %3 = extractvalue { i64, i64 } %call, 1
  store i64 %3, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %test, ptr align 4 %tmp, i64 16, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @func2() #0 {
entry:
  %retval = alloca %struct.Test1, align 4
  %v = getelementptr inbounds nuw %struct.Test1, ptr %retval, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i32], ptr %v, i64 0, i64 0
  store i32 10, ptr %arrayidx, align 4
  %v1 = getelementptr inbounds nuw %struct.Test1, ptr %retval, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [4 x i32], ptr %v1, i64 0, i64 1
  store i32 20, ptr %arrayidx2, align 4
  %v3 = getelementptr inbounds nuw %struct.Test1, ptr %retval, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [4 x i32], ptr %v3, i64 0, i64 2
  store i32 30, ptr %arrayidx4, align 4
  %v5 = getelementptr inbounds nuw %struct.Test1, ptr %retval, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [4 x i32], ptr %v5, i64 0, i64 3
  store i32 40, ptr %arrayidx6, align 4
  %coerce.dive = getelementptr inbounds nuw %struct.Test1, ptr %retval, i32 0, i32 0
  %0 = load { i64, i64 }, ptr %coerce.dive, align 4
  ret { i64, i64 } %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @func1()
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
