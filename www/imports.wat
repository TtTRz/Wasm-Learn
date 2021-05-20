;;imports.wat
(module
  (import "js" "memory" (memory 1)) ;; import Memory
  (import "js" "table" (table 1 anyfunc)) ;;import Table
  (import "js" "print_i32" (func $js_print_i32 (param i32))) ;; import Function
  (import "js" "print_f32" (func $js_print_f32 (param f32) (result f32))) 
  (import "js" "global_pi" (global $pi f32)) ;; import Global
  (func (export "print_pi") (result f32)
    get_global $pi
    call $js_print_f32
  )
)