(module
  (table 2 anyfunc) ;; 声明容量为2的表格
  (elem (i32.const 0) $plus13 $plus42) ;; 从偏移 0 处开始，在表格一次存入函数 plus13 plus42 的引用
  (type $type_0 (func (param i32) (result i32))) ;;  声明 $type_0 的函数签名
  (func $plus13 
    (param $i i32) 
    (result i32) 
    i32.const 13 
    get_local $i 
    i32.add
  )
  (func $plus42 
    (param $i i32) (result i32) 
    i32.const 42 
    get_local $i 
    i32.add
  )
  (func (export "call_by_index") 
    (param $id i32) (param $input i32) (result i32) 
    get_local $input 
    get_local $id 
    call_indirect(type $type_0)
  )
)