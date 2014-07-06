#!/bin/sh

# makeWavFilesMono.sh
# 
#
# Created by Georgi Dzhambazov on 7/17/13.
# Copyright 2013 RWTH Aachen. All rights reserved.

cd <orig dir ENST public>

for i in `ls *MIDI*.wav`; do  a=`basename $i .wav`; sox $i -c 1 ${a}_mono.wav ; done

mv *_mono* . ../../../../ENST-drums-extracted/accompaniment_all_drummers/
