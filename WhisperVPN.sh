red="\e[34m"
rset="\e[34m"
grn="\e[34m"
ylo="\e[34m"
blue="\e[34m"
cyan="\e[36m"
pink="\e[34m"
#-----------------
# scripting start
menu(){
vid
echo -e '\e[34m                                     ..::...                                             
                                            .^~!7777777!^.                                          
                                           ^!!~:.....:^!77!:             .:~!!!!~:.                 
                                         .!7:     .     .~77~.         .!JJ?7!7?JYJ7^               
                                         ~7.   ::..       ^77!.       :JJ~.     .~JYY7.             
                                        .7^  .^.           !77~       ?J:         :?JY7             
                                        .7:  ::            ~77!      .J~           ~YJJ^            
                                         :~  .:            !77!       !!           ^JJY~            
                                          ..              ^777^        :          .?JJJ:            
                                                        .~777~                  .~?YJJ^             
                                                     .:~7777^             ..:^!?JYYJ!:              
             .:^^::...                        ..::^~!7777!^..:^^~!!777???JJJJJJ?7!^.                
               .:^^~~~!!~~~~~^^^^^^^^^~~~~~!!!777777!!~:::~!77!!!!~!!!!!!~~^:..                     
                      ...::^^~~~~~!!!!!!!!~~~~^^::..    :^^^^^^~~~!!!!!!!!!~~^^:.                   
             .::^^^^^^:::......................:::^^~~!!!77777777!!!!!!~!!!!!7777!^.                
                 ..::^^~~~!!!!!!!!!!!!!!!!!777777777!!!!~~^:::...           ..:^~777~               
                             ..:::::::^^^~~~^^^:.....                            .~77~              
                              .:~!7????JJJJJJJJJ?7~:              .:..^            ~77:             
                                   .......::^^!7JYYJ7.            ^. ~^            ^77^             
                                                .^JJY?.          .^  !^            ~77:             
                                         !~       ~YJJ:           ^. ^7:          ^77^              
                                         ??       7JY?.            :. ^!~:.    .:!7!:               
                                         ^J?^...^7YY?:              .. .^!!!!!!!!~:                 
                                          .!?JJJJJ?~.                     ......                   
                                             .:::.  
                                                 © 2022 WhisperVPN LTD
echo " "
echo " "
}
menu(){
echo -e "$cyan             ＞＞＞＞>>>＞$cyan [Menu]$grn ＜<<<＜＜＜＜$cyan"
echo " "
echo " "
echo -e "$red                        ➡$cyan [\e[36m1\e[36m] Start VPN"
echo -e "$red                        ➡$cyan [\e[36m2\e[36m] About Us"
echo -e "$red                        ➡$cyan [\e[36m3\e[36m] Update Script"
echo -e "$red                        ➡$cyan [\e[36m4\e[36m] Report Issues"
echo -e "$red                        ➡$cyan [\e[36m5\e[36m] Exit"
   
echo " "
echo " "
echo -e "$grn               >＞＞＞＞＞$cyan [SELECT]$cyan ＜＜＜＜＜<$rset"
echo " "
echo -ne "\e[36m#SELECT OPTION\e[36m: "
read optnz
if [ $optnz = "1" ];
then
cd $HOME
cd WhisperVPN
tor
elif [ $optnz = "2" ];
then
am start -a android.intent.action.VIEW -d https://whispervpn.company.site/ > /dev/null 2>&1
menu
elif [ $optnz = "3" ];
then
upd
elif [ $optnz = "4" ];
then
am start -a android.intent.action.VIEW -d https://github.com/WhisperVPN/WhisperVPN/issues > /dev/null 2>&1
menu
elif [ $optnz = "5" ];
then
exit 1
else
echo "ERROR000 - Something went wrong :/"
exit
fi
}
upd(){
if [ -d "$HOME/WhisperVPN" ];
then
cd $HOME
rm -rf WhisperVPN
elif [ -d "$HOME/WhisperVPN" ];
then
cd $HOME
rm -rf WhisperVPN
else
echo
exit 1
fi
cd $HOME
sleep 1
echo -e "         \e[34mUpdating WhisperVPN...\e[34m"
echo
printf "                     \e[34m["
# While process is running...
while git clone https://github.com/ParzivalHack/WhisperVPN 2> /dev/null; do 
    printf  "\e[34m▓▓▓▓▓▓▓▓▓▓▓▓▓\e[34m"
    sleep 1
done
printf "\e[34m]\e[34m"
echo
echo
echo
printf "\e[34m           Updated successfully to the latest version :D\e[34m"
sleep 2.0
clear
cd $HOME
cd WhisperVPN
bash WhisperVPN.sh
}
vid(){
FILE=$HOME/WhisperVPN
if [ -f "$FILE" ]; then
pop
else
echo
fi
}
pop(){
clear
read p
if [ "$p" = "y" ];
then
am start -a android.intent.action.VIEW -d ERROR000 2>/dev/null
clear
menu
elif [ "$p" = "t" ];
then
clear
menu
elif [ "$p" = "z" ];
then
cd $HOM/doomshell
rm noob.noob
menu
else
menu
exit
fi
}
menu
