#!/bin/sh

echo "Downloading PocketBase..."

wget https://github.com/pocketbase/pocketbase/releases/download/v0.22.0/pocketbase_0.22.0_linux_amd64.zip

unzip pocketbase_0.22.0_linux_amd64.zip

chmod +x pocketbase

echo "Starting PocketBase..."

./pocketbase serve --http=0.0.0.0:$PORT --dir=/pb_data
