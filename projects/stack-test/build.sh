#!/bin/bash -eu

cd /src/stack-test

# Compile the vulnerable code at -O0.
# This prevents the unused strcpy() from being optimized away.
$CC $CFLAGS -O0 -Dmain=seed_main \
    -c stack.c -o stack.o

# Compile and link the fuzzing harness.
$CC $CFLAGS -O0 \
    stack_fuzzer.c stack.o \
    $LIB_FUZZING_ENGINE \
    -o "$OUT/stack_fuzzer"
