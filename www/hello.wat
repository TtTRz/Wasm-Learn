;; hello.wat
(module
  ;;import js:print as js_print(): 
  (import "js" "print"
  (func $js_print (param i32 i32)))
  (import "js" "mem" (memory 1)) ;; import js:mem as memory
  (data (i32.const 0) "hello, wasm!")
  (func (export "hello") i32.const 0 i32.const 13 call $js_print )
)