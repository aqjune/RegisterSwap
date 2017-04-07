### Performance gap between register r13 and r14

- `Queens.s` : assembly generated from `Queens.c` , which is in LLVM Nightly Test (`https://github.com/llvm-mirror/test-suite/blob/master/SingleSource/Benchmarks/Stanford/Queens.c`)
    + Compiled by Clang 4.0 RC 4 (`clang -O3 -S -o Queens.s Queens.c`).
    + Removed `printf`s so that no system call is invoked.
    + Added a dead function `myprintf` to increase code size.

- `Queens.elim.s` : 

- `swap.sh` : script generating `Queens.rev.s` from `Queens.s`
- `build.sh` : build executables from `Queens.s` and `Queens.rev.s`
- `run.sh` : run executables `Queens.gcc`, `Queens.rev.gcc`

```