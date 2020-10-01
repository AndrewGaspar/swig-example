#ifndef LIB_HPP_
#define LIB_HPP_

#include <string>
#include <utility>

namespace hello
{
    class Greeter
    {
    public:
        Greeter(std::string name) : name_(std::move(name)) {}

        void SayHello() const;

        void ChangeName(std::string const &name);

    private:
        std::string name_;
    };
} // namespace hello

#endif // LIB_HPP_