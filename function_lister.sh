#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 [input_binary]"
  exit 1
fi

binary_file=$1

nm_output=$(nm -C "$binary_file")

function_names=$(echo "$nm_output" | awk '/[TtW] / || /\(.*\) [~].*$/{ name=""; i=3; while (i <= NF) { name = name "" $i; if ($i ~ /\)$/) { print name; break } i++ } }')
function_names=$(echo "$function_names" | awk '!seen[$0]++')

for function_name in $function_names; do

    echo -n "Function: $function_name"

    demangled_signature=$(c++filt --types "$function_name")
    parameter_types=$(echo "$demangled_signature" | grep -oP '\(.*?\)' | tr -d '()')

    echo -n " - Parameter types: "

    if [ "$parameter_types" == "" ]; then
      echo "void"
    else
      echo "$parameter_types"
    fi
done

