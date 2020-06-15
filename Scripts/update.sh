#!/bin/bash

sed '/^#/d' $1 > hosts_duplicate.txt
awk '{ if($1=="0.0.0.0" || $1=="127.0.0.1") {$1= ""}; print }' hosts_duplicate.txt > hosts.txt
sed 's/ //g' hosts.txt > hosts_duplicate.txt
sort hosts_duplicate.txt > hosts.txt
comm -13 <(sort Facebook_Blocked.txt) <(sort hosts.txt) >> Facebook_Blocked.txt
sort Facebook_Blocked.txt > hosts.txt
sort hosts.txt > Facebook_Blocked.txt

