#! /bin/sh
FILE=./teapot

if [ -f "$FILE" ];
then exit 1
else touch teapot
    exit 0
fi

