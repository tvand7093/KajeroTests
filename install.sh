#!/bin/bash
NPM=$NPM_JS_PATH
NODE=$NODE_EXE
AZURE=1

if [ -z "$NPM" ] 
then
  NPM=npm
  AZURE=0
fi

if [ -z "$NODE" ]
then
  NODE=node
  AZURE=0
fi

echo Using node at path: "$NODE"
echo Using npm at path: "$NPM"
echo Is Azure Mode: $AZURE

echo Using node version
"$NODE" -v

FULL_NPM="npm"

if [ $AZURE -eq 1 ]
then
  # not azuer, so use local npm
  FULL_NPM=`node "$NPM"`
fi

echo Using npm version
eval $FULL_NPM -v

# Ensure strict ssl is turned off. This is an Azure issue.
eval $FULL_NPM config set strict-ssl false

echo Installing kajero

# setup kajero
eval $FULL_NPM install -g kajero

echo Done installing kajero

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