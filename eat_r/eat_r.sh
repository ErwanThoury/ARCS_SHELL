#! /bin/sh
v_entree=$1
v_retour=','

for i in $*;
do  
    v_retour=${v_retour},$i
done
v_retour=${v_retour[@]:2}
echo $v_retour | tr -d rR


