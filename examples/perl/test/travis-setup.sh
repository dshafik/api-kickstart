#!/usr/bin/env bash
SCRIPT_PATH=`dirname $(realpath $0)`
cd $SCRIPT_PATH/../
apt-get install --yes perl
cpan -i Akamai::Edgegrid