# C-and-Cpp-Complie-Example
This example is used to show the details about the compile progress of the C/C++ code, including #ifndef, the difference of gcc and g++,and the use of extern "C" in cpp file.

usage:make

You can find the difference of gcc and g++ in main.s, the name of function fun1 is changed into _Z4fun1i by g++, and the name of function fun2 is still fun2 by gcc.
This is the reason why it is necessary to use extern "C" in cpp file to include files complied by gcc.

You can find the common.h is just included once in main.i with #ifndef method.
