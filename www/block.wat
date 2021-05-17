(module
  (func $block (export "block")
    (param $i i32)
    (result i32)
    block (result i32)
      get_local $i
      if (result i32)
        get_local $i
      else 
        i32.const 42
      end
    end
  )
)

