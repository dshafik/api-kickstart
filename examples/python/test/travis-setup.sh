#!/usr/bin/env bash
SCRIPT_PATH=`dirname $(realpath $0)`
cd $SCRIPT_PATH/../
apt-get install --yes python python3
cd tools
$BIN setup.py install
cd ..