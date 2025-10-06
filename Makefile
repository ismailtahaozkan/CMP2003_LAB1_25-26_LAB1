all: clean test

helloWorldTest: test_hello_world.o MainProgram.o catch_amalgamated.o
	g++ -Wall --std=c++17 test_hello_world.o MainProgram.o catch_amalgamated.o -o helloWorldTest

test_hello_world.o: test_hello_world.cpp
	g++ -Wall --std=c++17 -c test_hello_world.cpp -o test_hello_world.o

# Rename student's main() to student_main so it won't clash with Catch's main
MainProgram.o: MainProgram.cpp
	g++ -Wall --std=c++17 -Dmain=student_main -c MainProgram.cpp -o MainProgram.o

# Compile Catch2 implementation (this TU provides Catch's symbols AND its main)
catch_amalgamated.o: catch_amalgamated.cpp
	g++ -Wall --std=c++17 -c catch_amalgamated.cpp -o catch_amalgamated.o

test: helloWorldTest
	./helloWorldTest

clean:
	rm -f helloWorldTest *.o
