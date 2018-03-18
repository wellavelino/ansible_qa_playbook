[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

 if [ -f /usr/local/share/gitprompt.sh ]; then
    GIT_PROMPT_THEME=Default
    . /usr/local/share/gitprompt.sh
  fi

export ANDROID_HOME=/Users/wellingtonsantos/Library/Android/sdk
export PATH+=:$ANDROID_HOME/bin
export PATH+=:$ANDROID_HOME/tools/
export PATH+=:$ANDROID_HOME/platform-tools/
export PATH+=:$ANDROID_HOME/lib/
export PATH+=:$ANDROID_HOME/emulator/
export PATH+=:$ANDROID_HOME/tools/lib
export PATH+=:/Applications/Genymotion.app/Contents/MacOS/
export PATH+=:/usr/local/share/npm/bin/grunt
export PATH=$PATH:/opt/gradle/gradle-3.5/bin
export GRADLE_HOME=/usr/local/Cellar/gradle/3.5/
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home

eval "$(rbenv init -)"

export PATH="$HOME/.rbenv/bin:$PATH"
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/wellington/.sdkman"
[[ -s "/Users/wellington/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/wellington/.sdkman/bin/sdkman-init.sh"
