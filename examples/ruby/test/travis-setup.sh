#!/usr/bin/env bash
SCRIPT_PATH=`dirname $(realpath $0)`
cd $SCRIPT_PATH/../
apt-get install --yes ruby gem
gem install akamai-edgegrid