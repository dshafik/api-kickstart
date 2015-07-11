#!/bin/bash
source colors.sh
./edgerc.sh
for SCRIPT in ./enabled/*; 
do
	START_DIR=$(pwd)
	export PYTHON_EXAMPLE_DIR=../examples/python
	TEST=$(grep '# Test: ' $SCRIPT | sed 's/# Test: //')
	printf "${YELLOW}TEST:${RESET} ${TEST}\n"
	echo "========================================================="
	$SCRIPT
	./result.sh $?
	cd $START_DIR
done ;
