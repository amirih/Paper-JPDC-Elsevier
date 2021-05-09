#!/bin/bash
message="spliter"
compiler=gcc
commonFlags="-D _GNU_SOURCE -O3 -march=native"
novecFlags="-fno-tree-vectorize -fno-tree-slp-vectorize"
pox=.c
split="------------------------------------------------------------------------------------------------------------------------------------"
IACA="iaca -reduceout"
echo
echo $message>>IACAresults
echo "Time: $(date)">>IACAresults
echo $compiler >>IACAresults
echo $commonFlags>>IACAresults
echo $novecFlags>>IACAresults
echo "*****************************************"$compiler"*****************************************" 
file="MUL1"
echo

echo $split>>IACAresults
echo $compiler $commonFlags $novecFlags  $file>>IACAresults
echo $split>>IACAresults

echo "Out put for $file scalar:"
$compiler $commonFlags $novecFlags   $file$pox -o $file$cmp && $IACA ./$file$cmp &>>IACAresults

echo
file="MUL1"
echo "******************************"
echo $split>>IACAresults
echo $compiler $commonFlags  $file>>IACAresults
echo $split>>IACAresults

echo "Out put for $file CAV:"
$compiler $commonFlags $file$pox -o $file$cmp && $IACA ./$file$cmp &>>IACAresults
echo 
echo "******************************"
file="MUL3"
echo $split>>IACAresults
echo $compiler $commonFlags $novecFlags  $file>>IACAresults
echo $split>>IACAresults

echo "Out put for $file AVX2:"
$compiler $commonFlags $novecFlags $file$pox -o $file$cmp && $IACA ./$file$cmp &>>IACAresults
echo
echo "******************************"

echo $split>>IACAresults
echo "floating points:">>IACAresults
echo $split>>IACAresults

commonFlags="-D _GNU_SOURCE -Ofast -march=native"
file="MUL1F"
echo

echo $split>>IACAresults
echo $compiler $commonFlags $novecFlags  $file>>IACAresults
echo $split>>IACAresults

echo "Out put for $file scalar:"
$compiler $commonFlags $novecFlags   $file$pox -o $file$cmp && $IACA ./$file$cmp &>>IACAresults

echo
file="MUL1F"
echo "******************************"
echo $split>>IACAresults
echo $compiler $commonFlags  $file>>IACAresults
echo $split>>IACAresults

echo "Out put for $file CAV:"
$compiler $commonFlags $file$pox -o $file$cmp && $IACA ./$file$cmp &>>IACAresults
echo 
echo "******************************"
file="MUL3F"
echo $split>>IACAresults
echo $compiler $commonFlags $novecFlags  $file>>IACAresults
echo $split>>IACAresults

echo "Out put for $file AVX2:"
$compiler $commonFlags $novecFlags $file$pox -o $file$cmp && $IACA ./$file$cmp &>>IACAresults
echo
echo "******************************"


