### Performance gap between register r13 and r14

- `Queens.s` : assembly generated from `https://github.com/llvm-mirror/test-suite/blob/master/SingleSource/Benchmarks/Stanford/Queens.c`, clang 4.0 RC 4 (with freeze implemented)
    + I modified `main()` so it repeats `for (i = 0; i < 100; i++) Queens(i);` 100 times, e.g.
    ```
    for (j = 0; j < 100; j++) {
        for (i = 0; i < 100; i++) Queens(i);
    }
    ```
- `Queens.rev.s` : equivalent to `Queens.s`, except `r13` swapped with `r14` (see `swap.sh`)
- `swap.sh` : script generating `Queens.rev.s` from `Queens.s`
- `build.sh` : build executables from `Queens.s` and `Queens.rev.s`
- `run.sh` : run executables `Queens.gcc`, `Queens.rev.gcc`

