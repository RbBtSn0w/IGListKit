#!/bin/bash

cd "$(dirname "$(dirname "$0")")" || exit 1

exec plutil -extract CFBundleShortVersionString xml1 -o - "$(pwd)/Source/Info.plist" | sed -n "s/.*<string>\(.*\)<\/string>.*/\1/p"
