# Automating Installation of Below Software Packages

## ->Docker 18.06
we have to give the initials for the installation used in yhe script such as

red="$(tput setaf 1)"

green="$(tput setaf 2)"

blue="$(tput setaf 4)"

reset="$(tput sgr0)"

bold="$(tput bold)"

# Old Versions

to uninstall old if it is present then run this command
```console
sudo apt-get remove docker docker-engine docker.io
```

# Update

to update ubuntu after removing the older version (if present)

```console
sudo apt-get update

sudo apt-get libcurl4
```
# Installing

To install a package we have to allow apt to use a repository over HTTPS

```console
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
```

we have to add docker offical GPG key from the offical docker url for ubuntu

```console
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

to verify if the downloaded key is present or not

```console
sudo apt-key fingerprint 0EBFCD88
```

we have to add a repository by using this key for the furthur process

```console
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
```

Now again update the ubuntu

```console
sudo apt-get update
```

After completion of this finally run the installation command

```console
sudo apt-get install docker-ce

apt-cache madison docker-ce
```

To define the version of Docker, which has to be installed in ubuntu

```console
sudo apt-get install docker-ce=18.06.0~ce~3-0~ubuntu .
```

Finally check if the Docker is successfully installed or not

```console
docker --version
```
