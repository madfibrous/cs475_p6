#!/bin/csh

foreach t (32 64 128 256)
    foreach g (1 4 16 64 256)
        g++ -o first first.cpp /usr/local/apps/cuda/10.1/lib64/libOpenCL.so.1.1 -lm -fopenmp -DLOCAL_SIZE=$t -DNMB=$g
        ./first
end
