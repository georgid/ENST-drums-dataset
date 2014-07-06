#!/bin/sh

# etractSpectralFlux.sh
# 
#
# Created by Georgi Dzhambazov on 7/3/13.
# Copyright 2013 RWTH Aachen. All rights reserved.

cd /Users/joro/Documents/Linz/RHYTHMIC_14March/ENST-drums-extracted/accompaniment_all_drummers;
for i in `ls *.wav`; do a=`basename $i .wav`   ; if [ ! -f ${a}.onsets.multiflux  ]; then python /Users/joro/Documents/Linz/RHYTHMIC_14March/RHYTHMIC/onset_program_multiband.py   $i -s -v  ; fi ; done


