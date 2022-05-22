#!/bin/csh
foreach l(32 64 128 256)
    foreach g(1 4 16 64 256 1024 4096 8192) 
    g++ -o first first.cpp /usr/local/apps/cuda/cuda-11.1/bin/nvcc -DLOCAL_SIZE=%l -DNUMB=%g -lm -fopenmp
    ./first
end
