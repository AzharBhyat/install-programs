#!/bin/sh
sudo apt-get update  # To get the latest package lists

BLUE='\033[0;34m'

wget "https://tlauncher.org/jar"
printf "Unzipping Tlauncher...\n"
unzip jar.zip -d /tlauncher

printf "${BLUE}Installing OpenJdk & OpenJfx....\n"
sudo apt-get install openjdk-8-jre -y
sudo apt-get install openjfx -y

sudo mv /tlauncher/TLauncher-2.72.jar /root/Desktop/Minecraft.jar

printf "-------------------------------------\n"

printf "${BLUE}Installing snapd\n"
sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update
sudo apt install snapd -y

printf "${BLUE}Installing VSCode....\n"
sudo snap install code --classic -y

printf "-------------------------------------\n"

printf "${BLUE}Installing OBS...\n"
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt install obs-studio -y

printf "-------------------------------------\n"
printf "${BLUE}Installing Vim...\n"
sudo apt install vim -y

#etc.
