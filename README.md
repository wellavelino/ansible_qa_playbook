# This repository will be moved to brew soon in a different branch, for brew usaged checkout brewFormula branch



# ANSIBLE QA PLAYBOOK

The repository name is a analogy to a popular speach "Short Arm" like a Trex.

Why waste time with configuration when you just need to do it once?
I hate waste my time doing repetitive stuff, so if you need to keep CI machines up and running with latest versions
you need to change machines constantly this is what you need!

I would say that the best feature is to update xcode just by running command line :)

How does it works?


## Necessary manual steps

- git SSH key configuration
- Java installation you'll be asked for the machine password
- Manually change your apple_id on ios-setup.yml given some limitations with Pexpect 
  ```
   'Password \(for your email here\):'
  ```
   
## Ansible Cheat Sheet:


 - -i means inventory, it tells ansible that we would like to use our inventory to load hosts
 -  -e means extra-vars, it tells ansible that we're sending extra vars to be used
 - -l selects sub-module for hosts 


## Usage
Clone this repository 

```
git@github.com:wellavelino/ansible_qa_playbook.git
```

Ansible documentation 

```
https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#latest-releases-via-pip
```

If you already have Pyton and pip installed on your machine just run the command below:

```
pip install --user ansible
```

## Configuration
You have to add your current user to the /scrips/android.sh file to install and create properly the dependencies.

Open default.config.yml and add or remove your cask/brew packages.
Also change the desired xcode version to install and Android system images.

In that same file you need to update the following variables:

the downside is that if your account has 2FA enabled it might won't work, if would like, submit a issue and i'll see to implement it.


```
apple_id: your apple id
apple_password: your password

```



## Running it locally 

```
platform playbook could be android-playbook.yml or ios-playbook.yml

ansible-playbook {platform-playbook.yml} -i hosts -l localhost"
```

If you would like you can make use of tags to run specifically tasks e.g

```
- name: check bash already configured
  stat:
    path: ~/.bash_profile
  register: "bash_profile"
  tags:
  - configuration

```

you could run it like

```
ansible-playbook {platform-playbook.yml} -i hosts -l localhost --tags "configuration"
```


# Next steps

- Cron jobs
- Health check 
- Add more macOS configuration
- 2FA login on apple store 
