red="\e[35m"
rset="\e[34m"
grn="\e[34m"
ylo="\e[34m"
blue="\e[34m"
cyan="\e[36m"
pink="\e[34m"
#-----------------
# scripting start
banner(){
vid
echo -e '\e[34m
 █     █░ ██░ ██  ██▓  ██████  ██▓███  ▓█████  ██▀███   ██▒   █▓ ██▓███   ███▄    █    
▓█░ █ ░█░▓██░ ██▒▓██▒▒██    ▒ ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒▓██░   █▒▓██░  ██▒ ██ ▀█   █    
▒█░ █ ░█ ▒██▀▀██░▒██▒░ ▓██▄   ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒ ▓██  █▒░▓██░ ██▓▒▓██  ▀█ ██▒   
░█░ █ ░█ ░▓█ ░██ ░██░  ▒   ██▒▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄    ▒██ █░░▒██▄█▓▒ ▒▓██▒  ▐▌██▒   
░░██▒██▓ ░▓█▒░██▓░██░▒██████▒▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒   ▒▀█░  ▒██▒ ░  ░▒██░   ▓██░   
░ ▓░▒ ▒   ▒ ░░▒░▒░▓  ▒ ▒▓▒ ▒ ░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░   ░ ▐░  ▒▓▒░ ░  ░░ ▒░   ▒ ▒    
  ▒ ░ ░   ▒ ░▒░ ░ ▒ ░░ ░▒  ░ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░   ░ ░░  ░▒ ░     ░ ░░   ░ ▒░   
  ░   ░   ░  ░░ ░ ▒ ░░  ░  ░  ░░          ░     ░░   ░      ░░  ░░          ░   ░ ░    
    ░     ░  ░  ░ ░        ░              ░  ░   ░           ░                    ░    
                                                            ░                          '
echo " "
echo " "
}
menu(){
echo -e "                  $pink © 2022 WhisperVPN LTD. $pink"
echo -e "$red             ＞＞＞＞>>>＞$pink [Menu]$red ＜<<<＜＜＜＜$red"
echo " "
echo " "
echo -e "$pink                        ➡$red [\e[35m1]\e[34m Start VPN"
echo -e "$pink                        ➡$red [\e[35m2]\e[34m About Us"
echo -e "$pink                        ➡$red [\e[35m3]\e[34m Update Script"
echo -e "$pink                        ➡$red [\e[35m4]\e[34m Report Issues"
echo -e "$pink                        ➡$red [\e[35m5]\e[34m Exit"
   
echo " "
echo " "
echo -e "$red               >＞＞＞＞＞$pink [SELECT]$red ＜＜＜＜＜<$red"
echo " "
echo -ne "\e[35m#SELECT OPTION\e[35m: "
read optnz
if [ $optnz = "1" ];
then
cd $HOME
cd WhisperVPN
echo -e "$pink Starting WhisperVPN..."
sleep 1
echo -e "$pink Connecting to WhisperVPN's servers..."
sleep 1
echo -e "$red Successfully connected to linux@ec2-18-236-156-226.us-west-2.compute.amazonaws.com!"
sleep 1
echo -e "$pink Starting Tor and setting up all Tor circuits..."
sleep 1
tor
ssh -i "keypairs.pem" linux@ec2-18-236-156-226.us-west-2.compute.amazonaws.com -p 32513
elif [ $optnz = "2" ];
then
am start -a android.intent.action.VIEW -d https://whispervpn.company.site/ > /dev/null 2>&1
banner
menu
elif [ $optnz = "3" ];
then
upd
elif [ $optnz = "4" ];
then
am start -a android.intent.action.VIEW -d https://github.com/WhisperVPN/WhisperVPN/issues > /dev/null 2>&1
banner
menu
elif [ $optnz = "5" ];
then
echo -e "Thanks for choosing WhisperVPN :D"
sleep 1
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
while git clone https://github.com/WhisperVPN/WhisperVPN 2> /dev/null; do 
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
banner
menu
elif [ "$p" = "t" ];
then
clear
banner
menu
elif [ "$p" = "z" ];
then
cd $HOM/WhisperVPN
rm noob.noob
banner
menu
else
banner
menu
exit
fi
}
banner
menu
