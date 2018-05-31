#!/bin/bash

rm -rf release

echo "Building dns2tcp client for Android"
ndk-build # replace this with your ndk-build location if necessary

for p in armeabi-v7a arm64-v8a x86 x86_64; do
	mkdir -p release/$p
	cp libs/$p/dns2tcp release/$p/
done

echo "Done! dns2tcp binary can be found at release folder"
rm -rf {libs/,obj/}
