#!/usr/bin/env bash

function InstallDotFiles() {
    # Ask for the administrator password upfront
    sudo -v

    chmod a+x install/*.sh

    # Keep-alive: update existing `sudo` time stamp until the script has finished
    while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


    # Run sections based on command line arguments
    for ARG in "$@"
    do
        if [ $ARG == "osxprep" ] || [ $ARG == "all" ]; then
            # Run the osxprep.sh Script
            echo "------------------------------"
            echo "Updating OSX and installing Xcode command line tools"
            echo "------------------------------"
            ./xcode.sh
        fi
        if [ $ARG == "brew" ] || [ $ARG == "all" ]; then
            # Run the brew.sh Script
            # For a full listing of installed formulae and apps, refer to
            # the commented brew.sh source file directly and tweak it to
            # suit your needs.
            echo ""
            echo "------------------------------"
            echo "Installing Homebrew along with some common formulae and apps."
            echo "This might awhile to complete, as some formulae need to be installed from source."
            echo "------------------------------"
            echo ""
            ./brew.sh
        fi
        if [ $ARG == "android" ] || [ $ARG == "all" ]; then
            # Run the android.sh Script
            echo "------------------------------"
            echo "Setting up Java and  Android development environment."
            echo "------------------------------"
            ./android.sh
        fi
        if [ $ARG == "QA" ] || [ $ARG == "all" ]; then
            # Run the qa.sh Script
            echo "------------------------------"
            echo "Setting up QA development environment."
            echo "------------------------------"
            ./qa.sh
        fi
        if [ $ARG == "work" ] || [ $ARG == "all" ]; then
            # Run the work.sh Script
            echo "------------------------------"
            echo "Setting up work fun environment."
            echo "------------------------------"
            echo ""
            ./work.sh
        fi
    done

    echo "------------------------------"
    echo "Completed running .dots, restart your computer to ensure all updates take effect"
    echo "------------------------------"
}

read -p "This script may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    InstallDotFiles $@
fi;

unset InstallDotFiles;
