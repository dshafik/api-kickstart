#!/bin/bash
# Test: Python: Property Manager Get Meta Test
cd $PYTHON_EXAMPLE_DIR
whoami
python papi_get_meta.py --verbose
exit $?