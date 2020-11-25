#!/bin/sh
sudo apt-get update  # To get the latest package lists

BLUE='\033[0;34m'
NC='\033[0m'

wget "https://tlauncher.org/jar"
printf "Unzipping Tlauncher...\n"
unzip jar.zip -d home/azhar/tlauncher

printf "${BLUE}Installing OpenJdk & OpenJfx....${NC}\n"
sudo apt-get install openjdk-8-jre -y
sudo apt-get install openjfx -y

sudo mv /tlauncher/TLauncher-2.72.jar /home/azhar/Desktop/Minecraft.jar
sudo rm -r home/azhar/tlauncher

printf "-------------------------------------\n"

printf "${BLUE}Installing snapd...${NC}\n"
sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update
sudo apt install snapd -y

printf "${BLUE}Installing VSCode....${NC}\n"
sudo snap install code --classic -y

printf "-------------------------------------\n"

printf "${BLUE}Installing Google Chrome...${NC}\n"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y

printf "-------------------------------------\n"

printf "${BLUE}Installing OBS...${NC}\n"
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt install obs-studio -y

printf "-------------------------------------\n"

printf "${BLUE}Installing Vim...${NC}\n"
sudo apt install vim -y

#etc.
