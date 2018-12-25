#!/bin/bash 

echo "##### Begin Installation of nvm & Node #####"

scp -rp /home/ubuntu/one/nvm_node.sh ubuntu@ip-172-31-29-166:~/
ssh  ubuntu@ip-172-31-29-166 '(ls -lrt ~/nvm_node.sh)'
ssh  ubuntu@ip-172-31-29-166 '(bash ~/nvm_node.sh)'
sleep 10
ssh  ubuntu@ip-172-31-29-166 '(cat ~/autom/nvm.log)'

echo "##### Begin Installation of GIT #####"

scp -rp /home/ubuntu/one/git_one.sh ubuntu@ip-172-31-29-166:~/
ssh  ubuntu@ip-172-31-29-166 '(ls -lrt ~/git_one.sh)'
ssh  ubuntu@ip-172-31-29-166 '(bash ~/git_one.sh)'
sleep 10
ssh  ubuntu@ip-172-31-29-166 '(cat ~/autom/git.log)'


echo "##### Begin Installation of Docker #####"

scp -rp /home/ubuntu/one/docker_one.sh ubuntu@ip-172-31-29-166:~/
ssh  ubuntu@ip-172-31-29-166 '(ls -lrt ~/docker_one.sh)'
ssh  ubuntu@ip-172-31-29-166 '(bash ~/docker_one.sh)'
sleep 10
ssh  ubuntu@ip-172-31-29-166 '(cat ~/autom/docker.log)'

