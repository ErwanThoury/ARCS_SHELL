#! /bin/sh

if test ! -d "exe/";
then
    mkdir exe
fi
if test ! -d "non-exe/";
then
    mkdir non-exe
fi



if [ $# = 0 ];
then 
    exit 1
fi

if test ! -d $1;
then
    exit 1
fi
po=$(ls $1)
for dossier in $po
do
    
    if [ -x $1/$dossier ] 
    then
        # echo "Est un exe"
        mv $1/$dossier exe/
    fi

    
    if [ -f $1/$dossier ] 
    then
        # echo "N'est pas un exe"
        mv $1/$dossier non-exe/
    fi
    
    
    # echo $1/$dossier
done

