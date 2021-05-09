#!/bin/bash
message="spliter"
compiler=gcc
cmp=$compiler
commonFlags="-D _GNU_SOURCE -O3 -march=native"
novecFlags="-fno-tree-vectorize -fno-tree-slp-vectorize"
pox=.c
echo
echo $message>>fileForSpeedups
echo "Time: $(date)">>fileForSpeedups
echo $compiler >>fileForSpeedups
echo $commonFlags>>fileForSpeedups
echo $novecFlags>>fileForSpeedups
echo "*****************************************GCC*****************************************" 
file="AIC1"
echo
echo "Out put for $file scalar:"
$compiler $commonFlags $novecFlags   $file$pox -o $file$cmp && ./$file$cmp
$compiler $commonFlags $novecFlags   -S -c $file$pox -o $file$cmp.s

echo
file="AIC1"
echo "******************************"
echo "Out put for $file CAV:"
$compiler $commonFlags $file$pox -o $file$cmp && ./$file$cmp
$compiler $commonFlags $file$pox -S -c -o $file$cmp.s

echo
echo "******************************"
file="AIC3"
echo "Out put for $file AVX2:"
$compiler $commonFlags $novecFlags $file$pox -o $file$cmp && ./$file$cmp
$compiler $commonFlags $novecFlags -S -c $file$pox -o $file$cmp.s

echo
echo "******************************"
