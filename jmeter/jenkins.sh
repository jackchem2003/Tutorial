#!/bin/bash
echo "### Running JMeter performance test ###"

# Clear out old results
rm $WORKSPACE/jmeter.jtl

# Run the tests
echo "## Running the tests"
cd "$WORKSPACE/jmeter"

jmeter -n -t test_plan.jmx -l $WORKSPACE/jmeter.jtl -p user.properties
