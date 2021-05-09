#!/bin/bash
message="spliter"
compiler=gcc
commonFlags="-D _GNU_SOURCE -O3 -march=native"
novecFlags="-fno-tree-vectorize -fno-tree-slp-vectorize"
pox=.c
file="AIC"
split="------------------------------------------------------------------------------------------------------------------------------------"
IACA="iaca -reduceout"
echo
echo $message>>IACAresults
echo "Time: $(date)">>IACAresults
echo $compiler >>IACAresults
echo $commonFlags>>IACAresults
echo $novecFlags>>IACAresults
echo "*****************************************"$compiler"*****************************************" 
file="AIC1"
echo

echo $split>>IACAresults
echo $compiler $commonFlags $novecFlags $file >>IACAresults
echo $split>>IACAresults

echo "Out put for $file scalar:"
$compiler $commonFlags $novecFlags   $file$pox -o $file$cmp && $IACA ./$file$cmp &>>IACAresults


echo
file="AIC1"
echo "******************************"
echo $split>>IACAresults
echo $compiler $commonFlags  $file >>IACAresults
echo $split>>IACAresults

echo "Out put for $file CAV:"
$compiler $commonFlags $file$pox -o $file$cmp && $IACA ./$file$cmp &>>IACAresults
echo 
echo "******************************"
file="AIC3"
echo $split>>IACAresults
echo $compiler $commonFlags $novecFlags  $file >>IACAresults
echo $split>>IACAresults

echo "Out put for $file AVX2:"
$compiler $commonFlags $novecFlags $file$pox -o $file$cmp && $IACA ./$file$cmp &>>IACAresults
echo
echo "******************************"
