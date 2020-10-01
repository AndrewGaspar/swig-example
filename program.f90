program program
    use cxxlib, only : greeter

    type(greeter) :: g

    g = greeter("Fortran")
    call g%say_hello

    call g%change_name("C++")
    call g%say_hello

    call g%release
end