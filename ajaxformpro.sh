#!/usr/bin/bash
#FellFreeToRecode
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'
LIMITATOR=5
clear
BANNERS () {
printf "${lightgreen}
=====================================================\n
           WP AJAX FORM PRO SCANNERZ MASSED BOT      \n
                ${cyan}Coded By ./KindoL \n ${lightgreen}
                                                       
    _/    _/  _/                  _/            _/     
   _/  _/        _/_/_/      _/_/_/    _/_/    _/      
  _/_/      _/  _/    _/  _/    _/  _/    _/  _/       
 _/  _/    _/  _/    _/  _/    _/  _/    _/  _/        
_/    _/  _/  _/    _/    _/_/_/    _/_/    _/_/__/ \n
=====================================================\n
${BlueF}root@kindolhaxor :~$ sudo install heart love \n ${lightgreen}
=====================================================\n
\n                                              
"
}
BANNERS
OPTIONS () {
printf "${red}[=]${white} Masukan List                        :${lightgreen} "
read list

key="File Uploader"

karepmu=/wp-content/plugins/wp-ajax-form-pro/ajax-form-app/uploader/do.upload.php?form_id=afp

printf "${red}[=]${white} Save As                             :${lightgreen} "
read save
site=$(cat $list)
}
OPTIONS
printf "\n${lightgreen}Sek bro...\n\n"

for site in $(cat $list);
do
((cthread=cthread%LIMITATOR)); ((cthread++==0)) && wait
if [[ $(curl --connect-timeout 0 --max-time 30 -kLs "${site}$karepmu" ) =~ "${key}" ]];
then
  printf "${white}[+]${site} is ${lightgreen} vuln\n"
  echo "$site$karepmu" >> ${save}

else
  printf "${white}[-] ${site} is ${red} Bad\n"
fi
done
printf "\n${lightgreen}Save as ${save}...\n\n"
