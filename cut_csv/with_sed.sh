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
        while read -n 1 char;
        do
            # echo "char = $char, pvp = $booPVP et pvs = $booPVS"
            if [ $booPVP = '1' ] && [ $booPVS = '0' ] && [ "$char" != ';' ];
            then
                if [ "$char" = '' ];
                then
                    cF="${cF} "
                else
                    cF=${cF}$char
                fi

                # echo $cF
            fi
            
            if [ $booPVS = '1' ] && [ $booPVD = '0' ] && [ "$char" != ';' ];
            then
                if [ "$char" = '' ];
                then
                    cS="${cS} "
                else
                    cS=${cS}$char
                fi
                # echo $cS
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
        #done <<< "$i"
    fi
    ((comp = comp + 1))
#done 
done < "$1"

echo $cF is $cS
#echo "pvp = $booPVP et pvs = $booPVS"
