#!/bin/bash
# NPM=$NPM_CMD
# NODE=$NODE_EXE

NODE=node
NPM="D:\Program Files (x86)\npm\3.8.6\node_modules\npm\bin\npm-cli.js"

# if [ -z "$NPM" ] 
# then
#   NPM=npm
# fi

# if [ -z "$NODE" ]
# then
#   NODE=node
# fi

echo Using node: "$NODE"
echo Using npm: "$NPM"

echo Using the following node and npm version
"$NODE" -v
node "$NPM" -v

# Ensure strict ssl is turned off. This is an Azure issue.
"$NPM" config set strict-ssl false

echo Installing kajero

# setup kajero
"$NPM" install -g kajero

echo Done installing kajero

# echo Running gulp on kajero

# node_modules/gulp/bin/gulp node_modules/kajero

# echo Done running gulp on kajero

# get all markdown files in the markdown folder.
FILES=./markdown/*.md

# remove output directory
rm -rf generated

# create output directory
mkdir generated

# for each markdown file
for file in $FILES
do
    # get the filename and extension
    filename=$(basename "$file")
    extension="${filename##*.}"
    filename="${filename%.*}"

    # process each file
    echo "Processing markdown file: $file"
    
    # generate html using kajero
    kajero html $file > generated/$filename.html
    
done