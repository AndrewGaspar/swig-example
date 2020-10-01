#include "lib.hpp"

#include <iostream>

void hello::Greeter::SayHello() const
{
    std::cout << "Hello, " << name_ << "!" << std::endl;
}

void hello::Greeter::ChangeName(std::string const &name)
{
    name_ = name;
}
