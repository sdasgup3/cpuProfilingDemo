#!/bin/bash

# build the program with profiling support (-gp)
g++ -no-pie -std=c++11 -g -pg cpuload.cpp -o cpuload

# run the program; generates the profiling data file (gmon.out)
./cpuload

# print the callgraph to stdout
gprof --graph --brief cpuload
