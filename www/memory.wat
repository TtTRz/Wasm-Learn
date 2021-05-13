(module
  (memory 1)
  (data (i32.const 0) "hello") ;;偏移 0存入 "hello"
  (data (i32.const 4) "u") ;; 可被覆盖 "hellu"
  (func $mem_size (result i32) memory.size)
)