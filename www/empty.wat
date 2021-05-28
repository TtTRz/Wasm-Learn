(module
  ;;(func (result i32) i32.const 42)

  ;;(memory 1 2)
  ;;(data (offset i32.const 0) "hello")

  ;; (table 3 4 anyfunc)
  ;; (elem (i32.const 0) $foo $bar)
  ;; (func $foo)
  ;; (func $bar)

  ;; (start 1)
  ;; (import "console" "log_i32" (func $log.i32 (param i32)))
  ;; (func $main)

  (global $cpu.num i32 (i32.const 1))
)

