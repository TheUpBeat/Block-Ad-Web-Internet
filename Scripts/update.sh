#!/bin/bash

awk '{ if($1=="0.0.0.0") {$1= ""}; print }' $1 > hosts.txt
sed 's/ //g' hosts.txt > test.txt
sort test.txt > hosts.txt
comm -13 <(sort Block_List.txt) <(sort hosts.txt) >> Block_List.txt
sort Block_List.txt > hosts.txt
sort hosts.txt > Block_List.txt

