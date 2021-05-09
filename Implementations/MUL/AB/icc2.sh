#!/bin/bash
source /home/matrin/intel/compilers_and_libraries_2019/linux/bin/compilervars.sh -arch intel64
message="spliter"
compiler=icc
cmp=$compiler

commonFlags="-D _GNU_SOURCE -O3 -xHOST"
novecFlags="-no-vec"
pox=.c
echo
echo $message>>fileForSpeedups
echo "Time: $(date)">>fileForSpeedups
echo $compiler>>fileForSpeedups
echo $commonFlags>>fileForSpeedups
echo $novecFlags>>fileForSpeedups
echo "*****************************************ICC*****************************************"
file="MUL3F"
echo "Out put for $file Gather AVX2:"
$compiler $commonFlags $novecFlags $file$pox -o $file$cmp && ./$file$cmp
$compiler $commonFlags -S -c $novecFlags $file$pox -o $file$cmp.s
echo
echo "******************************"
