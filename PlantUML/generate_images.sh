#!/usr/bin/env bash

echo "Checking prerequisites..."
command plantuml -version > /dev/null 2>&1
[[ $? != 0 ]] && echo "You need to install plantuml to run this program. For arch: sudo pacman -S plantuml" && exit 1

echo "Generating PNG images from diagrams..."
plantuml *.puml

echo "Done."