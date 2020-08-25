#!/bin/bash

function ws() {
    if [ $# != 2 ]; then
        echo "Usage: FOLDER_NAME [LANGUAGE: c, c++, py]"
    else
        mkdir /tmp/$1
        cd /tmp/$1

        if [ $2 = "py" ]; then
            cp $HOME/ws/main.py ./main.py
            cp $HOME/ws/clean ./clean
            vim main.py
        elif [ $2 = "c" ]; then
            cp $HOME/ws/main.c ./main.c
            cp $HOME/ws/CMakefile ./Makefile
            cp $HOME/ws/clean ./clean
            vim main.c
        elif [ $2 = "c++" ]; then
            cp $HOME/ws/main.cpp ./main.cpp
            cp $HOME/ws/CppMakefile ./Makefile
            cp $HOME/ws/clean ./clean
            vim main.cpp
        fi
    fi
}

function wsr() {
    ws $RANDOM $1
}

function go_home() {
    cd $HOME
}
