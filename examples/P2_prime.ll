@myGlobalValue = dso_local global i32 0, align 4

define dso_local i32 @main() #0 {
entry:
  ; Store the value 20 into the global variable
  store i32 20, ptr @myGlobalValue, align 4
  
  ; Always return 0
  ret i32 0
}