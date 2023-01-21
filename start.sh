#!/usr/bin/env bash
echo "################################################################"
echo "Do you want to get the last github code in? - Internet required"
echo "It will overwrite anything you may have changed"
echo
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
chmod +x /alis/*.sh
chmod +x /alis/configs/*.sh
chmod +x /alis/configz/*.sh
echo
echo "################################################################"
echo "Shall we start the alis script"
echo
echo "Answer with y/Y or n/N"
echo "################################################################"
echo
read response
if [[ "$response" == [yY] ]]; then
    /alis/alis.sh -w
else
    echo "################################################################"
    echo "We did not start the alis script"
    echo "################################################################"
fi

