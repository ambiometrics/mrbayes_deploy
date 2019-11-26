#!/bin/sh
#Instructions from https://github.com/stephaneguindon/phyml

rm -rf sources
mkdir sources && cd sources

#Download the latest releasea from https://github.com/NBISweden/MrBayes/releases
wget -O mrbayes.zip https://github.com/NBISweden/MrBayes/releases/download/v3.2.7/MrBayes-3.2.7-WIN.zip

unzip mrbayes.zip

#prepare directory
mv MrBayes-3.2.7-WIN mrbayes

cd ..

rm -rf release
mkdir release
cp sources/mrbayes/bin/mb.3.2.7-win64.exe release/mb.exe


