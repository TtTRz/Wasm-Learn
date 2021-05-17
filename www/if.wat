(module
  (func $if_else (export "if_else")
    (param $i i32)
    (result i32)
    get_local $i
    if (result i32)
      i32.const 1
    else
      i32.const 0
    end
  )
)