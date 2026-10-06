#include <stdio.h>

__global__ void helloKernel(int* dummy) {
    if (threadIdx.x == 0) {
        printf("Hello World Cuda\n");
    }
}

int main() {
    int* d_dummy;
    cudaMalloc(&d_dummy, sizeof(int));
    helloKernel<<<1, 1>>>(d_dummy);
    cudaDeviceSynchronize();
    cudaFree(d_dummy);
    
    return 0;
}