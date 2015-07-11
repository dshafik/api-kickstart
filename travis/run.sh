#!/bin/bash
source colors.sh
./edgerc.sh
for SCRIPT in ./enabled/*; 
do
	TEST=$(grep '# Test: ' $SCRIPT | sed 's/# Test: //')
	printf "${YELLOW}TEST:${RESET} ${TEST}\n"
	echo "========================================================="
	$SCRIPT
	./result.sh $?
done ;
