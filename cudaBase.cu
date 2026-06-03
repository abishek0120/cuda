#include <iostream>
#include <cuda.h>
#include <cuda_runtime.h>

__global__ void hello()
{
    printf("Hello from GPU!\n");
}



int main()
{
    hello<<<1,1>>>();
    cudaDeviceSynchronize();

    return 0;
}