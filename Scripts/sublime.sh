#!/bin/bash

CHOICE=$(echo -en "Competitive Coding\nC++\nC\nPython\nJava\nstartpage\nScripts\nProjects\nOther" | dmenu)

case $CHOICE in
	C|Java|C++|Python) 
		subl "~/Programs/$CHOICE"
		;;
	"Competitive Coding")
		subl "~/Programs/Competitive Coding/$(echo -en "HackerRank\nProject Euler\nHackerEarth\nCodeChef" | dmenu -l 5)"
		;;
	"startpage")
		subl "~/$CHOICE"
		;;
	"Scripts")
		subl "~/Desktop/Scripts"
		;;
	"Projects")
		subl ~/Projects/`ls -l ~/Projects/ | sed "1d;/^-/d;s/.* //" | dmenu -l 5`
		;;
	"Other")
		subl "~/$(ls -l ~/ | sed "1d;/^-/d;s/.* //" | dmenu -l 5)"
		;;
esac
