#! /bin/sh

touch $2

for i in $(echo $1/*)
do 
    echo $i >> $2
done
