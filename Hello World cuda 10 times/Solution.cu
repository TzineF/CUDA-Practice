
#include <stdio.h>

__global__ void Kernel () {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    if (threadIdx.x < 10){
        printf("Hello World cuda\n");
    }

}
int main(){

    Kernel<<<1, 10>>>(); 
    cudaDeviceSynchronize();
    
    return 0;

}