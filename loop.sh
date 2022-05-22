#!/bin/csh

foreach t (8 16 64 256 512)
    foreach g (32 64 256 2048 8192)
        g++ -o first first.cpp /usr/local/apps/cuda/10.1/lib64/libOpenCL.so.1.1 -lm -fopenmp -DLOCAL_SIZE=$t -DNMB=$g
        ./first
end
