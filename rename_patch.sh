#!/bin/bash

old_name=$1
new_name=$2
patch_name="Rename_BCD.patch"

echo -e $patch_name

template="diff --git a/${old_name} b/${new_name}\n\
similarity index 100%\n\
rename from ${old_name}\n\
rename to ${new_name}"

touch $patch_name
echo -e $template>$patch_name

git apply $patch_name