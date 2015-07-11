#!/bin/bash
source colors.sh
./edgerc.sh
RETURN=0
for SCRIPT in ./enabled/*; 
do
	START_DIR=$(pwd)
	export PYTHON_EXAMPLE_DIR=../examples/python
	TEST=$(grep '# Test: ' $SCRIPT | sed 's/# Test: //')
	printf "${YELLOW}TEST:${RESET} ${TEST}\n"
	echo "========================================================="
	$SCRIPT
	RESULT=$?
	./result.sh $RESULT
	cd $START_DIR
	if [[ ! $RESULT -eq 0 ]]
	then
		RETURN=1
	fi
done;
exit $RETURN