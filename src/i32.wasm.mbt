///|
pub extern "wasm" fn i32_extend16_s(value : Int) -> Int =
  #|(func (param i32) (result i32)
  #| local.get 0
  #| i32.extend16_s)

///|
pub extern "wasm" fn i32_extend8_s(value : Int) -> Int =
  #|(func (param i32) (result i32)
  #| local.get 0
  #| i32.extend8_s)

///|
extern "wasm" fn i32_store8_ffi(offset : Int, value : Int) =
  #|(func (param i32) (param i32)
  #| local.get 0
  #| local.get 1
  #| i32.store8)

///|
pub fn i32_store8(memory? : Memory = 0, offset : Int, value : Int) -> Unit {
  ignore(memory)
  i32_store8_ffi(offset, value)
}

///|
extern "wasm" fn _i32_load8_u(offset : Int) -> Int =
  #|(func (param i32) (result i32)
  #| local.get 0
  #| i32.load8_u)

///|
pub fn i32_load8_u(memory? : Memory = 0, offset : Int) -> Int {
  ignore(memory)
  _i32_load8_u(offset)
}

///|
extern "wasm" fn i32_load8_s_ffi(offset : Int) -> Int =
  #|(func (param i32) (result i32)
  #| local.get 0
  #| i32.load8_s)

///|
pub fn i32_load8_s(memory? : Memory = 0, offset : Int) -> Int {
  ignore(memory)
  i32_load8_s_ffi(offset)
}

///|
extern "wasm" fn i32_store16_ffi(offset : Int, value : Int) =
  #|(func (param i32) (param i32)
  #| local.get 0
  #| local.get 1
  #| i32.store16)

///|
pub fn i32_store16(memory? : Memory = 0, offset : Int, value : Int) -> Unit {
  ignore(memory)
  i32_store16_ffi(offset, value)
}

///|
extern "wasm" fn i32_load16_s_ffi(offset : Int) -> Int =
  #|(func (param i32) (result i32)
  #| local.get 0
  #| i32.load16_s)

///|
pub fn i32_load16_s(memory? : Memory = 0, offset : Int) -> Int {
  ignore(memory)
  i32_load16_s_ffi(offset)
}

///|
extern "wasm" fn i32_load16_u_ffi(offset : Int) -> Int =
  #|(func (param i32) (result i32)
  #| local.get 0
  #| i32.load16_u)

///|
pub fn i32_load16_u(memory? : Memory = 0, offset : Int) -> Int {
  ignore(memory)
  i32_load16_u_ffi(offset)
}

///|
extern "wasm" fn i32_store_ffi(offset : Int, value : Int) =
  #|(func (param i32) (param i32)
  #| local.get 0
  #| local.get 1
  #| i32.store)

///|
pub fn i32_store(memory? : Memory = 0, offset : Int, value : Int) -> Unit {
  ignore(memory)
  i32_store_ffi(offset, value)
}

///|
extern "wasm" fn _i32_load(offset : Int) -> Int =
  #|(func (param i32) (result i32)
  #| local.get 0
  #| i32.load)

///|
pub fn i32_load(memory? : Memory = 0, offset : Int) -> Int {
  ignore(memory)
  _i32_load(offset)
}
