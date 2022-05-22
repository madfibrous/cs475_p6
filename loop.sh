#!/bin/csh
foreach l(32 64 128 256)
do
    foreach g(1 4 16 64 256 1024 4096 8192) 
    do
    /usr/local/apps/cuda/cuda-11.1/bin/nvcc -DLOCAL_SIZE=%l -DNUMB=%g -o arrayMul arrayMul.cu
    ./arrayMul
    done
done
end
