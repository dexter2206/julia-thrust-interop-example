using CUDA
using ThrustInteropExample
using Test

@testset for N in [100, 10000, 100000] "Sorting with thrust gives the same results as native sorting (N=$N)"
    arr = rand(Float32,N)
    arr_d = CuArray(arr)
    gpu_sort!(arr_d)
    @test Array(arr_d) == sort(arr)
end
