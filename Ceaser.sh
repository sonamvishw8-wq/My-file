#!/bin/bash

# Caesar Cipher Project
echo "####################################"
echo "  CAESAR CIPHER ENCRYPT / DECRYPT   "
echo "####################################"

echo "1) Encryption"
echo "2) Decryption"
echo -n "Option select karein (1/2): "
read ch

if [ "$ch" -eq 1 ]
then
    echo -n "Encrypt karne ke liye text likhein: "
    read enc
    result=$(echo "$enc" | tr 'a-zA-Z' 'd-za-cD-ZA-C')
    echo "Encrypted text: $result"

elif [ "$ch" -eq 2 ]
then
    echo -n "Decrypt karne ke liye text likhein: "
    read dec
    result=$(echo "$dec" | tr 'd-za-cD-ZA-C' 'a-zA-Z')
    echo "Decrypted text: $result"
else
    echo "Galat option!"
fi
