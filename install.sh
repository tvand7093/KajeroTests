#!/bin/bash



if [ -n $NPM_CMD ] 
then
  NPM_CMD = npm
fi

if [ -n $NODE_EXE ]
then
  NODE_EXE = node
fi

echo Using the following node and npm version
$NODE_EXE -v
$NPM_CMD -v

# Ensure strict ssl is turned off. This is an Azure issue.
$NPM_CMD config set strict-ssl false

echo Installing kajero

# setup kajero
$NPM_CMD install node_modules/kajero 

echo Done installing kajero

echo Running gulp on kajero

node_modules/gulp/bin/gulp node_modules/kajero

echo Done running gulp on kajero

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