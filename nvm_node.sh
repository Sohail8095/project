#!/bin/bash
version="8.12.0"
nvm_version="v0.33.2"
cd ~/
mkdir autom
cd autom
# install nvm, for example version $nvm_version
wget https://raw.githubusercontent.com/creationix/nvm/$nvm_version/install.sh


bash install.sh > ~/autom/nvm.log

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

# list installed versions of NodeJS locally
nvm ls | grep  "$version"


#echo "$? "
if [ $? -eq  0 ]
then
        echo "Successfully Found the version LOCALLY"

else
        echo "The requested version is not found locally"
fi

# list available versions of NodeJS remotely
nvm ls-remote | grep  "$version"

if [ $? == 0 ]
then
        echo "Successfully Found the version REMOTELY"

else
        echo "The requested version is not found remotely"
fi



# install NodeJS, for example version $version
echo "######## NVM INSTALLING ######## "  >> ~/autom/nvm.log
nvm install $version  >> ~/autom/nvm.log

if [ $? == 0 ]
then
        echo "Successfully installed the nvm $version"

else
        echo "Failed the installation"
fi

# use installed version of NodeJS, for example $version
nvm use $version  >> ~/autom/nvm.log


