; 106729031368427168030606700900620420117
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/106729031368427168030606700900620420117_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/106729031368427168030606700900620420117.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ptr = dso_local global ptr null, align 8
@arrindex = dso_local global i32 4, align 4
@getptrcnt = dso_local global i32 0, align 4
@getintcnt = dso_local global i32 0, align 4
@arr = dso_local global [20 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @assign_arg_ptr(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %q = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  store ptr %0, ptr %q, align 8
  call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  %1 = load ptr, ptr %q, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @assign_glob_ptr() #0 {
entry:
  %q = alloca ptr, align 8
  %0 = load ptr, ptr @ptr, align 8
  store ptr %0, ptr %q, align 8
  call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  %1 = load ptr, ptr %q, align 8
  %2 = load ptr, ptr @ptr, align 8
  %cmp = icmp eq ptr %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @assign_arg_idx(ptr noundef %p, i32 noundef %i) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  store i32 %1, ptr %j, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %i.addr, align 4
  %cmp = icmp eq i32 %2, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @assign_glob_idx() #0 {
entry:
  %j = alloca i32, align 4
  %0 = load ptr, ptr @ptr, align 8
  %1 = load i32, ptr @arrindex, align 4
  store i32 %1, ptr %j, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr @arrindex, align 4
  %cmp = icmp eq i32 %2, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @preinc_arg_ptr(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %q = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 1
  store ptr %add.ptr, ptr %q, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  call void @llvm.prefetch.p0(ptr %incdec.ptr, i32 0, i32 0, i32 1)
  %2 = load ptr, ptr %p.addr, align 8
  %3 = load ptr, ptr %q, align 8
  %cmp = icmp eq ptr %2, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @preinc_glob_ptr() #0 {
entry:
  %q = alloca ptr, align 8
  %0 = load ptr, ptr @ptr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 1
  store ptr %add.ptr, ptr %q, align 8
  %1 = load ptr, ptr @ptr, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %1, i32 1
  store ptr %incdec.ptr, ptr @ptr, align 8
  call void @llvm.prefetch.p0(ptr %incdec.ptr, i32 0, i32 0, i32 1)
  %2 = load ptr, ptr @ptr, align 8
  %3 = load ptr, ptr %q, align 8
  %cmp = icmp eq ptr %2, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @postinc_arg_ptr(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %q = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 1
  store ptr %add.ptr, ptr %q, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  call void @llvm.prefetch.p0(ptr %1, i32 0, i32 0, i32 1)
  %2 = load ptr, ptr %p.addr, align 8
  %3 = load ptr, ptr %q, align 8
  %cmp = icmp eq ptr %2, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @postinc_glob_ptr() #0 {
entry:
  %q = alloca ptr, align 8
  %0 = load ptr, ptr @ptr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 1
  store ptr %add.ptr, ptr %q, align 8
  %1 = load ptr, ptr @ptr, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %1, i32 1
  store ptr %incdec.ptr, ptr @ptr, align 8
  call void @llvm.prefetch.p0(ptr %1, i32 0, i32 0, i32 1)
  %2 = load ptr, ptr @ptr, align 8
  %3 = load ptr, ptr %q, align 8
  %cmp = icmp eq ptr %2, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @predec_arg_ptr(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %q = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 -1
  store ptr %add.ptr, ptr %q, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i32 -1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  call void @llvm.prefetch.p0(ptr %incdec.ptr, i32 0, i32 0, i32 1)
  %2 = load ptr, ptr %p.addr, align 8
  %3 = load ptr, ptr %q, align 8
  %cmp = icmp eq ptr %2, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @predec_glob_ptr() #0 {
entry:
  %q = alloca ptr, align 8
  %0 = load ptr, ptr @ptr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 -1
  store ptr %add.ptr, ptr %q, align 8
  %1 = load ptr, ptr @ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i32 -1
  store ptr %incdec.ptr, ptr @ptr, align 8
  call void @llvm.prefetch.p0(ptr %incdec.ptr, i32 0, i32 0, i32 1)
  %2 = load ptr, ptr @ptr, align 8
  %3 = load ptr, ptr %q, align 8
  %cmp = icmp eq ptr %2, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @postdec_arg_ptr(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %q = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 -1
  store ptr %add.ptr, ptr %q, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i32 -1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  call void @llvm.prefetch.p0(ptr %1, i32 0, i32 0, i32 1)
  %2 = load ptr, ptr %p.addr, align 8
  %3 = load ptr, ptr %q, align 8
  %cmp = icmp eq ptr %2, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @postdec_glob_ptr() #0 {
entry:
  %q = alloca ptr, align 8
  %0 = load ptr, ptr @ptr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 -1
  store ptr %add.ptr, ptr %q, align 8
  %1 = load ptr, ptr @ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i32 -1
  store ptr %incdec.ptr, ptr @ptr, align 8
  call void @llvm.prefetch.p0(ptr %1, i32 0, i32 0, i32 1)
  %2 = load ptr, ptr @ptr, align 8
  %3 = load ptr, ptr %q, align 8
  %cmp = icmp eq ptr %2, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @preinc_arg_idx(ptr noundef %p, i32 noundef %i) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, ptr %j, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %2 = load i32, ptr %i.addr, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i.addr, align 4
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  %3 = load i32, ptr %i.addr, align 4
  %4 = load i32, ptr %j, align 4
  %cmp = icmp eq i32 %3, %4
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @preinc_glob_idx() #0 {
entry:
  %j = alloca i32, align 4
  %0 = load i32, ptr @arrindex, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, ptr %j, align 4
  %1 = load ptr, ptr @ptr, align 8
  %2 = load i32, ptr @arrindex, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @arrindex, align 4
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  %3 = load i32, ptr @arrindex, align 4
  %4 = load i32, ptr %j, align 4
  %cmp = icmp eq i32 %3, %4
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @postinc_arg_idx(ptr noundef %p, i32 noundef %i) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, ptr %j, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %2 = load i32, ptr %i.addr, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  %3 = load i32, ptr %i.addr, align 4
  %4 = load i32, ptr %j, align 4
  %cmp = icmp eq i32 %3, %4
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @postinc_glob_idx() #0 {
entry:
  %j = alloca i32, align 4
  %0 = load i32, ptr @arrindex, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, ptr %j, align 4
  %1 = load ptr, ptr @ptr, align 8
  %2 = load i32, ptr @arrindex, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @arrindex, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  %3 = load i32, ptr @arrindex, align 4
  %4 = load i32, ptr %j, align 4
  %cmp = icmp eq i32 %3, %4
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @predec_arg_idx(ptr noundef %p, i32 noundef %i) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %j, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %2 = load i32, ptr %i.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %i.addr, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  %3 = load i32, ptr %i.addr, align 4
  %4 = load i32, ptr %j, align 4
  %cmp = icmp eq i32 %3, %4
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @predec_glob_idx() #0 {
entry:
  %j = alloca i32, align 4
  %0 = load i32, ptr @arrindex, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %j, align 4
  %1 = load ptr, ptr @ptr, align 8
  %2 = load i32, ptr @arrindex, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr @arrindex, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  %3 = load i32, ptr @arrindex, align 4
  %4 = load i32, ptr %j, align 4
  %cmp = icmp eq i32 %3, %4
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @postdec_arg_idx(ptr noundef %p, i32 noundef %i) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %j, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %2 = load i32, ptr %i.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %i.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  %3 = load i32, ptr %i.addr, align 4
  %4 = load i32, ptr %j, align 4
  %cmp = icmp eq i32 %3, %4
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @postdec_glob_idx() #0 {
entry:
  %j = alloca i32, align 4
  %0 = load i32, ptr @arrindex, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %j, align 4
  %1 = load ptr, ptr @ptr, align 8
  %2 = load i32, ptr @arrindex, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr @arrindex, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  %3 = load i32, ptr @arrindex, align 4
  %4 = load i32, ptr %j, align 4
  %cmp = icmp eq i32 %3, %4
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @getptr(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load i32, ptr @getptrcnt, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @getptrcnt, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %1, i64 1
  ret ptr %add.ptr
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @funccall_arg_ptr(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %call = call ptr @getptr(ptr noundef %0)
  call void @llvm.prefetch.p0(ptr %call, i32 0, i32 0, i32 1)
  %1 = load i32, ptr @getptrcnt, align 4
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getint(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr @getintcnt, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @getintcnt, align 4
  %1 = load i32, ptr %i.addr, align 4
  %add = add nsw i32 %1, 1
  ret i32 %add
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @funccall_arg_idx(ptr noundef %p, i32 noundef %i) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %call = call i32 @getint(i32 noundef %1)
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  call void @llvm.prefetch.p0(ptr %arrayidx, i32 0, i32 0, i32 1)
  %2 = load i32, ptr @getintcnt, align 4
  %cmp = icmp eq i32 %2, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load ptr, ptr @ptr, align 8
  %call = call i32 @assign_arg_ptr(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i32 @assign_glob_ptr()
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr @ptr, align 8
  %call5 = call i32 @assign_arg_idx(ptr noundef %1, i32 noundef 4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @abort() #4
  unreachable

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @assign_glob_idx()
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @abort() #4
  unreachable

if.end12:                                         ; preds = %if.end8
  %2 = load ptr, ptr @ptr, align 8
  %call13 = call i32 @preinc_arg_ptr(ptr noundef %2)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @abort() #4
  unreachable

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @preinc_glob_ptr()
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @abort() #4
  unreachable

if.end20:                                         ; preds = %if.end16
  %3 = load ptr, ptr @ptr, align 8
  %call21 = call i32 @postinc_arg_ptr(ptr noundef %3)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @abort() #4
  unreachable

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @postinc_glob_ptr()
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @abort() #4
  unreachable

if.end28:                                         ; preds = %if.end24
  %4 = load ptr, ptr @ptr, align 8
  %call29 = call i32 @predec_arg_ptr(ptr noundef %4)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @abort() #4
  unreachable

if.end32:                                         ; preds = %if.end28
  %call33 = call i32 @predec_glob_ptr()
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @abort() #4
  unreachable

if.end36:                                         ; preds = %if.end32
  %5 = load ptr, ptr @ptr, align 8
  %call37 = call i32 @postdec_arg_ptr(ptr noundef %5)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end36
  call void @abort() #4
  unreachable

if.end40:                                         ; preds = %if.end36
  %call41 = call i32 @postdec_glob_ptr()
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end40
  call void @abort() #4
  unreachable

if.end44:                                         ; preds = %if.end40
  %6 = load ptr, ptr @ptr, align 8
  %call45 = call i32 @preinc_arg_idx(ptr noundef %6, i32 noundef 3)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.end44
  call void @abort() #4
  unreachable

if.end48:                                         ; preds = %if.end44
  %call49 = call i32 @preinc_glob_idx()
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end48
  call void @abort() #4
  unreachable

if.end52:                                         ; preds = %if.end48
  %7 = load ptr, ptr @ptr, align 8
  %call53 = call i32 @postinc_arg_idx(ptr noundef %7, i32 noundef 3)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.end52
  call void @abort() #4
  unreachable

if.end56:                                         ; preds = %if.end52
  %call57 = call i32 @postinc_glob_idx()
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end60, label %if.then59

if.then59:                                        ; preds = %if.end56
  call void @abort() #4
  unreachable

if.end60:                                         ; preds = %if.end56
  %8 = load ptr, ptr @ptr, align 8
  %call61 = call i32 @predec_arg_idx(ptr noundef %8, i32 noundef 3)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end60
  call void @abort() #4
  unreachable

if.end64:                                         ; preds = %if.end60
  %call65 = call i32 @predec_glob_idx()
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end68, label %if.then67

if.then67:                                        ; preds = %if.end64
  call void @abort() #4
  unreachable

if.end68:                                         ; preds = %if.end64
  %9 = load ptr, ptr @ptr, align 8
  %call69 = call i32 @postdec_arg_idx(ptr noundef %9, i32 noundef 3)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end72, label %if.then71

if.then71:                                        ; preds = %if.end68
  call void @abort() #4
  unreachable

if.end72:                                         ; preds = %if.end68
  %call73 = call i32 @postdec_glob_idx()
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.end76, label %if.then75

if.then75:                                        ; preds = %if.end72
  call void @abort() #4
  unreachable

if.end76:                                         ; preds = %if.end72
  %10 = load ptr, ptr @ptr, align 8
  %call77 = call i32 @funccall_arg_ptr(ptr noundef %10)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.end80, label %if.then79

if.then79:                                        ; preds = %if.end76
  call void @abort() #4
  unreachable

if.end80:                                         ; preds = %if.end76
  %11 = load ptr, ptr @ptr, align 8
  %call81 = call i32 @funccall_arg_idx(ptr noundef %11, i32 noundef 3)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.end84, label %if.then83

if.then83:                                        ; preds = %if.end80
  call void @abort() #4
  unreachable

if.end84:                                         ; preds = %if.end80
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
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
