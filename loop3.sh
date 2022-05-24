#!/bin/bash

for t in 32 64 256
do
    for g in 32 256 2048 8192 16384 32768 65536 131072 262144
    do
        g++ -o second second.cpp /usr/local/apps/cuda/10.1/lib64/libOpenCL.so.1.1 -lm -w -fopenmp -DLOCAL_SIZE=$t -DNMB=$g
        ./second
    done
done
