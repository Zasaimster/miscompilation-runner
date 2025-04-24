; 166875077686664053526138377265992139617
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/166875077686664053526138377265992139617.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/166875077686664053526138377265992139617.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, i32 }

@__const.main.a = private unnamed_addr constant %struct.S { i32 3, i32 4, i32 5 }, align 4
@__const.main.b = private unnamed_addr constant %struct.S { i32 6, i32 7, i32 8 }, align 4
@__const.main.c = private unnamed_addr constant %struct.S { i32 9, i32 10, i32 11 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo2(i64 %x.coerce0, i32 %x.coerce1, i64 %y.coerce0, i32 %y.coerce1) #0 {
entry:
  %x = alloca %struct.S, align 4
  %coerce = alloca { i64, i32 }, align 4
  %y = alloca %struct.S, align 4
  %coerce1 = alloca { i64, i32 }, align 4
  %0 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 0
  store i64 %x.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 1
  store i32 %x.coerce1, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %x, ptr align 4 %coerce, i64 12, i1 false)
  %2 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce1, i32 0, i32 0
  store i64 %y.coerce0, ptr %2, align 4
  %3 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce1, i32 0, i32 1
  store i32 %y.coerce1, ptr %3, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %y, ptr align 4 %coerce1, i64 12, i1 false)
  %a = getelementptr inbounds nuw %struct.S, ptr %x, i32 0, i32 0
  %4 = load i32, ptr %a, align 4
  %cmp = icmp ne i32 %4, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %b = getelementptr inbounds nuw %struct.S, ptr %x, i32 0, i32 1
  %5 = load i32, ptr %b, align 4
  %cmp2 = icmp ne i32 %5, 4
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %c = getelementptr inbounds nuw %struct.S, ptr %x, i32 0, i32 2
  %6 = load i32, ptr %c, align 4
  %cmp4 = icmp ne i32 %6, 5
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false3
  %call = call i32 (...) @func5()
  %a5 = getelementptr inbounds nuw %struct.S, ptr %y, i32 0, i32 0
  %7 = load i32, ptr %a5, align 4
  %cmp6 = icmp ne i32 %7, 6
  br i1 %cmp6, label %if.then13, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end
  %b8 = getelementptr inbounds nuw %struct.S, ptr %y, i32 0, i32 1
  %8 = load i32, ptr %b8, align 4
  %cmp9 = icmp ne i32 %8, 7
  br i1 %cmp9, label %if.then13, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %c11 = getelementptr inbounds nuw %struct.S, ptr %y, i32 0, i32 2
  %9 = load i32, ptr %c11, align 4
  %cmp12 = icmp ne i32 %9, 8
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false10, %lor.lhs.false7, %if.end
  call void @abort() #4
  unreachable

if.end14:                                         ; preds = %lor.lhs.false10
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

declare i32 @func5(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo3(i64 %x.coerce0, i32 %x.coerce1, i64 %y.coerce0, i32 %y.coerce1, i64 %z.coerce0, i32 %z.coerce1) #0 {
entry:
  %x = alloca %struct.S, align 4
  %coerce = alloca { i64, i32 }, align 4
  %y = alloca %struct.S, align 4
  %coerce1 = alloca { i64, i32 }, align 4
  %z = alloca %struct.S, align 4
  %coerce2 = alloca { i64, i32 }, align 4
  %x.coerce = alloca { i64, i32 }, align 4
  %y.coerce = alloca { i64, i32 }, align 4
  %0 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 0
  store i64 %x.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 1
  store i32 %x.coerce1, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %x, ptr align 4 %coerce, i64 12, i1 false)
  %2 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce1, i32 0, i32 0
  store i64 %y.coerce0, ptr %2, align 4
  %3 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce1, i32 0, i32 1
  store i32 %y.coerce1, ptr %3, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %y, ptr align 4 %coerce1, i64 12, i1 false)
  %4 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce2, i32 0, i32 0
  store i64 %z.coerce0, ptr %4, align 4
  %5 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce2, i32 0, i32 1
  store i32 %z.coerce1, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %z, ptr align 4 %coerce2, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %x.coerce, ptr align 4 %x, i64 12, i1 false)
  %6 = getelementptr inbounds nuw { i64, i32 }, ptr %x.coerce, i32 0, i32 0
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds nuw { i64, i32 }, ptr %x.coerce, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %y.coerce, ptr align 4 %y, i64 12, i1 false)
  %10 = getelementptr inbounds nuw { i64, i32 }, ptr %y.coerce, i32 0, i32 0
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds nuw { i64, i32 }, ptr %y.coerce, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %call = call i32 @foo2(i64 %7, i32 %9, i64 %11, i32 %13)
  %a = getelementptr inbounds nuw %struct.S, ptr %z, i32 0, i32 0
  %14 = load i32, ptr %a, align 4
  %cmp = icmp ne i32 %14, 9
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %b = getelementptr inbounds nuw %struct.S, ptr %z, i32 0, i32 1
  %15 = load i32, ptr %b, align 4
  %cmp3 = icmp ne i32 %15, 10
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %c = getelementptr inbounds nuw %struct.S, ptr %z, i32 0, i32 2
  %16 = load i32, ptr %c, align 4
  %cmp5 = icmp ne i32 %16, 11
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar2(i64 %x.coerce0, i32 %x.coerce1, i64 %y.coerce0, i32 %y.coerce1) #0 {
entry:
  %x = alloca %struct.S, align 4
  %coerce = alloca { i64, i32 }, align 4
  %y = alloca %struct.S, align 4
  %coerce1 = alloca { i64, i32 }, align 4
  %y.coerce = alloca { i64, i32 }, align 4
  %x.coerce = alloca { i64, i32 }, align 4
  %0 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 0
  store i64 %x.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 1
  store i32 %x.coerce1, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %x, ptr align 4 %coerce, i64 12, i1 false)
  %2 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce1, i32 0, i32 0
  store i64 %y.coerce0, ptr %2, align 4
  %3 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce1, i32 0, i32 1
  store i32 %y.coerce1, ptr %3, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %y, ptr align 4 %coerce1, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %y.coerce, ptr align 4 %y, i64 12, i1 false)
  %4 = getelementptr inbounds nuw { i64, i32 }, ptr %y.coerce, i32 0, i32 0
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds nuw { i64, i32 }, ptr %y.coerce, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %x.coerce, ptr align 4 %x, i64 12, i1 false)
  %8 = getelementptr inbounds nuw { i64, i32 }, ptr %x.coerce, i32 0, i32 0
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds nuw { i64, i32 }, ptr %x.coerce, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %call = call i32 @foo2(i64 %5, i32 %7, i64 %9, i32 %11)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar3(i64 %x.coerce0, i32 %x.coerce1, i64 %y.coerce0, i32 %y.coerce1, i64 %z.coerce0, i32 %z.coerce1) #0 {
entry:
  %x = alloca %struct.S, align 4
  %coerce = alloca { i64, i32 }, align 4
  %y = alloca %struct.S, align 4
  %coerce1 = alloca { i64, i32 }, align 4
  %z = alloca %struct.S, align 4
  %coerce2 = alloca { i64, i32 }, align 4
  %y.coerce = alloca { i64, i32 }, align 4
  %x.coerce = alloca { i64, i32 }, align 4
  %z.coerce = alloca { i64, i32 }, align 4
  %0 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 0
  store i64 %x.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 1
  store i32 %x.coerce1, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %x, ptr align 4 %coerce, i64 12, i1 false)
  %2 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce1, i32 0, i32 0
  store i64 %y.coerce0, ptr %2, align 4
  %3 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce1, i32 0, i32 1
  store i32 %y.coerce1, ptr %3, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %y, ptr align 4 %coerce1, i64 12, i1 false)
  %4 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce2, i32 0, i32 0
  store i64 %z.coerce0, ptr %4, align 4
  %5 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce2, i32 0, i32 1
  store i32 %z.coerce1, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %z, ptr align 4 %coerce2, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %y.coerce, ptr align 4 %y, i64 12, i1 false)
  %6 = getelementptr inbounds nuw { i64, i32 }, ptr %y.coerce, i32 0, i32 0
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds nuw { i64, i32 }, ptr %y.coerce, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %x.coerce, ptr align 4 %x, i64 12, i1 false)
  %10 = getelementptr inbounds nuw { i64, i32 }, ptr %x.coerce, i32 0, i32 0
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds nuw { i64, i32 }, ptr %x.coerce, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %z.coerce, ptr align 4 %z, i64 12, i1 false)
  %14 = getelementptr inbounds nuw { i64, i32 }, ptr %z.coerce, i32 0, i32 0
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds nuw { i64, i32 }, ptr %z.coerce, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %call = call i32 @foo3(i64 %7, i32 %9, i64 %11, i32 %13, i64 %15, i32 %17)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @baz3(i64 %x.coerce0, i32 %x.coerce1, i64 %y.coerce0, i32 %y.coerce1, i64 %z.coerce0, i32 %z.coerce1) #0 {
entry:
  %x = alloca %struct.S, align 4
  %coerce = alloca { i64, i32 }, align 4
  %y = alloca %struct.S, align 4
  %coerce1 = alloca { i64, i32 }, align 4
  %z = alloca %struct.S, align 4
  %coerce2 = alloca { i64, i32 }, align 4
  %y.coerce = alloca { i64, i32 }, align 4
  %z.coerce = alloca { i64, i32 }, align 4
  %x.coerce = alloca { i64, i32 }, align 4
  %0 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 0
  store i64 %x.coerce0, ptr %0, align 4
  %1 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce, i32 0, i32 1
  store i32 %x.coerce1, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %x, ptr align 4 %coerce, i64 12, i1 false)
  %2 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce1, i32 0, i32 0
  store i64 %y.coerce0, ptr %2, align 4
  %3 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce1, i32 0, i32 1
  store i32 %y.coerce1, ptr %3, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %y, ptr align 4 %coerce1, i64 12, i1 false)
  %4 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce2, i32 0, i32 0
  store i64 %z.coerce0, ptr %4, align 4
  %5 = getelementptr inbounds nuw { i64, i32 }, ptr %coerce2, i32 0, i32 1
  store i32 %z.coerce1, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %z, ptr align 4 %coerce2, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %y.coerce, ptr align 4 %y, i64 12, i1 false)
  %6 = getelementptr inbounds nuw { i64, i32 }, ptr %y.coerce, i32 0, i32 0
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds nuw { i64, i32 }, ptr %y.coerce, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %z.coerce, ptr align 4 %z, i64 12, i1 false)
  %10 = getelementptr inbounds nuw { i64, i32 }, ptr %z.coerce, i32 0, i32 0
  %11 = load i64, ptr %10, align 4
  %12 = getelementptr inbounds nuw { i64, i32 }, ptr %z.coerce, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %x.coerce, ptr align 4 %x, i64 12, i1 false)
  %14 = getelementptr inbounds nuw { i64, i32 }, ptr %x.coerce, i32 0, i32 0
  %15 = load i64, ptr %14, align 4
  %16 = getelementptr inbounds nuw { i64, i32 }, ptr %x.coerce, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %call = call i32 @foo3(i64 %7, i32 %9, i64 %11, i32 %13, i64 %15, i32 %17)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %struct.S, align 4
  %b = alloca %struct.S, align 4
  %c = alloca %struct.S, align 4
  %b.coerce = alloca { i64, i32 }, align 4
  %a.coerce = alloca { i64, i32 }, align 4
  %b.coerce1 = alloca { i64, i32 }, align 4
  %a.coerce2 = alloca { i64, i32 }, align 4
  %c.coerce = alloca { i64, i32 }, align 4
  %c.coerce4 = alloca { i64, i32 }, align 4
  %a.coerce5 = alloca { i64, i32 }, align 4
  %b.coerce6 = alloca { i64, i32 }, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 4 @__const.main.a, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b, ptr align 4 @__const.main.b, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %c, ptr align 4 @__const.main.c, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b.coerce, ptr align 4 %b, i64 12, i1 false)
  %0 = getelementptr inbounds nuw { i64, i32 }, ptr %b.coerce, i32 0, i32 0
  %1 = load i64, ptr %0, align 4
  %2 = getelementptr inbounds nuw { i64, i32 }, ptr %b.coerce, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a.coerce, ptr align 4 %a, i64 12, i1 false)
  %4 = getelementptr inbounds nuw { i64, i32 }, ptr %a.coerce, i32 0, i32 0
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds nuw { i64, i32 }, ptr %a.coerce, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %call = call i32 @bar2(i64 %1, i32 %3, i64 %5, i32 %7)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b.coerce1, ptr align 4 %b, i64 12, i1 false)
  %8 = getelementptr inbounds nuw { i64, i32 }, ptr %b.coerce1, i32 0, i32 0
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds nuw { i64, i32 }, ptr %b.coerce1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a.coerce2, ptr align 4 %a, i64 12, i1 false)
  %12 = getelementptr inbounds nuw { i64, i32 }, ptr %a.coerce2, i32 0, i32 0
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds nuw { i64, i32 }, ptr %a.coerce2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %c.coerce, ptr align 4 %c, i64 12, i1 false)
  %16 = getelementptr inbounds nuw { i64, i32 }, ptr %c.coerce, i32 0, i32 0
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds nuw { i64, i32 }, ptr %c.coerce, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %call3 = call i32 @bar3(i64 %9, i32 %11, i64 %13, i32 %15, i64 %17, i32 %19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %c.coerce4, ptr align 4 %c, i64 12, i1 false)
  %20 = getelementptr inbounds nuw { i64, i32 }, ptr %c.coerce4, i32 0, i32 0
  %21 = load i64, ptr %20, align 4
  %22 = getelementptr inbounds nuw { i64, i32 }, ptr %c.coerce4, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a.coerce5, ptr align 4 %a, i64 12, i1 false)
  %24 = getelementptr inbounds nuw { i64, i32 }, ptr %a.coerce5, i32 0, i32 0
  %25 = load i64, ptr %24, align 4
  %26 = getelementptr inbounds nuw { i64, i32 }, ptr %a.coerce5, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b.coerce6, ptr align 4 %b, i64 12, i1 false)
  %28 = getelementptr inbounds nuw { i64, i32 }, ptr %b.coerce6, i32 0, i32 0
  %29 = load i64, ptr %28, align 4
  %30 = getelementptr inbounds nuw { i64, i32 }, ptr %b.coerce6, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %call7 = call i32 @baz3(i64 %21, i32 %23, i64 %25, i32 %27, i64 %29, i32 %31)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
