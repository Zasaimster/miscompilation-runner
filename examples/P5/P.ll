; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: nounwind
declare i32 @printf(ptr nocapture readonly, ...) #1

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare void @srand(i32) #1  ; Added declaration for srand
declare i64 @time(i64*) #1   ; Added declaration for time

@.str = private unnamed_addr constant [9 x i8] c"S = %lf\0A\00", align 1

define double @_Z3fooi(i32 %x) #0 !dbg !3 {
entry:
  %conv = sitofp i32 %x to double, !dbg !2
  %call = tail call double @sin(double %conv) #3, !dbg !8
  %mul = fmul double %conv, %call, !dbg !8
  ret double %mul, !dbg !8
}

define double @_Z3bari(i32 %x) #0 !dbg !10 {
entry:
  %conv = sitofp i32 %x to double, !dbg !9
  %call = tail call double @cos(double %conv) #3, !dbg !11
  %sub = fsub double %conv, %call, !dbg !11
  ret double %sub, !dbg !11
}

define i32 @main() #2 !dbg !13 {
entry:
  %call_time = tail call i64 @time(i64* null)  ; Call time(0)
  %seed = trunc i64 %call_time to i32         ; Truncate to i32 for srand
  tail call void @srand(i32 %seed)             ; Call srand with the seed

  br label %for.cond1.preheader, !dbg !12

for.cond1.preheader:                              ; preds = %for.inc12, %entry
  %i.025 = phi i32 [ 0, %entry ], [ %inc13, %for.inc12 ]
  %S.024 = phi double [ 0.000000e+00, %entry ], [ %S.2.lcssa, %for.inc12 ]
  br label %for.body3, !dbg !14

for.body3:                                        ; preds = %for.inc, %for.cond1.preheader
  %j.023 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.inc ]
  %S.122 = phi double [ %S.024, %for.cond1.preheader ], [ %S.2, %for.inc ]
  %call = tail call i32 @rand() #3, !dbg !15
  %rem = srem i32 %call, 100, !dbg !15
  %cmp4 = icmp slt i32 %rem, 30, !dbg !15
  %_Z3fooi._Z3bari = select i1 %cmp4, ptr @_Z3fooi, ptr @_Z3bari, !dbg !15
  %call5 = tail call i32 @rand() #3, !dbg !16
  %rem6 = srem i32 %call5, 100, !dbg !16
  %cmp7 = icmp slt i32 %rem6, 10, !dbg !16
  br i1 %cmp7, label %if.then, label %if.else, !dbg !16

if.then:                                          ; preds = %for.body3
  %mul = mul nsw i32 %j.023, 300, !dbg !18
  %add = add nsw i32 %mul, %i.025, !dbg !18
  %call8 = tail call double %_Z3fooi._Z3bari(i32 %add), !dbg !18
  br label %for.inc, !dbg !18

if.else:                                          ; preds = %for.body3
  %div = sdiv i32 %j.023, 840, !dbg !19
  %sub = sub nsw i32 %i.025, %div, !dbg !19
  %call10 = tail call double %_Z3fooi._Z3bari(i32 %sub), !dbg !19
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %call8.pn = phi double [ %call8, %if.then ], [ %call10, %if.else ]
  %S.2 = fadd double %S.122, %call8.pn, !dbg !18
  %inc = add nsw i32 %j.023, 1, !dbg !20
  %exitcond = icmp eq i32 %j.023, 5999, !dbg !14
  br i1 %exitcond, label %for.inc12, label %for.body3, !dbg !14

for.inc12:                                        ; preds = %for.inc
  %S.2.lcssa = phi double [ %S.2, %for.inc ]
  %inc13 = add nsw i32 %i.025, 1, !dbg !22
  %exitcond26 = icmp eq i32 %i.025, 9999, !dbg !12
  br i1 %exitcond26, label %for.end14, label %for.cond1.preheader, !dbg !12

for.end14:                                        ; preds = %for.inc12
  %S.2.lcssa.lcssa = phi double [ %S.2.lcssa, %for.inc12 ]
  %call15 = tail call i32 (ptr, ...) @printf(ptr @.str, double %S.2.lcssa.lcssa), !dbg !24
  ret i32 0, !dbg !25
}

attributes #0 = {"use-sample-profile"}
attributes #2 = {"use-sample-profile"}

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}
!llvm.dbg.cu = !{!26}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{!"clang version 3.6.0 "}
!2 = !DILocation(line: 9, column: 3, scope: !3)
!3 = distinct !DISubprogram(name: "foo", line: 8, isLocal: false, isDefinition: true, flags: DIFlagPrototyped, isOptimized: true, unit: !26, scopeLine: 8, file: !4, scope: !5, type: !6, retainedNodes: !7)
!4 = !DIFile(filename: "fnptr.cc", directory: ".")
!5 = !DIFile(filename: "fnptr.cc", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{}
!8 = !DILocation(line: 9, column: 14, scope: !3)
!9 = !DILocation(line: 13, column: 3, scope: !10)
!10 = distinct !DISubprogram(name: "bar", line: 12, isLocal: false, isDefinition: true, flags: DIFlagPrototyped, isOptimized: true, unit: !26, scopeLine: 12, file: !4, scope: !5, type: !6, retainedNodes: !7)
!11 = !DILocation(line: 13, column: 14, scope: !10)
!12 = !DILocation(line: 19, column: 3, scope: !13)
!13 = distinct !DISubprogram(name: "main", line: 16, isLocal: false, isDefinition: true, flags: DIFlagPrototyped, isOptimized: true, unit: !26, scopeLine: 16, file: !4, scope: !5, type: !6, retainedNodes: !7)
!14 = !DILocation(line: 20, column: 5, scope: !13)
!15 = !DILocation(line: 21, column: 15, scope: !13)
!16 = !DILocation(line: 22, column: 11, scope: !13)
!18 = !DILocation(line: 23, column: 14, scope: !13)
!19 = !DILocation(line: 25, column: 14, scope: !13)
!20 = !DILocation(line: 20, column: 28, scope: !13)
!22 = !DILocation(line: 19, column: 26, scope: !13)
!24 = !DILocation(line: 27, column: 3, scope: !13)
!25 = !DILocation(line: 28, column: 3, scope: !13)
!26 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, producer: "clang version 3.5 ", isOptimized: false, emissionKind: FullDebug, file: !4)
