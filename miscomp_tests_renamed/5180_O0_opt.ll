; 15429508992504607282385236726808651778
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/15429508992504607282385236726808651778_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/15429508992504607282385236726808651778.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { ptr, i64 }

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1
@nil = dso_local global i32 0, align 4
@cons1 = dso_local global [2 x %struct.object] [%struct.object { ptr @nil, i64 0 }, %struct.object { ptr @nil, i64 0 }], align 16
@cons2 = dso_local global [2 x %struct.object] [%struct.object { ptr @cons1, i64 64 }, %struct.object { ptr @nil, i64 0 }], align 16
@__const.main.x = private unnamed_addr constant %struct.object { ptr @cons2, i64 64 }, align 8
@__const.main.y = private unnamed_addr constant %struct.object { ptr @nil, i64 0 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local { ptr, i64 } @bar(ptr %blah.coerce0, i64 %blah.coerce1) #0 {
entry:
  %retval = alloca %struct.object, align 8
  %blah = alloca %struct.object, align 8
  %0 = getelementptr inbounds nuw { ptr, i64 }, ptr %blah, i32 0, i32 0
  store ptr %blah.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds nuw { ptr, i64 }, ptr %blah, i32 0, i32 1
  store i64 %blah.coerce1, ptr %1, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %2 = load { ptr, i64 }, ptr %retval, align 8
  ret { ptr, i64 } %2
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local { ptr, i64 } @foo(ptr %x.coerce0, i64 %x.coerce1, ptr %y.coerce0, i64 %y.coerce1) #0 {
entry:
  %retval = alloca %struct.object, align 8
  %x = alloca %struct.object, align 8
  %y = alloca %struct.object, align 8
  %z = alloca %struct.object, align 8
  %tmp = alloca %struct.object, align 8
  %0 = getelementptr inbounds nuw { ptr, i64 }, ptr %x, i32 0, i32 0
  store ptr %x.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds nuw { ptr, i64 }, ptr %x, i32 0, i32 1
  store i64 %x.coerce1, ptr %1, align 8
  %2 = getelementptr inbounds nuw { ptr, i64 }, ptr %y, i32 0, i32 0
  store ptr %y.coerce0, ptr %2, align 8
  %3 = getelementptr inbounds nuw { ptr, i64 }, ptr %y, i32 0, i32 1
  store i64 %y.coerce1, ptr %3, align 8
  %addr = getelementptr inbounds nuw %struct.object, ptr %x, i32 0, i32 0
  %4 = load ptr, ptr %addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %z, ptr align 8 %4, i64 16, i1 false)
  %type = getelementptr inbounds nuw %struct.object, ptr %z, i32 0, i32 1
  %5 = load i64, ptr %type, align 8
  %and = and i64 %5, 64
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %addr1 = getelementptr inbounds nuw %struct.object, ptr %z, i32 0, i32 0
  %6 = load ptr, ptr %addr1, align 8
  %add.ptr = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %y, ptr align 8 %add.ptr, i64 16, i1 false)
  %addr2 = getelementptr inbounds nuw %struct.object, ptr %z, i32 0, i32 0
  %7 = load ptr, ptr %addr2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %z, ptr align 8 %7, i64 16, i1 false)
  %type3 = getelementptr inbounds nuw %struct.object, ptr %z, i32 0, i32 1
  %8 = load i64, ptr %type3, align 8
  %and4 = and i64 %8, 64
  %tobool5 = icmp ne i64 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %9 = getelementptr inbounds nuw { ptr, i64 }, ptr %y, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds nuw { ptr, i64 }, ptr %y, i32 0, i32 1
  %12 = load i64, ptr %11, align 8
  %call = call { ptr, i64 } @bar(ptr %10, i64 %12)
  %13 = getelementptr inbounds nuw { ptr, i64 }, ptr %tmp, i32 0, i32 0
  %14 = extractvalue { ptr, i64 } %call, 0
  store ptr %14, ptr %13, align 8
  %15 = getelementptr inbounds nuw { ptr, i64 }, ptr %tmp, i32 0, i32 1
  %16 = extractvalue { ptr, i64 } %call, 1
  store i64 %16, ptr %15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %y, ptr align 8 %tmp, i64 16, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %y, i64 16, i1 false)
  %17 = load { ptr, i64 }, ptr %retval, align 8
  ret { ptr, i64 } %17
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca %struct.object, align 8
  %y = alloca %struct.object, align 8
  %three = alloca %struct.object, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %x, ptr align 8 @__const.main.x, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %y, ptr align 8 @__const.main.y, i64 16, i1 false)
  %0 = getelementptr inbounds nuw { ptr, i64 }, ptr %x, i32 0, i32 0
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds nuw { ptr, i64 }, ptr %x, i32 0, i32 1
  %3 = load i64, ptr %2, align 8
  %4 = getelementptr inbounds nuw { ptr, i64 }, ptr %y, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw { ptr, i64 }, ptr %y, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %call = call { ptr, i64 } @foo(ptr %1, i64 %3, ptr %5, i64 %7)
  %8 = getelementptr inbounds nuw { ptr, i64 }, ptr %three, i32 0, i32 0
  %9 = extractvalue { ptr, i64 } %call, 0
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds nuw { ptr, i64 }, ptr %three, i32 0, i32 1
  %11 = extractvalue { ptr, i64 } %call, 1
  store i64 %11, ptr %10, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
