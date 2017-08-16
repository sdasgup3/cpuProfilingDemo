#!/bin/bash

# build the program (no special flags are needed)
g++ -no-pie -std=c++11 -g cpuload.cpp -o cpuload

# run the program with callgrind; generates a file profile.callgrind that can be viewed with kcachegrind
valgrind --tool=callgrind --demangle=yes --callgrind-out-file=profile.callgrind ./cpuload

# open profile.callgrind with kcachegrind
kcachegrind profile.callgrind
