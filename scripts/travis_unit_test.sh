#!/bin/bash

#Run unit test in Windows, Linux and macOS


#----------- check for Windows, Linux and macOS build
if [ "$TRAVIS_OS_NAME" = "linux" ]
then

  #wine = windows
  if [ "$LAZ_ENV" = "wine" ]
  then

  #windows
  enduser/tracker_editor_test.exe -a --format=plain

  # Will exit with status of last command.
  exit

  else

  #linux
  enduser/tracker_editor_test -a --format=plain

  # Will exit with status of last command.
  exit

  fi

elif [ "$TRAVIS_OS_NAME" = "osx" ]
then
  #macOS
  enduser/tracker_editor_test -a --format=plain

  # Will exit with status of last command.
  exit

fi

echo "Unit test ready"
