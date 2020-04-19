#!/bin/bash
# download the latest release of the bedrock server

curl -s https://www.minecraft.net/en-us/download/server/bedrock/ |
    grep zip | grep linux |
    grep -o '"[^"]*"' | head -1 |
    grep -o '[^"]*' | tee /tmp/bedlink.txt

wget -O bedrock.zip "$(cat /tmp/bedlink.txt)"
unzip bedrock.zip
rm bedrock.zip
