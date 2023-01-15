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
    for FILE in *;
    do
        cat $FILE | grep "${searchstr}";
    done 
    exit 0
fi

