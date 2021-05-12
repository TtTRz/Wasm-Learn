(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func))
  (import "env" "print_char" (func $print_char (type 0)))
  (func $main (type 1)
    (local i32)
    i32.const -14
    local.set 0
    loop  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        return
      end
      local.get 0
      i32.const 1048590
      i32.add
      i32.load8_u
      call $print_char
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      br 0 (;@1;)
    end)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1048590))
  (global (;2;) i32 (i32.const 1048590))
  (export "memory" (memory 0))
  (export "main" (func $main))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 1048576) "Hello, World!\0a"))
