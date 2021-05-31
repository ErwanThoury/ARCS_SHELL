#! /bin/sh
v_sec=$1
v_min=0
((v_reste = v_sec % 60))
((v_secTest = v_sec/60))
while ((v_secTest != 0))
do 
    ((v_sec = v_sec - 60))
    ((v_secTest = v_sec/60))
    ((v_min = v_min + 1))
done
if ((v_sec < 10)); then
    echo ${v_min}:0${v_sec}
else    
    echo ${v_min}:${v_sec}
fi
