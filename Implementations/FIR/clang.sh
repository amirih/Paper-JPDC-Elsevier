#!/bin/bash
message="spliter"
compiler=clang
cmp=$compiler

commonFlags="-D _GNU_SOURCE -O3 -march=native"
novecFlags="-fno-vectorize -fno-slp-vectorize"
pox=.c
echo
echo $message>>fileForSpeedups
echo "Time: $(date)">>fileForSpeedups
echo $compiler >>fileForSpeedups
echo $commonFlags>>fileForSpeedups
echo $novecFlags>>fileForSpeedups
echo "*****************************************LLVM*****************************************" 
file="FIR1"
echo
echo "Out put for $file scalar:"
$compiler $commonFlags $novecFlags   $file$pox -o $file$cmp && ./$file$cmp
$compiler $commonFlags $novecFlags -S -c  $file$pox -o $file$cmp.s
echo
file="FIR1"
echo "******************************"
echo "Out put for $file CAV:"
$compiler $commonFlags $file$pox -o $file$cmp && ./$file$cmp
$compiler $commonFlags $file$pox -S -c -o $file$cmp.s

echo
echo "******************************"
file="FIR2"
echo "Out put for $file SSE2:"
$compiler $commonFlags $novecFlags $file$pox -o $file$cmp && ./$file$cmp
$compiler $commonFlags $novecFlags $file$pox -S -c -o $file$cmp.s
echo
echo "******************************"
file="FIR3"
echo "Out put for $file AVX2:"
$compiler $commonFlags $novecFlags   $file$pox -o $file$cmp && ./$file$cmp
$compiler $commonFlags $novecFlags -S -c  $file$pox -o $file$cmp.s
echo
echo "******************************"
