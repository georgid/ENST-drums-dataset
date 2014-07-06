#!/bin/sh

# getAccompaniments.sh
# 
#
# Created by Georgi Dzhambazov on 7/3/13.
# Copyright 2013 RWTH Aachen. All rights reserved.


pathTarget=/Users/joro/Documents/Linz/RHYTHMIC_14March/ENST-drums-extracted/accompaniment_all_drummers; 



drummerNumber=1;

## get acoompaniment audio
pathToAccomp=/Users/joro/Documents/Linz/RHYTHMIC_14March/ENST-drums-public/drummer_${drummerNumber}/audio/accompaniment;
cd $pathToAccomp;

for i in `ls *_minus-one_*`; do a=`basename $i .wav` ;  cp $i ${pathTarget}/drummer_${drummerNumber}_${a}_acc.wav; done

### get annotation 
pathToAnnot=/Users/joro/Documents/Linz/RHYTHMIC_14March/ENST-drums-public/drummer_${drummerNumber}/annotation;
cd $pathToAnnot;

for i in `ls *_minus-one_*`; do a=`basename $i .wav` ;  cp $i ${pathTarget}/drummer_${drummerNumber}_${a}_acc.wav; done



##############

drummerNumber=2;


pathToAccomp=/Users/joro/Documents/Linz/RHYTHMIC_14March/ENST-drums-public/drummer_${drummerNumber}/audio/accompaniment;
cd $pathToAccomp;


for i in `ls *_minus-one_*`; do a=`basename $i .wav` ;  cp $i ${pathTarget}/drummer_${drummerNumber}_${a}_acc.wav; done







#####################
drummerNumber=3;
pathToAccomp=/Users/joro/Documents/Linz/RHYTHMIC_14March/ENST-drums-public/drummer_${drummerNumber}/audio/accompaniment;
cd $pathToAccomp;


for i in `ls *_minus-one_*`; do a=`basename $i .wav` ;  cp $i ${pathTarget}/drummer_${drummerNumber}_${a}_acc.wav; done

