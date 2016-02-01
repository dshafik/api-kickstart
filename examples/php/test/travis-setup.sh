#!/usr/bin/env bash
SCRIPT_PATH=`dirname $(realpath $0)`
cd $SCRIPT_PATH/../
apt-get install --yes php5 php5-curl curl
curl -sS https://getcomposer.org/installer | php
php composer.phar install --prefer-source