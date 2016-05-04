#!/usr/bin/env bash

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

minimum_git_version= 1.6.3

echo "${green} ######################################################################################################"
echo "${green} Thank You for using my dotfiles. This script will install the dotfiles in your home directory.${reset}"
echo "${red} NOTE:${reset} ${green} This might take some time based on the speed of your connection.${reset}       "
echo "${green} ######################################################################################################"

echo ""
echo ""

echo "${red} checking for git....${reset}"
git_version=$(git --version | rev | cut -d " " -f1)

if (( $(echo "$git_version $minimum_git_version" | awk '{print ($1 > $2)}') )); then
  echo "${green} Creating dotfiles folder in your home path."
  cd /home/$USER && mkdir test
  cd /home/$USER/test
else
  echo "${red} The version of git installed is less than the minimum git version needed (${minimum_git_version}). Please upgrade git and try again. ${reset}"
fi
