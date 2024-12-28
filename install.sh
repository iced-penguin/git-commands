#!/bin/bash

for file in git-*; do
    if which "$file" > /dev/null 2>&1; then
        echo "$file is already installed. Skip."
        continue
    else
        echo "Installing $file..."
        chmod +x "$file"
        ln -s $(pwd)/"$file" /usr/local/bin/"$file"
    fi
done