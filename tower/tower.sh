#! /bin/sh
taille=$1
forme=$2
if [ $forme != "square" ] && [ $forme != "triangle" ]
then 
    exit 1
fi

if ((taille < 0))
then
    exit 1
fi
echo " _________________"

while ((taille != 0))
do
    if [ $forme = "square" ]
    then
        echo "|  ___       ___  |"
        echo "| |_|_|     |_|_| |"
        echo "| |_|_|     |_|_| |"
        echo "|                 |"
    else
        echo "|                 |"
        echo "|   /\       /\   |"
        echo "|  /__\     /__\  |"
        echo "|                 |"
    fi

    ((taille = taille - 1))
done


echo "|        _        |"
echo "|       | |       |"
echo "|       | |       |"
echo "|_______| |_______|"
exit 0
