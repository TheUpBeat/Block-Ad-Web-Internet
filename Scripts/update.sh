#!/bin/bash

if [[ -z "$1" ]]; then
  echo "Error: please specify a list, e.g. $0 /etc/hosts"
  exit 1
fi

read -p "Enter the path for Block List: " Block_List

if [[ -z "$Block_List" ]]; then
  echo "Error: please specify a list, e.g. $0 /home/user/Block_List.txt"
  exit 1
fi

# Number of addresses before updating the file
before=$( wc -l <"$Block_List" )
echo "Number of addresses before updating the file: $before"

sed '/^#/d' $1 > hosts_duplicate.txt
awk '{ if($1=="0.0.0.0" || $1=="127.0.0.1") {$1= ""}; print }' hosts_duplicate.txt > hosts.txt
sed 's/ //g' hosts.txt > hosts_duplicate.txt
sort hosts_duplicate.txt > hosts.txt
comm -13 <(sort $Block_List) <(sort hosts.txt) >> $Block_List
sort $Block_List > hosts.txt
sort hosts.txt > $Block_List

# Number of addresses after updating the file
after=$( wc -l <"$Block_List" )

echo "Block List updated"
echo "Number of addresses after updating the file: $after"
