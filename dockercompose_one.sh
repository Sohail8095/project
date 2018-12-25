#! /bin/bash

version="1.18.0"

#install docker compose for ubuntu for $version
sudo curl -L https://github.com/docker/compose/releases/download/$version/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose > ~/autom/dockercompose.log

#set the permissions
sudo chmod +x /usr/local/bin/docker-compose

#echo "$?"
docker-compose --version >> ~/autom/dockercompose.log
if [ $? == 0 ]
then
        echo "installation is successfull"
else
        echo "not installed"
fi

