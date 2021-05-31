#! /bin/sh
comp=1
booPVP=0
booPVS=0
booPVD=0
cF=''
cS=''

#for i in $(sed ';' $1);
while read -r LINE;
do  
    if [ $comp = $2 ];
    then
        while read -n 1 char; #-n 1 char;
        do
            #echo le char est "${char}"
            #char="$char"

            if [ $booPVP = '1' ] && [ $booPVS = '0' ] && [ "${char}" != ';' ];
            then      

                if [ "$char" = '' ];
                then
                    cF="${cF} "
                else
                    cF="${cF}${char}"
                fi
            fi


            if [ $booPVS = '1' ] && [ $booPVD = '0' ] && [ "${char}" != ';' ];
            then
                if [ "$char" = '' ];
                then
                    cS="${cS} "
                else
                    cS="${cS}${char}"
                fi
            fi



            if [ $booPVP = '1' ] && [[ $char == ';' ]] && [ $booPVS = '1' ];
            then
                booPVD=1
            fi
            
            if [ $booPVP = '1' ] && [[ $char == ';' ]] && [ $booPVS = '0' ];
            then
                booPVS=1
            fi

            if [ $booPVP = '0' ] && [ $char = ';' ];
            then
                booPVP=1
            fi


        done <<< "$LINE"
    fi
    ((comp = comp + 1))
done < "$1"

echo $cF is $cS
#echo "pvp = $booPVP et pvs = $booPVS"
