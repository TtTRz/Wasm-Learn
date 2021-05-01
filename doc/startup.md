# Example

## Wasm32-unknown-unknown

```shell
rustup target add wasm32-unknown-unknown 
```

## Cargo build

```shell
cargo build --release --target wasm32-unknown-unknown
```

## Exp

### lib.rs

```rust
// lib.rs
extern "C" {
    fn print_char(c: u8);
}

#[no_mangle]
pub extern "C" fn main() {
    unsafe {
        let s = "Hello, World!\n";
        for c in s.as_bytes() {
            print_char(*c);
        }
    }
}
```

### index.html

```html
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <script>
    let str = "";
    let importObj = {
      env: {
        print_char: (c) => {
          str += String.fromCharCode(c);
          if (c == 10) {
            alert(str);
          }
        }
      }
    };
    fetch('./wasm_learn.wasm').then(res =>
      res.arrayBuffer()
    ).then(buffer =>
      WebAssembly.instantiate(buffer, importObj)
    ).then(({ module, instance }) =>
      instance.exports.main()
    )
  </script>
</body>
</html>
```