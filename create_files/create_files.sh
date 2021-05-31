#! /bin/sh
dossier=''
touch " "
touch '\'
touch ./-- 
touch '|'
touch '"'
touch "'"
touch ./--'$''i'*"'"'"''\'
touch '#'' '"Exams are fun!"
touch ';''`''k''i''l''l'' ''-''9'' ''0''`'
for i in $(seq 1 50);
do
    dossier="${dossier}${i}/"
    mkdir $dossier
    #chmod 644 $dossier
    
done
touch ${dossier}farfaraway
