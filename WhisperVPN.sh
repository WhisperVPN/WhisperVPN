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
echo -e '\e[36m                                    © 2022 WhisperVPN LTD
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
echo "ERROR000 - Sometingh went wrong :/"
exit
fi
}
