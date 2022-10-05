#!/bin/bash
# script for apply patch

input_work_file=$1
input_name_patch=$2
input_patch_mode=$3

let NUM1=1

echo -e "\n====== Making patch by ${input_work_file} ======\n"

git diff

if [ $input_patch_mode -eq $NUM1 ]; then
    git diff > $input_name_patch
fi

git checkout $input_work_file
git apply $input_name_patch

echo -e "\n====== FINAL SCRIPT ======\n"