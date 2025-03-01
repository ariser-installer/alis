#!/bin/bash
#set -e
##################################################################################################################
# Author 	: Erik Dubois
# Website   : https://www.erikdubois.be
# Website   : https://www.alci.online
# Website   : https://www.ariser.eu
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
#tput setaf 0 = black 
#tput setaf 1 = red 
#tput setaf 2 = green
#tput setaf 3 = yellow 
#tput setaf 4 = dark blue 
#tput setaf 5 = purple
#tput setaf 6 = cyan 
#tput setaf 7 = gray 
#tput setaf 8 = light blue
##################################################################################################################

# change a commit comment
# git commit --amend -m "more info"
# git push --force origin

# stash or commit
# git reset --hard

echo "Adding time to /etc/dev-rel"
date_build=$(date -d now)
echo "Iso build on : "$date_build
sed -i "s/\(^ISO_BUILD=\).*/\1$date_build/" files/etc/dev-rel

# Folder to check
FOLDER="output-archlinux-alis-virtualbox"

# Prompt the user
echo
echo
read -p "Do you want to set the default alis.conf back? (y/n): " response

# Check the response
if [[ "$response" == "y" || "$response" == "Y" ]]; then
  # Set default alis.conf back
  cp -v alis.bconf alis.conf
  echo "Default alis.conf has been restored."
else
  # Do nothing
  echo "No changes made."
fi

# Check if the folder exists
if [ -d "$FOLDER" ]; then
  echo "Folder '$FOLDER' exists. Removing..."
  rm -rf "$FOLDER"
  echo "Folder '$FOLDER' has been removed."
else
  echo "Folder '$FOLDER' does not exist. Nothing to remove."
fi

# Below command will backup everything inside the project folder
git add --all .

# Give a comment to the commit if you want
echo "####################################"
echo "Write your commit comment!"
echo "####################################"

read input

# Committing to the local repository with a message containing the time details and commit text

git commit -m "$input"

# Push the local files to github

if grep -q main .git/config; then
	echo "Using main"
	git push -u origin main
fi

if grep -q master .git/config; then
	echo "Using master"
	git push -u origin master
fi

echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"
