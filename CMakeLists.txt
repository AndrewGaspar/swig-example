cmake_minimum_required(VERSION 3.18)
project(swig-playground LANGUAGES CXX Fortran)

find_package(SWIG REQUIRED COMPONENTS fortran)

set(UseSWIG_MODULE_VERSION 2)
set(UseSWIG_TARGET_NAME_PREFERENCE STANDARD)
include(UseSWIG)

add_library(cxxlib lib.cpp)
target_include_directories(cxxlib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

set_property(SOURCE lib.i PROPERTY CPLUSPLUS ON)
set_property(SOURCE lib.i APPEND PROPERTY DEPENDS lib.hpp)

swig_add_library(
    cxxlib_fortran
    TYPE USE_BUILD_SHARED_LIBS
    LANGUAGE fortran
    SOURCES lib.i)
target_link_libraries(cxxlib_fortran PRIVATE cxxlib)

add_executable(program program.f90)
target_link_libraries(program cxxlib_fortran)
