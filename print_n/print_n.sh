#! /bin/sh

[ $# = 0 ] && exit 1

[ -1 -ge $1 ] && exit 2


for i in $*
do
    if [ $i = asan ]; then
        for y in $(seq 1 $1)
        do
            echo '*'
        done

        exit 0
    fi
    if [ $i != $1 ]; then
        for y in $(seq 1 $1)
        do
            echo $i
        done
    fi
done

exit 0
