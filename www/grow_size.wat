(module
  (memory 1)
  (func $size (export "size") (result i32) memory.size)
  (func $grow (export "grow") (param i32) (result i32) get_local 0 memory.grow)
)