#!/usr/bin/env bash

for i in sorted*-*.json; do
    echo $i
    python ../multiCoreHateSpeech.py -i $i
    continue
done
