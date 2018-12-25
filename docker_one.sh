#!/bin/sh


#to produce colored output in STDOUT
red="$(tput setaf 1)"
green="$(tput setaf 2)"
blue="$(tput setaf 4)"
reset="$(tput sgr0)"
bold="$(tput bold)"

#remover the old versions of a docker
sudo apt-get remove docker docker-engine docker.io > ~/autom/docker.log
echo '$green $bold Uninstalled the old versions of docker. $reset'

sudo apt-get update >> ~/autom/docker.log
echo '$blue $bold updated the apt package. $reset'  

sudo apt-get libcurl4 >> ~/autom/docker.log
#Installing packages to allow apt to use a repository over HTTPS
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

#Adding Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - >> ~/autom/docker.log

echo '$green $bold Verifying that you now have the key with the fingerprint $reset'
sudo apt-key fingerprint 0EBFCD88 >> ~/autom/docker.log


sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" >> ~/autom/docker.log

echo '$green $bold ubuntu installation $reset'

sudo apt-get update >> ~/autom/docker.log
echo '$green $bold updated the apt $reset'

echo '$blue $bold Installing the docker-ce version the ubuntu $reset'
sudo apt-get install docker-ce >> ~/autom/docker.log

apt-cache madison docker-ce >> ~/autom/docker.log

#### Defining the version i.e. 18.06.0 #### 
sudo apt-get install docker-ce=18.06.0~ce~3-0~ubuntu . >> ~/autom/docker.log

##### Check Installation ##### 
docker --version  >> ~/autom/docker.log

if [ $? == 0 ]
then
        echo "Successfully installed the Docker"

else
        echo "Failed the Docker installation"
fi
