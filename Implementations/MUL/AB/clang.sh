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
file="MUL1"
echo
echo "Out put for $file scalar:"
$compiler $commonFlags $novecFlags   $file$pox -o $file$cmp && ./$file$cmp
$compiler $commonFlags $novecFlags -S -c  $file$pox -o $file$cmp.s
echo
file="MUL1"
echo "******************************"
echo "Out put for $file CAV:"
$compiler $commonFlags $file$pox -o $file$cmp && ./$file$cmp
$compiler $commonFlags -S -c  $file$pox -o $file$cmp.s
echo
echo "******************************"
file="MUL3"
echo "Out put for $file Gather AVX2:"
$compiler $commonFlags $novecFlags $file$pox -o $file$cmp && ./$file$cmp
$compiler $commonFlags $novecFlags  -S -c $file$pox -o $file$cmp.s
echo
echo "******************************"

echo "floating points:">>fileForSpeedups
commonFlags="-D _GNU_SOURCE -Ofast -march=native"
file="MUL1F"
echo
echo "Out put for $file scalar:"
$compiler $commonFlags $novecFlags   $file$pox -o $file$cmp && ./$file$cmp
$compiler $commonFlags $novecFlags   -S -c  $file$pox -o $file$cmp.s
echo
file="MUL1F"
echo "******************************"
echo "Out put for $file CAV:"
$compiler $commonFlags $file$pox -o $file$cmp && ./$file$cmp
$compiler $commonFlags  -S -c  $file$pox -o $file$cmp.s
echo
echo "******************************"
file="MUL3F"
echo "Out put for $file Gather AVX2:"
$compiler $commonFlags $novecFlags $file$pox -o $file$cmp && ./$file$cmp
$compiler $commonFlags $novecFlags  -S -c  $file$pox -o $file$cmp.s
echo
echo "******************************"
