#!/bin/sh

# getAccompaniments.sh
# 
#
# Created by Georgi Dzhambazov on 7/3/13.
# Copyright 2013 RWTH Aachen. All rights reserved.


pathTarget=/Users/joro/Documents/Linz/RHYTHMIC_14March/ENST-drums-extracted/accompaniment_all_drummers; 



drummerNumber=1;
drummerNumber=2;
drummerNumber=3;

######## get accompaniment audio
pathToAccomp=/Users/joro/Documents/Linz/RHYTHMIC_14March/ENST-drums-public/drummer_${drummerNumber}/audio/accompaniment;
cd $pathToAccomp;

# accomp make mono. for MIDI. change to *_minus-one_* for the other
for i in `ls *MIDI*.wav`; do  a=`basename $i .wav`; sox $i -c 1 ${a}_mono.wav ; done
for i in `ls *_mono*`; do a=`basename $i _mono.wav`; mv $i ${pathTarget}/drummer_${drummerNumber}_${a}_acc.wav; done



####### get drums dry mix 
pathToDrums=/Users/joro/Documents/Linz/RHYTHMIC_14March/ENST-drums-public/drummer_${drummerNumber}/audio/dry_mix;
cd $pathToDrums;

# drums make mono. for MIDI. change to *_minus-one_* for the other
for i in `ls *MIDI*.wav`; do  a=`basename $i .wav`; sox $i -c 1 ${a}_mono.wav ; done
for i in `ls *_mono*`; do a=`basename $i _mono.wav`; mv $i ${pathTarget}/drummer_${drummerNumber}_${a}.wav; done


# mix them in matlab: 
for i in `ls drummer_3*MIDI*s.wav`; do echo $i; done;
#  mix in matlab
#for i=1:11
#mixDrumAndAccompaniment(wavpath, wavs{i});
#end

# make them mono again
cd $pathTarget;
for i in `ls *drummer_3*MIDI*s.wav`; do a=`basename $i .wav`; echo ${a}; sox $i -c 1 ${a}_mono.wav;  mv  ${a}_mono.wav ${a}.wav ; done


####### get annotation 
pathToAnnot=/Users/joro/Documents/Linz/RHYTHMIC_14March/ENST-drums-public/drummer_${drummerNumber}/annotation;
cd $pathToAnnot;

for i in `ls *MIDI*`; do cp $i ${pathTarget}/drummer_${drummerNumber}_${i}; done
for i in `ls *_minus-one_*`; do cp $i ${pathTarget}/drummer_${drummerNumber}_${i}; done




