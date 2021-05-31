#! /bin/sh
nombre=1
extension=txt
nom=default
boo_nombre=0
boo_nom=0
boo_extension=0

for parametre in $*
do
    boo_entree=0
    if [ $boo_nombre = "1" ];
    then
        #echo  ${parametre}
        nombre=$parametre
        boo_nombre=0
        boo_entree=1
    fi
    if [ $boo_nom = "1" ];
    then
        #echo  ${parametre}
        nom=$parametre
        boo_nom=0
        boo_entree=1
    fi
    if [ $boo_extension = "1" ];
    then
        #echo  ${parametre} 
        extension=$parametre
        boo_extension=0
        boo_entree=1
    fi
    
    if [ ${parametre} = "-e" ] || [ ${parametre} = "--extension" ];
    then
        #echo -n extension =
        boo_extension=1
        boo_entree=1
    fi

    if [ ${parametre} = "-n" ] || [ ${parametre} = "--number" ];
    then
        #echo -n nombre =
        boo_nombre=1
        boo_entree=1
    fi

    if [ ${parametre} = "-f" ] || [ ${parametre} = "--filename" ];
    then
        #echo -n nom_de_fichier =
        boo_nom=1
        boo_entree=1
    fi
    if [ $boo_entree = "0" ];
    then
        exit 1 
    fi

done
#if [ $boo_extension = "1" ] || [ $boo_nom = "1" ] || [ $boo_nombre = "1" ];
#then
#    exit 1
#fi
#echo "On a $nom $parametre $nombre"

while [ $nombre != 0 ];
do
    touch "./${nom}-${nombre}.${extension}"
    ((nombre = nombre - 1))
done

exit 0
