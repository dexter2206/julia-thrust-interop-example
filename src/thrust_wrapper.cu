#include <cstdint>
#include <thrust/device_ptr.h>
#include <thrust/sort.h>

using namespace std;

extern "C" {
    void gpu_sort(float* data, uint64_t size) {
        thrust::device_ptr<float> data_ptr(data);
        thrust::sort(data_ptr, data_ptr+size);
    }
}
