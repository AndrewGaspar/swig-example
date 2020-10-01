# SWIG Fortran Example

This is an example of SWIG Fortran. It defines a `Greeter` class in C++, generates bindings for it,
and then uses that class from a Fortran program.

## Dependencies
You can install CMake 3.18 and SWIG Fortran from spack:
```
spack env create swig
spack env activate swig
spack add swig@fortran
spack add cmake@3.18:
spack install
```

## Build and Run

```
// clone swig-example
cd swig-example
spack env activate swig
cmake -S. -Bbuild
cmake --build build
./build/program
```

## Expected Output
```
Hello, Fortran!
Hello, C++!
```