#!/bin/bash
mkdir encoded
files_list=(*.mkv)
mkvmerge -i "${files_list[0]}" | grep Track
echo "Enter audio Track ID:"
read -r audio
echo "Enter default subtitle Track ID:"
read -r sub
# todo: some files don't have subs
for file in *.mkv
do
    mkvmerge -a "$audio" --default-track "$sub" -o "encoded/$file" "$file"
done
