; 196298207274310813986036244642972742260
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/196298207274310813986036244642972742260.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/196298207274310813986036244642972742260.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @foo(i32 noundef %i, i32 noundef %j) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @example9() #4
  %add = add nsw i32 %call, 1
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %j)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %inc = add nuw nsw i32 %call, 2
  br label %if.end6

if.else:                                          ; preds = %if.then
  %cmp3.not = icmp eq i32 %call, -1
  %spec.select = select i1 %cmp3.not, i32 0, i32 %call
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2, %entry
  %k.0 = phi i32 [ %inc, %if.then2 ], [ %add, %entry ], [ %spec.select, %if.else ]
  ret i32 %k.0
}

declare i32 @example9(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (...) @example9() #4
  %add.i = add nsw i32 %call.i, 1
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 0)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %foo.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.then.i
  %inc.i = add nuw nsw i32 %call.i, 2
  br label %foo.exit

if.else.i:                                        ; preds = %if.then.i
  %cmp3.not.i = icmp eq i32 %call.i, -1
  %spec.select.i = select i1 %cmp3.not.i, i32 0, i32 %call.i
  br label %foo.exit

foo.exit:                                         ; preds = %entry, %if.then2.i, %if.else.i
  %k.0.i = phi i32 [ %inc.i, %if.then2.i ], [ %add.i, %entry ], [ %spec.select.i, %if.else.i ]
  %cmp.not = icmp eq i32 %k.0.i, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %foo.exit
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %foo.exit
  %call.i29 = tail call i32 (...) @example9() #4
  %add.i30 = add nsw i32 %call.i29, 1
  %call1.i31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 0)
  %tobool.not.i32 = icmp eq i32 %call1.i31, 0
  br i1 %tobool.not.i32, label %foo.exit41, label %if.then.i33

if.then.i33:                                      ; preds = %if.end
  %cmp.i34 = icmp sgt i32 %call.i29, -1
  br i1 %cmp.i34, label %foo.exit41, label %if.else.i35

if.else.i35:                                      ; preds = %if.then.i33
  %cmp3.not.i36 = icmp eq i32 %call.i29, -1
  %spec.select.i37 = select i1 %cmp3.not.i36, i32 0, i32 %call.i29
  br label %foo.exit41

foo.exit41:                                       ; preds = %if.then.i33, %if.end, %if.else.i35
  %k.0.i38 = phi i32 [ %add.i30, %if.end ], [ %spec.select.i37, %if.else.i35 ], [ 1, %if.then.i33 ]
  %cmp2.not = icmp eq i32 %k.0.i38, 0
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %foo.exit41
  tail call void @abort() #5
  unreachable

if.end4:                                          ; preds = %foo.exit41
  %call.i42 = tail call i32 (...) @example9() #4
  %add.i43 = add nsw i32 %call.i42, 1
  %call1.i44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 0)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %foo.exit54, label %if.then.i46

if.then.i46:                                      ; preds = %if.end4
  %cmp.i47 = icmp sgt i32 %call.i42, -1
  br i1 %cmp.i47, label %if.then2.i52, label %if.else.i48

if.then2.i52:                                     ; preds = %if.then.i46
  %inc.i53 = add nuw nsw i32 %call.i42, 2
  br label %foo.exit54

if.else.i48:                                      ; preds = %if.then.i46
  %cmp3.not.i49 = icmp eq i32 %call.i42, -1
  %spec.select.i50 = select i1 %cmp3.not.i49, i32 0, i32 %call.i42
  br label %foo.exit54

foo.exit54:                                       ; preds = %if.end4, %if.then2.i52, %if.else.i48
  %k.0.i51 = phi i32 [ %inc.i53, %if.then2.i52 ], [ %add.i43, %if.end4 ], [ %spec.select.i50, %if.else.i48 ]
  %cmp6.not = icmp eq i32 %k.0.i51, 1
  br i1 %cmp6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %foo.exit54
  tail call void @abort() #5
  unreachable

if.end8:                                          ; preds = %foo.exit54
  %call.i55 = tail call i32 (...) @example9() #4
  %add.i56 = add nsw i32 %call.i55, 1
  %call1.i57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 0)
  %tobool.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool.not.i58, label %foo.exit67, label %if.then.i59

if.then.i59:                                      ; preds = %if.end8
  %cmp.i60 = icmp sgt i32 %call.i55, -1
  br i1 %cmp.i60, label %if.then2.i65, label %if.else.i61

if.then2.i65:                                     ; preds = %if.then.i59
  %inc.i66 = add nuw nsw i32 %call.i55, 2
  br label %foo.exit67

if.else.i61:                                      ; preds = %if.then.i59
  %cmp3.not.i62 = icmp eq i32 %call.i55, -1
  %spec.select.i63 = select i1 %cmp3.not.i62, i32 0, i32 %call.i55
  br label %foo.exit67

foo.exit67:                                       ; preds = %if.end8, %if.then2.i65, %if.else.i61
  %k.0.i64 = phi i32 [ %inc.i66, %if.then2.i65 ], [ %add.i56, %if.end8 ], [ %spec.select.i63, %if.else.i61 ]
  %cmp10.not = icmp eq i32 %k.0.i64, 2
  br i1 %cmp10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %foo.exit67
  tail call void @abort() #5
  unreachable

if.end12:                                         ; preds = %foo.exit67
  %call.i68 = tail call i32 (...) @example9() #4
  %add.i69 = add nsw i32 %call.i68, 1
  %call1.i70 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 1)
  %tobool.not.i71 = icmp eq i32 %call1.i70, 0
  br i1 %tobool.not.i71, label %foo.exit80, label %if.then.i72

if.then.i72:                                      ; preds = %if.end12
  %cmp.i73 = icmp sgt i32 %call.i68, -1
  br i1 %cmp.i73, label %if.then2.i78, label %if.else.i74

if.then2.i78:                                     ; preds = %if.then.i72
  %inc.i79 = add nuw nsw i32 %call.i68, 2
  br label %foo.exit80

if.else.i74:                                      ; preds = %if.then.i72
  %cmp3.not.i75 = icmp eq i32 %call.i68, -1
  %spec.select.i76 = select i1 %cmp3.not.i75, i32 0, i32 %call.i68
  br label %foo.exit80

foo.exit80:                                       ; preds = %if.end12, %if.then2.i78, %if.else.i74
  %k.0.i77 = phi i32 [ %inc.i79, %if.then2.i78 ], [ %add.i69, %if.end12 ], [ %spec.select.i76, %if.else.i74 ]
  %cmp14.not = icmp eq i32 %k.0.i77, -2
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %foo.exit80
  tail call void @abort() #5
  unreachable

if.end16:                                         ; preds = %foo.exit80
  %call.i81 = tail call i32 (...) @example9() #4
  %add.i82 = add nsw i32 %call.i81, 1
  %call1.i83 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 1)
  %tobool.not.i84 = icmp eq i32 %call1.i83, 0
  br i1 %tobool.not.i84, label %foo.exit93, label %if.then.i85

if.then.i85:                                      ; preds = %if.end16
  %cmp.i86 = icmp sgt i32 %call.i81, -1
  br i1 %cmp.i86, label %foo.exit93, label %if.else.i87

if.else.i87:                                      ; preds = %if.then.i85
  %cmp3.not.i88 = icmp eq i32 %call.i81, -1
  %spec.select.i89 = select i1 %cmp3.not.i88, i32 0, i32 %call.i81
  br label %foo.exit93

foo.exit93:                                       ; preds = %if.then.i85, %if.end16, %if.else.i87
  %k.0.i90 = phi i32 [ %add.i82, %if.end16 ], [ %spec.select.i89, %if.else.i87 ], [ 1, %if.then.i85 ]
  %cmp18.not = icmp eq i32 %k.0.i90, 0
  br i1 %cmp18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %foo.exit93
  tail call void @abort() #5
  unreachable

if.end20:                                         ; preds = %foo.exit93
  %call.i94 = tail call i32 (...) @example9() #4
  %add.i95 = add nsw i32 %call.i94, 1
  %call1.i96 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 1)
  %tobool.not.i97 = icmp eq i32 %call1.i96, 0
  br i1 %tobool.not.i97, label %foo.exit106, label %if.then.i98

if.then.i98:                                      ; preds = %if.end20
  %cmp.i99 = icmp sgt i32 %call.i94, -1
  br i1 %cmp.i99, label %if.then2.i104, label %if.else.i100

if.then2.i104:                                    ; preds = %if.then.i98
  %inc.i105 = add nuw nsw i32 %call.i94, 2
  br label %foo.exit106

if.else.i100:                                     ; preds = %if.then.i98
  %cmp3.not.i101 = icmp eq i32 %call.i94, -1
  %spec.select.i102 = select i1 %cmp3.not.i101, i32 0, i32 %call.i94
  br label %foo.exit106

foo.exit106:                                      ; preds = %if.end20, %if.then2.i104, %if.else.i100
  %k.0.i103 = phi i32 [ %inc.i105, %if.then2.i104 ], [ %add.i95, %if.end20 ], [ %spec.select.i102, %if.else.i100 ]
  %cmp22.not = icmp eq i32 %k.0.i103, 2
  br i1 %cmp22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %foo.exit106
  tail call void @abort() #5
  unreachable

if.end24:                                         ; preds = %foo.exit106
  %call.i107 = tail call i32 (...) @example9() #4
  %add.i108 = add nsw i32 %call.i107, 1
  %call1.i109 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 1)
  %tobool.not.i110 = icmp eq i32 %call1.i109, 0
  br i1 %tobool.not.i110, label %foo.exit119, label %if.then.i111

if.then.i111:                                     ; preds = %if.end24
  %cmp.i112 = icmp sgt i32 %call.i107, -1
  br i1 %cmp.i112, label %if.then2.i117, label %if.else.i113

if.then2.i117:                                    ; preds = %if.then.i111
  %inc.i118 = add nuw nsw i32 %call.i107, 2
  br label %foo.exit119

if.else.i113:                                     ; preds = %if.then.i111
  %cmp3.not.i114 = icmp eq i32 %call.i107, -1
  %spec.select.i115 = select i1 %cmp3.not.i114, i32 0, i32 %call.i107
  br label %foo.exit119

foo.exit119:                                      ; preds = %if.end24, %if.then2.i117, %if.else.i113
  %k.0.i116 = phi i32 [ %inc.i118, %if.then2.i117 ], [ %add.i108, %if.end24 ], [ %spec.select.i115, %if.else.i113 ]
  %cmp26.not = icmp eq i32 %k.0.i116, 3
  br i1 %cmp26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %foo.exit119
  tail call void @abort() #5
  unreachable

if.end28:                                         ; preds = %foo.exit119
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
