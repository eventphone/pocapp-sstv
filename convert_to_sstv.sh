#!/bin/bash

for i in *.jpg *.png
  do echo processing $i
  python3 -m pysstv --resize --mode MartinM2 $i tmp.wav 
  sox -v 0.8 tmp.wav -t raw -r 8000 -c 1 sounds/sstv/${i%.*}.slin
done
rm tmp.wav
