#!/bin/bash

clear
for (( ; ; )) do
echo -en "\033[0;0H"
echo -en "\n"
figlet Happy New Year! | lolcat
sleep 0.5
done

