CUDA_PATH = /usr/local/apps/cuda/cuda-11.1
CUDA_BIN_PATH = $(CUDA_PATH)/bin
CUDA_NVCC = $(CUDA_BIN_PATH)/nvcc

arrayMu: second.cpp
		 g++ -o second second.cpp /usr/local/apps/cuda/10.1/lib64/libOpenCL.so.1.1 -lm -fopenmp
