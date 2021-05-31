#! /bin/sh
boo=true

booMot=0
booNombre=0
booVide=0
booSolo=0


#while [ $boo = true ];
while read a
do
    #read -p "" a 
    #if [ "$a" =~ T ];
    #then
    #    boo=false        
    #fi 
    
    [[ $a =~ [a-zA-Z] ]] && booMot=1
    [[ $a =~ [0-9] ]] && booNombre=1
    [[ $a =~ ^[0-9]$ ]] && booSolo=1
    [[ $a =~ ^$ ]] && booVide=1
    [[ $a =~ [^a-zA-Z0-9] ]] && echo 'it is too complicated' && exit 0 

    [ $booSolo = 1 ] && echo 'it is a digit' ||
    {
        [ $booMot = 1 ] && [ $booNombre = 0 ] && echo 'it is a word' ||
        {
            [ $booMot = 1 ] && [ $booNombre = 1 ] && echo 'it is an alphanum' ||
            {
                [ $booMot = 0 ] && [ $booNombre = 1 ] && echo 'it is a number' ||
                {
                    [ $booVide = 1 ] && echo 'it is empty' 
                }
            }
        }
    }

    booMot=0
    booNombre=0
    booVide=0
    booSolo=0

done

