#!/bin/bash
message="spliter"
compiler=clang
commonFlags="-D _GNU_SOURCE -O3 -march=native"
novecFlags="-fno-vectorize -fno-slp-vectorize"
pox=.c
split="---------------------------------------------------------------"$file"---------------------------------------------------------------------"
IACA="iaca -reduceout"
echo
echo $message>>IACAresults
echo "Time: $(date)">>IACAresults
echo $compiler >>IACAresults
echo $commonFlags>>IACAresults
echo $novecFlags>>IACAresults
echo "*****************************************"$compiler"*****************************************" 
file="FIR1"
echo

echo $split>>IACAresults
echo $compiler $commonFlags $novecFlags  $file>>IACAresults
echo $split>>IACAresults

echo "Out put for $file scalar:"
$compiler $commonFlags $novecFlags   $file$pox -o $file$cmp && $IACA ./$file$cmp &>>IACAresults


echo
file="FIR1"
echo "******************************"
echo $split>>IACAresults
echo $compiler $commonFlags  $file>>IACAresults
echo $split>>IACAresults

echo "Out put for $file CAV:"
$compiler $commonFlags $file$pox -o $file$cmp && $IACA ./$file$cmp &>>IACAresults
echo 
echo "******************************"
file="FIR3"
echo $split>>IACAresults
echo $compiler $commonFlags $novecFlags  $file>>IACAresults
echo $split>>IACAresults

echo "Out put for $file AVX2:"
$compiler $commonFlags $novecFlags $file$pox -o $file$cmp && $IACA ./$file$cmp &>>IACAresults
echo
echo "******************************"
