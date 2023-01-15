#!/bin/sh


writefile=$1
writestr=$2

if [ -z $writefile ]
then 
    echo "File Path is not specified."
    exit 1
elif [ -z $writestr ]
then    
    echo "String is not specfied"
    exit 1
else
    directory=$(dirname "$writefile")    
    mkdir -p ${directory} && touch ${writefile}
    echo ${writestr} > ${writefile}
    exit 0
fi




