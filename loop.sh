#!/bin/csh
foreach l(32 64 128 256)
do
    foreach g(1 2 4 8 16) 
    do
    /usr/local/apps/cuda/cuda-11.1/bin/nvcc -DLOCAL_SIZE=%l -DNUMB=%g -o arrayMul arrayMul.cu
    ./arrayMul
    done
done
end
