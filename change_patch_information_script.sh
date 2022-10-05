#!/bin/bash
# change patch information (rename or modify the route)

input_word_old=$1
input_word_new=$2
input_patch=$3

if grep $input_word_old $input_patch -q
    then
        sed -i "s|$input_word_old|$input_word_new|g" $input_patch
        echo "Changing $input_word_old for $input_word_new, and rename the parch name"
    else
        echo "The word: $input_word_old doesn't exist"
        exit 
fi