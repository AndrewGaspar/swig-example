// SWIG interface face

// Gives the module a name: cxxlib
// This is what the Fortran module will be called
%module cxxlib

// This is literal C++ code will be inserted into the "wrapper"
// code. This allows the wrapper code to find the definition for 
// our Greeter class.
%{
#include "lib.hpp"
%}

// Imports typemaps for std::string, which will automatically convert
// Fortran strings to C++ std::string
%include <std_string.i>

// This renames CamelCase names to snake_case - more natural in Fortran
%rename("%(undercase)s") "";

// This directive includes a C++ header file into this SWIG file.
// I haven't stress tested this, but I'm guessing you're best served
// by only importing fairly simple headers.
//
// SWIG will automatically generate bindings for all types and routines it
// finds in this file but NOT for those that appear in transitively
// included files.
%include "lib.hpp"
