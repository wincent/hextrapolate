#!/bin/sh
#
# RunAllTests.sh
# Hextrapolate
#
# Created by Wincent Colaiuta on 8 April 2007.
# Copyright 2007 Wincent Colaiuta.
# $Id: RunAllTests.sh 88 2007-04-24 18:27:24Z wincent $

#
# Functions
#

check_error_status()
{
  ERR=$?
  if [ $ERR -ne 0 ]; then
    FAILURE=$ERR
  fi
}

#
# Main
#

set -e

STARTING_DIRECTORY=`/bin/pwd`
builtin echo "Saved current working directory: ${STARTING_DIRECTORY}"

SCRIPT_DIRECTORY=$(/usr/bin/dirname "$0")
builtin echo "Changing to script directory: ${SCRIPT_DIRECTORY}"
cd "${SCRIPT_DIRECTORY}"
SCRIPT_DIRECTORY=$(/bin/pwd)
builtin echo "Script directory with symlinks resolved: ${SCRIPT_DIRECTORY}"

builtin echo "Starting running test scripts from frameworks"

set +o errexit
../Frameworks/WOTest.Framework/Resources/RunTests.sh
check_error_status
#../Frameworks/WOBezel.Framework/Resources/RunTests.sh
#check_error_status
../Frameworks/WODebug.Framework/Resources/RunTests.sh
check_error_status
#../Frameworks/WOHotKey.Framework/Resources/RunTests.sh
#check_error_status
set -e

builtin echo "Finished running test scripts for frameworks"

TEST_FRAMEWORK="WOTest.framework"
TEST_BUNDLE="${SCRIPT_DIRECTORY}/HextrapolateTests.bundle"

if [ "${WOTestInjectBundle}" != "" ]; then
  SAVE_WOTestInjectBundle=`declare -p WOTestInjectBundle`
  builtin echo "Saved old WOTestInjectBundle: ${SAVE_WOTestInjectBundle}"
else
  SAVE_WOTestInjectBundle=""
fi
export WOTestInjectBundle="${TEST_BUNDLE}"
builtin echo "WOTestInjectBundle set to ${WOTestInjectBundle}"

if [ "${DYLD_INSERT_LIBRARIES}" != "" ]; then
  SAVE_DYLD_INSERT_LIBRARIES=`declare -p DYLD_INSERT_LIBRARIES`
  builtin echo "Saved old DYLD_INSERT_LIBRARIES: ${SAVE_DYLD_INSERT_LIBRARIES}"
else
  SAVE_DYLD_INSERT_LIBRARIES=""
fi
export DYLD_INSERT_LIBRARIES="${SCRIPT_DIRECTORY}/../Frameworks/${TEST_FRAMEWORK}/WOTest"
builtin echo "DYLD_INSERT_LIBRARIES set to ${DYLD_INSERT_LIBRARIES}"

builtin echo "Starting running tests for main application"
builtin echo "Launching executable"

set +o errexit
"../MacOS/Hextrapolate"
check_error_status
set -e

builtin echo "Restoring old DYLD_INSERT_LIBRARIES"
eval "${SAVE_DYLD_INSERT_LIBRARIES}"

builtin echo "Restoring old WOTestInjectBundle"
eval "${SAVE_WOTestInjectBundle}"

builtin echo "Returning to old working directory"
cd "${STARTING_DIRECTORY}"

if [ $FAILURE ]; then
  exit $FAILURE
else
  exit 0
fi
