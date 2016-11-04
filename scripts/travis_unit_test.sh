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

  else

  #linux
  enduser/tracker_editor_test -a --format=plain

  fi

elif [ "$TRAVIS_OS_NAME" = "osx" ]
then
  #macOS
  cd enduser

  #start the unit test
  tracker_editor_test -a --format=plain

  cd ..

fi

echo "Unit test ready"
