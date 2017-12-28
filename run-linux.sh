#!/bin/bash
docker run -w "/usr/local/src/intellij-api-doc" -v `$PWD`:/usr/local/src/intellij-api-doc openjdk:9 bash mkdocs.sh
