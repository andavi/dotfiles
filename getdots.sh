#!/bin/sh
# get dofiles from system into repo

os=$(uname)

if [ "$os" = "Darwin" ]
then
    ./helpers/mac-getdots.sh
elif [ "$os" = "Linux" ]
    ./helpers/lnx-getdots.sh
else
    echo "Something went wrong"
    exit 1
fi
then
echo "Success"
exit 0
