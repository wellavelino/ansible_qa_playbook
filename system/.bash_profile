[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

 if [ -f /usr/local/share/gitprompt.sh ]; then
    GIT_PROMPT_THEME=Default
    . /usr/local/share/gitprompt.sh
  fi

export ANDROID_HOME=~/Library/Android/sdk
export PATH+=:$ANDROID_HOME/bin
export PATH+=:$ANDROID_HOME/tools/
export PATH+=:$ANDROID_HOME/platform-tools/
export PATH+=:$ANDROID_HOME/lib/
export PATH+=:$ANDROID_HOME/emulator/
export PATH+=:$ANDROID_HOME/tools/lib
#export PATH=$PATH:/opt/gradle/gradle-3.5/bin
#export GRADLE_HOME
export JAVA_HOME=$(/usr/libexec/java_home)

eval "$(rbenv init -)"

export PATH="$HOME/.rbenv/bin:$PATH"
