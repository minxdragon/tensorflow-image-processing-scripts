#!/bin/bash

#name of file
a="name" 	

#extension of file
b=".jpg" 		

#output label
c="out-"	

#change the sequence numbers for the amount of images
for i in $(seq 1 3)	
do

inputfile=$a$i$b

outputfile=$c$i$b

iterationamount=$i

#neural style settings here use your favorites
#change the path to information to your neural style folder location

#Base settings plus an --initial style point change these for your preferred settings if you want
python neural_style.py --styles styleimage.png --content /path/to/neural-style-master/$inputfile --output /path/to/neural-style-master/output/$outputfile --iterations $i --initial styleimage.png

echo $outputfile

done
