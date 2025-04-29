; Integers
@global_i1 = global i1 true, align 1                    ; Type: i1
@global_i8 = global i8 42, align 1                      ; Type: i8
@global_i16 = global i16 1234, align 2                  ; Type: i16
@global_i32 = global i32 42, align 4                    ; Type: i32
@global_i64 = global i64 123456789, align 8             ; Type: i64
@global_i128 = global i128 123456789, align 16          ; Type: i128

; Floating points
@global_float = global float 3.5, align 4              ; Type: float
@global_double = global double 2.71828, align 8         ; Type: double
@global_half = global half 1.5, align 2                 ; Type: half
@global_fp128 = global fp128 0xL00000000000000004000000000000000, align 16  ; Type: fp128

; Arrays (fixed and strings)
@char_array = global [10 x i8] c"hello\00\00\00\00\00", align 1             ; Type: [10 x i8]
@int_array = global [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 4  ; Type: [5 x i32]
; @float_matrix = global [2 x [3 x float]] [[3 x float] [float 1.0, float 2.0, float 3.0], 
;                                           [3 x float] [float 4.0, float 5.0, float 6.0]], align 4  ; Type: [2 x [3 x float]]

@string_constant = private unnamed_addr constant [13 x i8] c"Hello World!\00", align 1  ; Type: [13 x i8]
@format_string = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1           ; Type: [4 x i8]

; Pointers
@int_ptr = global i32* null, align 8                     ; Type: i32*
@char_ptr = global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @string_constant, i32 0, i32 0), align 8  ; Type: i8*
@double_ptr = global double* null, align 8               ; Type: double*
@ptr_to_ptr = global i32** null, align 8                 ; Type: i32**
@ptr_to_ptr_to_ptr = global i32*** null, align 8         ; Type: i32***

; Structures
%struct.Point = type { i32, i32 }
@point = global %struct.Point { i32 10, i32 20 }, align 4  ; Type: %struct.Point
%struct.Person = type { i8*, i32 }
@name = private unnamed_addr constant [5 x i8] c"John\00", align 1
@person = global %struct.Person { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @name, i32 0, i32 0), i32 30 }, align 8  ; Type: %struct.Person

@anon_struct = global { i32, float } { i32 42, float 3.5 }, align 4  ; Type: { i32, float }
@packed_struct = global <{ i8, i32 }> <{ i8 1, i32 16777216 }>, align 1  ; Type: <{ i8, i32 }>

; Vectors (for SIMD)
@int_vector = global <4 x i32> <i32 1, i32 2, i32 3, i32 4>, align 16  ; Type: <4 x i32>
@float_vector = global <2 x float> <float 1.0, float 2.0>, align 8      ; Type: <2 x float>
@bool_vector = global <8 x i1> <i1 true, i1 false, i1 true, i1 false, i1 true, i1 false, i1 true, i1 false>, align 1  ; Type: <8 x i1>

; BAD... ?
; From Structs
; @nested_struct = global { i32, { i8, i16 } } { i32 1, { i8, i16 } { i8 2, i16 3 } }, align 4  ; Type: { i32, { i8, i16 } }
; Function pointer types
; declare i32 @square(i32)
; declare void @process_data(i8*)
; declare i32 @complex_function(i32, float, i8*)
; @func_ptr = global i32 (i32)* @square, align 8  ; Type: i32 (i32)*
; @callback = global void (i8*)* @process_data, align 8  ; Type: void (i8*)*
; @complex_func_ptr = global i32 (i32, float, i8*)* @complex_function, align 8  ; Type: i32 (i32, float, i8*)*


declare i32 @printf(i8* nocapture readonly, ...) #0

define i32 @main() #1 {
entry:
  ; tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @string_constant, i32 0, i32 0))
  ret i32 0
}