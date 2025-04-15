; 184465444097906597319200422333866650645
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/184465444097906597319200422333866650645.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/184465444097906597319200422333866650645.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IOGBounds = type { i16, i16, i16, i16 }

@expectedwidth = dso_local global i32 50, align 4
@global_vramPtr = dso_local global ptr inttoptr (i64 40960 to ptr), align 8
@global_bounds = dso_local global %struct.IOGBounds { i16 100, i16 150, i16 100, i16 150 }, align 2
@global_saveRect = dso_local global %struct.IOGBounds { i16 75, i16 175, i16 75, i16 175 }, align 2
@.str = private unnamed_addr constant [19 x i8] c"Hello, optimizer!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %vramPtr = alloca ptr, align 8
  %width = alloca i32, align 4
  %saveRect = alloca %struct.IOGBounds, align 2
  %bounds = alloca %struct.IOGBounds, align 2
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %saveRect, ptr align 2 @global_saveRect, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %bounds, ptr align 2 @global_bounds, i64 8, i1 false)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %maxx = getelementptr inbounds nuw %struct.IOGBounds, ptr %saveRect, i32 0, i32 1
  %0 = load i16, ptr %maxx, align 2
  %conv = sext i16 %0 to i32
  %maxx1 = getelementptr inbounds nuw %struct.IOGBounds, ptr %bounds, i32 0, i32 1
  %1 = load i16, ptr %maxx1, align 2
  %conv2 = sext i16 %1 to i32
  %cmp = icmp sgt i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %maxx4 = getelementptr inbounds nuw %struct.IOGBounds, ptr %bounds, i32 0, i32 1
  %2 = load i16, ptr %maxx4, align 2
  %maxx5 = getelementptr inbounds nuw %struct.IOGBounds, ptr %saveRect, i32 0, i32 1
  store i16 %2, ptr %maxx5, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr @global_vramPtr, align 8
  %miny = getelementptr inbounds nuw %struct.IOGBounds, ptr %saveRect, i32 0, i32 2
  %4 = load i16, ptr %miny, align 2
  %conv6 = sext i16 %4 to i32
  %miny7 = getelementptr inbounds nuw %struct.IOGBounds, ptr %bounds, i32 0, i32 2
  %5 = load i16, ptr %miny7, align 2
  %conv8 = sext i16 %5 to i32
  %sub = sub nsw i32 %conv6, %conv8
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i32, ptr %3, i64 %idx.ext
  store ptr %add.ptr, ptr %vramPtr, align 8
  %maxx9 = getelementptr inbounds nuw %struct.IOGBounds, ptr %saveRect, i32 0, i32 1
  %6 = load i16, ptr %maxx9, align 2
  %conv10 = sext i16 %6 to i32
  %minx = getelementptr inbounds nuw %struct.IOGBounds, ptr %saveRect, i32 0, i32 0
  %7 = load i16, ptr %minx, align 2
  %conv11 = sext i16 %7 to i32
  %sub12 = sub nsw i32 %conv10, %conv11
  store i32 %sub12, ptr %width, align 4
  %8 = load i32, ptr %width, align 4
  %9 = load i32, ptr @expectedwidth, align 4
  %cmp13 = icmp ne i32 %8, %9
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  call void @abort() #5
  unreachable

if.end16:                                         ; preds = %if.end
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
