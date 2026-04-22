///|
type Memory = Int

///|
extern "wasm" fn _memory_copy(dst : Int, src : Int, len : Int) =
  #|(func (param i32) (param i32) (param i32)
  #| local.get 0
  #| local.get 1
  #| local.get 2
  #| memory.copy)

///|
pub fn memory_copy(
  memory? : Memory = 0,
  dst : Int,
  src : Int,
  len : Int,
) -> Unit {
  ignore(memory)
  _memory_copy(dst, src, len)
}

///|
extern "wasm" fn memory_size_ffi() -> Int =
  #|(func (result i32)
  #| memory.size)

///|
pub fn memory_size(memory? : Memory = 0) -> Int {
  ignore(memory)
  memory_size_ffi()
}

///|
extern "wasm" fn memory_grow_ffi(size : Int) -> Int =
  #|(func (param i32) (result i32)
  #| local.get 0
  #| memory.grow)

///|
pub fn memory_grow(memory? : Memory = 0, size : Int) -> Int {
  ignore(memory)
  memory_grow_ffi(size)
}

///|
extern "wasm" fn memory_atomic_wait32_ffi(
  address : Int,
  expected : Int,
  timeout : Int64,
) -> Int =
  #|(func (param i32) (param i32) (param i64) (result i32)
  #| local.get 0
  #| local.get 1
  #| local.get 2
  #| memory.atomic.wait32)

///|
pub fn memory_atomic_wait32(
  memory? : Memory = 0,
  address : Int,
  expected : Int,
  timeout : Int64,
) -> Int {
  ignore(memory)
  memory_atomic_wait32_ffi(address, expected, timeout)
}

///|
extern "wasm" fn memory_atomic_wait64_ffi(
  address : Int,
  expected : Int64,
  timeout : Int64,
) -> Int =
  #|(func (param i32) (param i64) (param i64) (result i32)
  #| local.get 0
  #| local.get 1
  #| local.get 2
  #| memory.atomic.wait64)

///|
pub fn memory_atomic_wait64(
  memory? : Memory = 0,
  address : Int,
  expected : Int64,
  timeout : Int64,
) -> Int {
  ignore(memory)
  memory_atomic_wait64_ffi(address, expected, timeout)
}

///|
extern "wasm" fn memory_atomic_notify_ffi(address : Int, count : Int) =
  #|(func (param i32) (param i32)
  #| local.get 0
  #| local.get 1
  #| memory.atomic.notify)

///|
pub fn memory_atomic_notify(
  memory? : Memory = 0,
  address : Int,
  count : Int,
) -> Unit {
  ignore(memory)
  memory_atomic_notify_ffi(address, count)
}
