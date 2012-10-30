#!/bin/sh

for file in `cat files`
do
    cp .$file ~/.$file
done

