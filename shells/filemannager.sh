#!/bin/bash

addDir() {
    local parent_dir=$1
    local dir_name=$2
    if [ -z "$parent_dir" ] || [ -z "$dir_name" ]; then
        echo "Usage: $0 addDir <parent_path> <dir_name>"
        exit 1
    fi

    if [ ! -d "$parent_dir" ]; then
        echo "Error: Parent directory '$parent_dir' does not exist!"
        exit 1
    fi

    mkdir -p "$parent_dir/$dir_name"
    echo "Directory '$dir_name' created in '$parent_dir'."
}

deleteDir() {
    local parent_dir=$1
    local dir_name=$2
    if [ -z "$parent_dir" ] || [ -z "$dir_name" ]; then
        echo "Usage: $0 deleteDir <parent_path> <dir_name>"
        exit 1
    fi

    if [ ! -d "$parent_dir/$dir_name" ]; then
        echo "Error: Directory '$dir_name' does not exist in '$parent_dir'."
        exit 1
    fi

    rm -rf "$parent_dir/$dir_name"
    echo "Directory '$dir_name' deleted from '$parent_dir'."
}

listFiles() {
    local parent_dir=$1
    if [ -z "$parent_dir" ]; then
        echo "Usage: $0 listFiles <directory>"
        exit 1
    fi

    if [ ! -d "$parent_dir" ]; then
        echo "Error: Directory '$parent_dir' does not exist!"
        exit 1
    fi

    echo "Files in '$parent_dir':"
    find "$parent_dir" -maxdepth 1 -type f
}

# Function to list only directories
listDirs() {
    local parent_dir=$1
    if [ -z "$parent_dir" ]; then
        echo "Usage: $0 listDirs <directory>"
        exit 1
    fi

    if [ ! -d "$parent_dir" ]; then
        echo "Error: Directory '$parent_dir' does not exist!"
        exit 1
    fi

    echo "Directories in '$parent_dir':"
    find "$parent_dir" -maxdepth 1 -type d ! -path "$parent_dir"
}

listAll() {
    local parent_dir=$1
    if [ -z "$parent_dir" ]; then
        echo "Usage: $0 listAll <directory>"
        exit 1
    fi

    if [ ! -d "$parent_dir" ]; then
        echo "Error: Directory '$parent_dir' does not exist!"
        exit 1
    fi

    echo "All contents of '$parent_dir':"
    ls -l "$parent_dir"
}

case "$1" in
    addDir)
        addDir "$2" "$3"
        ;;
    deleteDir)
        deleteDir "$2" "$3"
        ;;
    listFiles)
        listFiles "$2"
        ;;
    listDirs)
        listDirs "$2"
        ;;
    listAll)
        listAll "$2"
        ;;
    *)
        echo "Usage: $0 {addDir|deleteDir|listFiles|listDirs|listAll} <args>"
        exit 1
        ;;
esac

