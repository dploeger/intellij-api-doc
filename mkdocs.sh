#!/bin/bash

echo "Finding packages (excluding test packages)"

PACKAGES=`find intellij-community -name *.java | grep -v "test" | grep -v "\.idea" | xargs -n 1 -I '{}' grep -E "^package.*;$" '{}' | sed -Ee "s/^package ([^;]*);$/\1/g" | sort | uniq | paste -s -d ":" - 2>/dev/null` 

echo "Finding source paths"

SRCPATH=`find intellij-community -name src | paste -s -d ":" - 2>/dev/null`

echo "Cleaning docs"

rm -rf docs &>/dev/null

echo "Generating JavaDoc"

javadoc -quiet -d docs -sourcepath ${SRCPATH} -subpackages ${PACKAGES} 
