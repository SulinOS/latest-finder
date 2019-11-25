#!/bin/bash
name=$1
version=$(curl https://ftp.gnu.org/gnu/$name/ | grep -v ".sig\"" | grep -v "latest" | grep "$name-" | tail -n 1 | sed "s/.*href=\"//g" | sed "s/\".*//g")
echo "https://ftp.gnu.org/gnu/$name/$version"
