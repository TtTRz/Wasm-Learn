(module
  (func $loop (export "loop")
    (param $a i32)
    (param $b i32)
    (result i32)
    (local $i i32)
    (local $tot i32)
    i32.const 0
    set_local $tot
    get_local $a
    set_local $i
    loop $L (result i32)
      ;; i === b
      get_local $i 
      get_local $b
      i32.eq
      if 
        get_local $tot
        get_local $b
        i32.add
        set_local $tot
        get_local $tot
        return
      end
      ;; tot += i
      get_local $tot
      get_local $i
      i32.add
      set_local $tot
      ;; i++
      i32.const 1
      get_local $i
      i32.add
      set_local $i
      br $L
    end
  )
)