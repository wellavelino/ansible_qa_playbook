#!/bin/bash

# creates bash_profile if doesn't exists
touch ~/.zshrc

#Setting Java Home
echo "export JAVA_HOME=$(/usr/libexec/java_home)" >> ~/.zshrc
