# intellij-api-doc
Unofficial generated API documentation of IntelliJ Community Edition

## Introduction

This repository contains a submodule to the official IntelliJ Community Edition sources and a documentation generator script that will run javadoc on all sources and packages included in IntelliJ Community Edition (excluding test packages)

## Usage

This repository is usually used via [Travis](https://travis-ci.org), but if you want to create the docs locally, clone the repository and run

    bash mkdocs.sh

This should work on all unixoid operating systems. (Tested on Linux and macOS)
