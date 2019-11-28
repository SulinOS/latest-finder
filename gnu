#!/bin/bash
name=$1
if [ "$2" != "" ]
then
    name2=$2
else
    name2=$1
fi
version=$(curl https://ftp.gnu.org/gnu/$name/?C=M\;O=A | grep -v ".sig\"" | grep -v "latest" | grep -v "bin" | grep -v "woe32"  | grep -v "windows" | grep -v "folder.gif" | grep "$name2-" | tail -n 1 | sed "s/.*href=\"//g" | sed "s/\".*//g")
echo "https://ftp.gnu.org/gnu/$name/$version"
