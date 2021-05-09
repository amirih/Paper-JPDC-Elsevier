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
file="AIC1"
echo
echo "Out put for $file scalar:"
$compiler $commonFlags $novecFlags   $file$pox -o $file$cmp && ./$file$cmp
$compiler $commonFlags $novecFlags  -S -c $file$pox -o $file$cmp.s

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
