#!/usr/bin/env bash
echo "################################################################"
echo "Do you want to get the last github code in? - Internet required"
echo "It will overwrite anything you may have changed"
echo "Answer with y/Y or n/N"
echo "################################################################"
echo
read response
if [[ "$response" == [yY] ]]; then

	git reset --hard
	git pull

else
    echo "################################################################"
    echo "Nothing has been changed."
    echo "################################################################"
fi

echo
echo "################################################################"
echo "Making all .sh files executable"
echo "################################################################"
echo
chmod +x *.sh
echo "################################################################"
echo "Starting alis.sh"
echo "################################################################"
echo
./alis.sh
