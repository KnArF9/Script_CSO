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
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3nu1KA4tWw5csG5vvE4ABbl9U9cMpMcdGf4gSw2MT4nFtG3cTjQONOECEhJEbfU6zeHN6Z6kl2ncA0f2X7+6+si0WEZMuzMkKntAbiNh8cHtm7lJNUppvBXA707LnS1nU734VBJB6yw0O6VGkPZL3/2Z4jSeEpsl67URRnWvrkr4Vwecry7HbRtceFIDGCwoJsodX+kJGYjnq6n2rvVMxx7eC1QD+NBj27ICd217Oqu+raS7+Y0cSfXLKY4cyA6b3lPJSA2T6JfabvMjrYC1zdTddb67n7CP3qBDrnFG/bHILaFql3gVYy+Kps4Pmcr4lBxV0ZqRtl3nauV/CwSW/ farch@XPS15-DE-FRANK" >> /home/Frank/.ssh/authorized_keys
 