#!/bin/bash

defaults write -g ApplePressAndHoldEnabled -bool false

# Various Xcode folders
/Applications/Xcode.app/Contents/Developer/Documentation/DocSets/
~/Library/Caches/com.apple.dt.Xcode/

# Port Limits
sudo sysctl -w net.inet.tcp.msl=1000
