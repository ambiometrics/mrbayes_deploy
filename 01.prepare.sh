#!/bin/sh
#This instructions are based on the README at following location https://nbisweden.github.io/MrBayes/download.html

rm -rf sources
mkdir sources && cd sources

#Download the latest releasea from https://github.com/stephaneguindon/phyml/releases
wget -O mrbayes.tar.gz https://github.com/NBISweden/MrBayes/archive/v3.2.7a.tar.gz

rm -rf mrbayes
mkdir mrbayes
tar xfvz mrbayes.tar.gz -C mrbayes --strip-components 1

#prepare directory
cd mrbayes

./configure
make

cd ../..
rm -rf release
mkdir release
cp sources/mrbayes/src/mb release


