
# **************************************************************************
# Author : Syed Sohail Ahmad 
# 
# This script will install nvm, node, Docker, Docker Compose, GIT and OpenSSL
# over ssh to the defined hostname and confirms the succesful installation
# See https://github.com/Sohail8095/project for child scripts
# **************************************************************************


#!/usr/bin/env sh

homepath="/home/ubuntu/one"
username="ubuntu"
hostname="ip-172-31-29-166"

foo() {
    scp -rp $homepath/$1 $username@$hostname:~/
    ssh  $username@$hostname '(ls -lrt ~/$1)'
    ssh  $username@$hostname '(bash ~/$1)'
    sleep 5
    ssh  $username@$hostname '(cat ~/autom/$2)' 


}
echo "##### Begin Installation of nvm & Node #####"
foo nvm_node.sh nvm.log

echo "##### Begin Installation of GIT #####"
foo git_one.sh git.log

echo "##### Begin Installation of Docker #####"
foo docker_one.sh docker.log

echo "##### Begin Installation of Docker Compose #####"
foo dockercompose_one.sh dockercompose.log

echo "##### Begin Installation of Open SSL #####"
foo openssl_one.sh openssl.log


