#!/bin/sh

for file in `cat files`
do
    cp .$file ~/.$file
    echo "Copied .$file to ~/.$file"
done
echo "Done"

