#!/bin/bash

# build the program; For our demo program, we specify -DWITHGPERFTOOLS to enable the gperftools specific #ifdefs
g++ -no-pie  -std=c++11  -g cpuload.cpp     -o cpuload

sudo ~/Install/oprofile.install/bin/operf ./cpuload 
opreport --symbols
opannotate --source


# open profile.callgrind with kcachegrind
#kcachegrind profile.callgrind
