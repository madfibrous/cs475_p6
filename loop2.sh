#!/bin/bash

for t in 8 16 64 256 512
do
    for g in 32 64 256 2048 8192
    do
        g++ -o first first.cpp /usr/local/apps/cuda/10.1/lib64/libOpenCL.so.1.1 -lm -w -fopenmp -DLOCAL_SIZE=$t -DNMB=$g
        ./first
    done
done
