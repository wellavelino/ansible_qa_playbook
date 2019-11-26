# UNDER UPDATE

# Dot Trex Files

#### The repository name is a analogy to a popular speach "Short Arm" like a Trex.

This [article](https://codingcraft.com.br/2016/09/23/o-famigerado-t-rex-profissional)(Portuguese) written by @cigano explain a little bit about that.


# Those scripts only work with MacOS


## Scripts avalible

* Android environment
* QA tools
* Ruby and Rbenv
* Default utilities
* Java 


## Usage

Clone this repository

```
https://github.com/wellavelino/dot_trex_files.git
```

### Configuration

You have to add your current user to the /install/android.sh file to install and create properly the
dependencies.

```
# example
# ANDROID_HOME="/Users/yourCurrentUser/Library/Android/sdk"
```

### Execute the installation file

Example:

````
./installation.sh all (for all configuration)

````

or 

````
./installation.sh android (for a specific configuration)
````

# Note
I didn't found a solution to install Xcode using the command line so, you have to install
Xcode manually.


# Next steps

- Add configuration to the casks installations
- Reorganize the git setup
- Add ssh to git
- Improve Xcode installation 
- Add some Mac configuration
  - Delete unseless mac apps
  - Configure the enviroenment 
- Configure and install maven

