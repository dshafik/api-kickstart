#!/bin/bash
# Test: Python: Run CCU (purge) Test
cd $PYTHON_EXAMPLE_DIR
echo "" > test/error
python ccu.py > test/output 2> test/error
if [[ ! $? -eq 0 ]]
then
	exit $?
fi
if [[ !-s test/error ]]
then
	exit -1
else
	exit $?
fi