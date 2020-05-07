#!/bin/bash

#!/bin/bash
#
# Test the JMeter Docker image using a trivial test plan.

# Example for using User Defined Variables with JMeter
# These will be substituted in JMX test script
# See also: http://stackoverflow.com/questions/14317715/jmeter-changing-user-defined-variables-from-command-line
export TARGET_HOST="www.map5.nl"
export TARGET_PORT="80"
export TARGET_PATH="/kaarten.html"
export TARGET_KEYWORD="Kaartdiensten"

T_DIR=${PWD}/tests/trivial

cat  ${T_DIR}/test-plan.jmx

