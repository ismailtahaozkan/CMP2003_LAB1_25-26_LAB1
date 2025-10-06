#include "catch_amalgamated.hpp"
#include <sstream>
#include <iostream>

using namespace std;

// We'll compile MainProgram.cpp with -Dmain=student_main
extern int student_main();

TEST_CASE("Program prints Hello World!", "[hello]") {
    ostringstream buffer;
    streambuf* old = cout.rdbuf(buffer.rdbuf());

    REQUIRE(student_main() == 0);

    cout.rdbuf(old);
    string out = buffer.str();
    while (!out.empty() && (out.back() == '\n' || out.back() == '\r'))
        out.pop_back();

    REQUIRE(out == "Hello World!");
}