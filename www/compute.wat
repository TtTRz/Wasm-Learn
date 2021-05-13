(module
  (func (export "compute") (result i32) i32.const 13 f32.const 42.0 call 1)
  (func $add 
    (param $a i32) (param $b f32) 
    (result i32) 
    get_local $a get_local $b
    i32.trunc_s/f32
    i32.add
  )
)
