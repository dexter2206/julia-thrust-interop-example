module ThrustInteropExample
export gpu_sort!

using CUDA

function gpu_sort!(array::CuArray{Float32})
  @ccall "thrust_wrapper".gpu_sort(array::CuPtr{Cfloat}, length(array)::UInt64)::Cvoid
end

end # module ThrustInteropExample
