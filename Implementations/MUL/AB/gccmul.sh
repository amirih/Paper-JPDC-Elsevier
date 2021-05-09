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

file="MUL3"
echo "Out put for $file Gather AVX2:"
$compiler $commonFlags $novecFlags $file$pox -o $file$cmp && ./$file$cmp
$compiler $commonFlags $novecFlags  -S -c $file$pox -o $file$cmp.s
echo
echo "******************************"
