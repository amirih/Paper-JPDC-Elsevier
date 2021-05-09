#!/bin/bash
source /home/matrin/intel/compilers_and_libraries_2019/linux/bin/compilervars.sh -arch intel64
message="spliter"
compiler=icc
commonFlags="-D _GNU_SOURCE -O3 -xHOST"
novecFlags="-no-vec"
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
file="TRA1"
echo

echo $split>>IACAresults
echo $compiler $commonFlags $novecFlags  $file>>IACAresults
echo $split>>IACAresults

echo "Out put for $file scalar:"
$compiler $commonFlags $novecFlags   $file$pox -o $file$cmp && $IACA ./$file$cmp &>>IACAresults


echo
file="TRA1"
echo "******************************"
echo $split>>IACAresults
echo $compiler $commonFlags  $file>>IACAresults
echo $split>>IACAresults

echo "Out put for $file CAV:"
$compiler $commonFlags $file$pox -o $file$cmp && $IACA ./$file$cmp &>>IACAresults
echo 
echo "******************************"
file="TRA3G"
echo $split>>IACAresults
echo $compiler $commonFlags $novecFlags  $file>>IACAresults
echo $split>>IACAresults

echo "Out put for $file AVX2:"
$compiler $commonFlags $novecFlags $file$pox -o $file$cmp && $IACA ./$file$cmp &>>IACAresults
echo
echo "******************************"
