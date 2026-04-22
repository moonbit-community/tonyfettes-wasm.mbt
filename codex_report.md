# Codex Report

## Summary

`moon check`, `moon check --deny-warn`, `moon fmt`, and plain `moon info` pass after the committed fixes.

The newly added CI template contains `moon info --target all`. That command fails for this repository because the package exposes different public interfaces on different backends.

## Reproduction

Command:

```bash
moon info --target all
```

Result:

- Exit code: 1
- `wasm-gc` interface uses `Int` for the `memory?` parameter.
- `js` interface uses an opaque `Memory` type, exposes `get_default_memory`, and also exposes `i64_load_ffi`.
- `native` interface is effectively empty because the package files are restricted to js/wasm/wasm-gc targets.
- The command also reports `src/ignore.mbt` as unused on non-wasm targets.

## Manual Decision Needed

The generic CI step `moon info --target all` is not compatible with the current target-specific API design. A maintainer should decide whether to:

1. Keep target-specific APIs and change CI to run target-specific `moon info` commands instead of `moon info --target all`.
2. Redesign the package so js, wasm, wasm-gc, and native expose one unified public interface.

I did not make that decision automatically because it changes the repository's supported-backend contract.
