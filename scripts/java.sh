#!/bin/bash

# creates bash_profile if doesn't exists
touch ~/.zshrc

# Adds jdk changer method to zshrc.sh
echo "jdk() {
        version=$1
        export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
        java -version
 }" >>  ~/.zshrc

#Setting Java Home
echo "export JAVA_HOME=$(/usr/libexec/java_home)" >> ~/.zshrc
