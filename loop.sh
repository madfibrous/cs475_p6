#!/bin/csh
foreach t(32 64 128 256)
    /usr/local/apps/cuda/cuda-11.1/bin/nvcc -DTHREADS_PER_BLOCK=%t -o arrayMul arrayMul.cu
    ./arrayMul
end
