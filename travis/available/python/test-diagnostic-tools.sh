#!/bin/bash
# Test: Python: Diagnostic Tools Test
cd $PYTHON_EXAMPLE_DIR
echo "" > test/error
python diagnostic_tools.py > test/output 2> test/error
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