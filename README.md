# intellij-api-doc
Unofficial generated API documentation of IntelliJ Community Edition

## Introduction

This repository contains a submodule to the official IntelliJ Community Edition sources and a documentation generator script that will run javadoc on all sources and packages included in IntelliJ Community Edition (excluding test packages)

## Usage

This repository is usually used via [Travis](https://travis-ci.org), but if you want to create the docs locally, clone the repository and run

    bash mkdocs.sh

This should work on all unixoid operating systems. (Tested on Linux with OpenJDK9 and macOS with Oracle JDK 8)

If you'd like to use the same environment travis uses, you can run the build in a docker container. For linux (or nodes, that support native docker), run: `bash run-linux.sh`. For macOS nodes, [docker-sync](http://docker-sync.io/) can be used to speed up performance. Use `bash run-macos.sh` there.
