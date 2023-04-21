#!/bin/sh

filesdir=$1
searchstr=$2

if [ -z $filesdir ] || [ -z $searchstr ]
then
    echo "File Path or search string is not specified."
    exit 1
elif [ ! -d $filesdir ]
then 
    echo "${filesdir} not a directory."
    exit 1
else
    cd $filesdir
    declare -i fileCounter=0
    declare -i countLines=0
    for FILE in *;
    do
        ((fileCounter++))
        countLines+=$(cat $FILE | grep -c "${searchstr}");
    done 
    echo "The number of files are ${fileCounter} and the number of matching lines are ${countLines}"
    exit 0
fi

