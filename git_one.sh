#! /bin/bash

#install git for ubuntu 16.04
apt-get install git-core > ~/autom/git.log

#installed git
git --version
if [ $? == 0 ]
then
        echo "installation is successful"
else
        echo " installation is not successful"
fi
