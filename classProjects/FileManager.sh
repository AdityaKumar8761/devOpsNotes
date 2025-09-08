#!/bin/bash

addDir() {
    if [ -z "$1" ] || [ -z "$2" ]; then
        echo "Path or directory name missing."
        exit 1
    fi
    if [ ! -d "$1" ]; then
        echo "Path '$1' does not exist."
        exit 1
    fi
    if [ -d "$1/$2" ]; then
        echo "Directory '$2' already exists in $1."
    else
        mkdir -p "$1/$2"
    fi
}

deleteDir() {
    if [ -z "$1" ] || [ -z "$2" ]; then
        echo "Path or directory name missing."
        exit 1
    fi
    if [ ! -d "$1/$2" ]; then
        echo "Directory '$2' does not exist in $1."
    else
        rm -rf "$1/$2"
    fi
}

listAll() {
    if [ -z "$1" ]; then
        echo "Path missing."
        exit 1
    fi
    if [ ! -d "$1" ]; then
        echo "Path '$1' does not exist."
        exit 1
    fi
    ls -A "$1"
}

listFiles() {
    if [ -z "$1" ]; then
        echo "Path missing."
        exit 1
    fi
    if [ ! -d "$1" ]; then
        echo "Path '$1' does not exist."
        exit 1
    fi
    find "$1" -maxdepth 1 -type f
}

listDirs() {
    if [ -z "$1" ]; then
        echo "Path missing."
        exit 1
    fi
    if [ ! -d "$1" ]; then
        echo "Path '$1' does not exist."
        exit 1
    fi
    find "$1" -maxdepth 1 -type d 
}
input="$1"
addres="$2"
name="$3"
case "$input" in
    addDir) addDir "$addres" "$name" ;;
    deleteDir) deleteDir "$addres" "$name" ;;
    listAll) listAll "$addres" ;;
    listFiles) listFiles "$addres" ;;
    listDirs) listDirs "$addres" ;;
    *)
	echo "the command do not exit here" 
	;;
esac

