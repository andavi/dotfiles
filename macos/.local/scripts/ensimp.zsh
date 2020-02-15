#!/bin/zsh

# script that encrypts a file with a password
# uses aes 256 via openssl

openssl enc -in $1 -aes-256-cbc -pass stdin > $1.enc

