; 102460919291815360333608109479635321292
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/102460919291815360333608109479635321292.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/102460919291815360333608109479635321292.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RenderBox = type { [6 x i32], i16, i16, ptr }
%struct.RenderStyle = type { %struct.NonInheritedFlags }
%struct.NonInheritedFlags = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32 }

@false = dso_local constant i8 0, align 1
@true = dso_local constant i8 1, align 1
@g_this = dso_local global %struct.RenderBox zeroinitializer, align 8
@g__style = dso_local global %struct.RenderStyle zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @RenderBox_setStyle(ptr noundef %thisin, ptr noundef %_style) #0 {
entry:
  %thisin.addr = alloca ptr, align 8
  %_style.addr = alloca ptr, align 8
  %this = alloca ptr, align 8
  %oldpos = alloca i8, align 1
  %tmp = alloca i8, align 1
  %tmppo = alloca i32, align 4
  store ptr %thisin, ptr %thisin.addr, align 8
  store ptr %_style, ptr %_style.addr, align 8
  %0 = load ptr, ptr %thisin.addr, align 8
  store ptr %0, ptr %this, align 8
  %1 = load ptr, ptr %this, align 8
  %m_positioned = getelementptr inbounds nuw %struct.RenderBox, ptr %1, i32 0, i32 2
  %bf.load = load i16, ptr %m_positioned, align 2
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = trunc i16 %bf.clear to i1
  %storedv = zext i1 %bf.cast to i8
  store i8 %storedv, ptr %tmp, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RenderObject_setStyle(ptr noundef %this, ptr noundef %_style) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %_style.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %_style, ptr %_style.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = load ptr, ptr %_style.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @removeFromSpecialObjects(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @RenderBox_isTableCell(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  ret i1 false
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %bf.load = load i16, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 2), align 2
  %bf.clear = and i16 %bf.load, -65
  %bf.set = or i16 %bf.clear, 0
  store i16 %bf.set, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 2), align 2
  %bf.load1 = load i16, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 2), align 2
  %bf.clear2 = and i16 %bf.load1, -17
  %bf.set3 = or i16 %bf.clear2, 0
  store i16 %bf.set3, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 2), align 2
  %bf.load4 = load i16, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 2), align 2
  %bf.clear5 = and i16 %bf.load4, -9
  %bf.set6 = or i16 %bf.clear5, 0
  store i16 %bf.set6, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 2), align 2
  store ptr @RenderBox_isTableCell, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 3), align 8
  %bf.load7 = load i32, ptr @g__style, align 4
  %bf.clear8 = and i32 %bf.load7, -393217
  %bf.set9 = or i32 %bf.clear8, 393216
  store i32 %bf.set9, ptr @g__style, align 4
  %bf.load10 = load i32, ptr @g__style, align 4
  %bf.clear11 = and i32 %bf.load10, -1572865
  %bf.set12 = or i32 %bf.clear11, 0
  store i32 %bf.set12, ptr @g__style, align 4
  call void @RenderBox_setStyle(ptr noundef @g_this, ptr noundef @g__style)
  %bf.load13 = load i16, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 2), align 2
  %bf.lshr = lshr i16 %bf.load13, 4
  %bf.clear14 = and i16 %bf.lshr, 1
  %bf.cast = trunc i16 %bf.clear14 to i1
  %conv = zext i1 %bf.cast to i32
  %cmp = icmp ne i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %bf.load16 = load i16, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 2), align 2
  %bf.lshr17 = lshr i16 %bf.load16, 6
  %bf.clear18 = and i16 %bf.lshr17, 1
  %bf.cast19 = trunc i16 %bf.clear18 to i1
  %conv20 = zext i1 %bf.cast19 to i32
  %cmp21 = icmp ne i32 %conv20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end
  call void @abort() #3
  unreachable

if.end24:                                         ; preds = %if.end
  %bf.load25 = load i16, ptr getelementptr inbounds nuw (%struct.RenderBox, ptr @g_this, i32 0, i32 2), align 2
  %bf.lshr26 = lshr i16 %bf.load25, 3
  %bf.clear27 = and i16 %bf.lshr26, 1
  %bf.cast28 = trunc i16 %bf.clear27 to i1
  %conv29 = zext i1 %bf.cast28 to i32
  %cmp30 = icmp ne i32 %conv29, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end24
  call void @abort() #3
  unreachable

if.end33:                                         ; preds = %if.end24
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

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
