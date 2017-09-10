#!/bin/bash

# build the program
g++ -no-pie -std=c++11 -g cpuload.cpp -o cpuload

# run the program; generates the profiling data file (perf.data)
sudo perf record -g ./cpuload

# analyze the profile
sudo perf report
