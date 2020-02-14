#!/bin/zsh

# script that dencrypts a file with a password
# uses aes 256 via openssl

F=$1
openssl enc -in $1 -d -aes-256-cbc -pass stdin > ${F:0:${#F}-4}

