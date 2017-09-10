#!/bin/bash

# build the program; For our demo program, we specify -DWITHGPERFTOOLS to enable the gperftools specific #ifdefs
g++ -no-pie  -std=c++11 -DWITHGPERFTOOLS -I /home/sdasgup3/Install/gperftools.install/include/ -L/home/sdasgup3/Install/gperftools.install/lib  -g cpuload.cpp   -lprofiler    -o cpuload

# run the program; generates the profiling data file (profile.log in our example)
CPUPROFILE_FREQUENCY=50000 ./cpuload

# convert profile.log to callgrind compatible format
#pprof --callgrind ./cpuload profile.log > profile.callgrind
pprof --text ./cpuload profile.log 

# open profile.callgrind with kcachegrind
#kcachegrind profile.callgrind
