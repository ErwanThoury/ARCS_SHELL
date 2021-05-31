#! /bin/sh

for i in $*;
do
    echo -n ${i}:
   
    [ -f ${i} ] && echo -n " file" ||
    {
        [ -d ${i} ] && echo -n " directory" ||
        {
            echo -n " unknown"
        }
    }
    echo ""
done

