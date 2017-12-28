#!/bin/bash

cd intellij-community
git checkout master
git pull

cd ..

docker run -w "/usr/local/src/intellij-api-doc" -v $PWD:/usr/local/src/intellij-api-doc openjdk:9 bash mkdocs.sh
