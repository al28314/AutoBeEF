#!/bin/bash

echo "Do you want to install BeEF? (y/n)"

read y

if [[ $y == "y" ]]; then
	sudo apt install beef-xss
	echo "Do you want to install apache2 service? (y/n)"
read apache2
else
	exit
fi

if [[ $apache2 == "y" ]]; then
	sudo apt install apache2
else
	exit
fi

echo "Do you want to run beef? (y/n)"

read runbeef

if [[ $runbeef == "y" ]]; then
    sudo beef-xss
else
    exit
fi

echo "Do you want to start Apache2 service? (y/n)"

read startapache2

if [[ $startapache2 == "y" ]]; then
    sudo service apache2 start
else
    exit
fi