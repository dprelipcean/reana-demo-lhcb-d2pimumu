#!/bin/bash

echo 'root data = ' $1
echo 'output phi models = ' $2
echo 'results directory = ' $3

mkdir -p results
mkdir -p results/tmp
root -b -q 'code/Optimise.C("'$1'", "'$3'")'
root -b -q 'code/ModelFixing.C("'$1'", "'$2'")'
root -b -q 'code/OSMassFit.C("'$1'", "'$2'", "'$3'")'
