#!/bin/bash

# creates bash_profile if doesn't exists
touch ~/.bash_profile

#Setting Java Home
echo "export JAVA_HOME=$(/usr/libexec/java_home)" >> ~/.bash_profile
