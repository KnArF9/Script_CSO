#!/bin/bash



#master!

#Branche user

useradd -m Frank; echo -e "tge243\ntge243" | passwd Frank
echo ' Frank ALL=(ALL)   NOPASSWD:ALL' >> /etc/sudoers


#branche ip

#Pour afficher l'addresse IP avant le login

touch /etc/issue #creation de issue (prelogin)
echo "\4" > /etc/issue #("\4" = adresse ip)

#ssh
echo 'PermitRootLogin no' >> /etc/ssh/sshd_config
echo 'PasswordAuthentication no' >> /etc/ssh/sshd_config
echo 'AllowUsers Frank' >> /etc/ssh/sshd_config
mkdir  /home/Frank/.ssh
touch /home/Frank/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDm1VnAIkhrVTxIEakhaJ0//nu5q/XxNrbifgfipO7jep05Q9HJinxNO5udChfBkXbjP78WBTXRugcu++q84BRARQsTAHdLCBChdjFd2TwaZKJI2MELNdtaN9jPAoufZ39WAh0Dv3VP23jTe008tQ8i3xa0B9wc8ZAccjCwbWxTJEVfpv6FzP6JrU6F6oK+qHWaL+m4IwOIGriJvoytsKonW4nR1GZEApS2BQGEaU33tPqrdigmLlKTQs3Kr+nV1r3B5OCWLDyyZk9WJwtexTl2OFZAkYII/DnWE+wvQlRyvNR0QQJ0hyTBuA60pDk6wShvyr66gLb1I4yBoLRGkQpD farch@XPS15-DE-FRANK
" >> /home/Frank/.ssh/authorized_keys
 