#!/bin/bash
# Test: Python: Run Network Lists Tests
cd $PYTHON_EXAMPLE_DIR
echo "" > test/error
python network-lists.py > test/output 2> test/error
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