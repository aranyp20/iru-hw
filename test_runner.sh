#!/bin/bash

echo -e "------------------------- Test_01 -------------------------\n"

g++ -o tests/build/t1 tests/test_1.cpp
./function_lister.sh tests/build/t1

echo -e "\n------------------------- Test_02 -------------------------\n"

g++ -o tests/build/t2 tests/test_2.cpp
./function_lister.sh tests/build/t2

echo -e "\n------------------------- Test_03 -------------------------\n"

g++ -o tests/build/t3 tests/test_3.cpp
./function_lister.sh tests/build/t3

echo -e "\n------------------------- Test_04 -------------------------\n"

g++ -o tests/build/t4 tests/test_4.cpp
./function_lister.sh tests/build/t4

echo -e "\n------------------------- Test_05 -------------------------\n"

g++ -o tests/build/t5 tests/test_5.cpp
./function_lister.sh tests/build/t5

echo -e "\n------------------------- Test_06 -------------------------\n"

g++ -o tests/build/t6 tests/test_6a.cpp tests/test_6b.cpp
./function_lister.sh tests/build/t6

echo -e "\n------------------------- Test_07 -------------------------\n"

g++ -o tests/build/t7 tests/test_7.cpp
./function_lister.sh tests/build/t7




echo -e "\n-----------------------------------------------------------"


