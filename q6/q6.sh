#!/bin/bash

read -p "Enter lyricsfilename: " lyrics
read -p "Enter cusswordsfilename: " cuss

mapfile -t cusswords < "$cuss"


cp "$lyrics" output.txt


for i in "${cusswords[@]}"
do
	
	sed -i "s/$i/bleep/gI" output.txt
done

