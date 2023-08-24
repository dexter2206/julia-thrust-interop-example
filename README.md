# Example of interop between Julia and thrust

> [!WARNING]
> This is only a PoC, which is why running code from this repo for the first time is rather cumbersome. For production deployments you probably need to figure out a better way for distributing the shared library.
>

## How to run

1. Clone this repository and its submodules:
   ```shell
   git clone --recurse-submodules git@github.com:dexter2206/julia-thrust-interop-example.git
   ```
2. Build C++ library containing thrust wrapper by running make:
   ```shell
   make
   ```

   If everything went correctly, you should now have `lib` directory with `thrust_wrapper.so` in it.
  
3. Add `lib` directory to `LD_LIBRARY_PATH`
   ```shell
   export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${PWD}/lib
   ```
   Remember that this works only in your current terminal session!
5. Run julia interpreter and launch tests. If everything works correctly, all tests should pass.
