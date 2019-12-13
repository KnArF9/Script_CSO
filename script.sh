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
echo "---- BEGIN SSH2 PUBLIC KEY ----
Comment: 'ProjetCSO_rsa-key'
AAAAB3NzaC1yc2EAAAABJQAAAmYCr89bpFd0IxedSmZVjcxbjAsNP218qwzofhiE
CKOQWRsRzGTTtq2+WxZqfcTc/lNx397ZA/1XG+mOMAXdG9veXjpWmYKE9Y53ondn
zcxo+kdS5ERMFSmg7UW9ew+YJP4dvDhAa0pzsng9OxTsp2XJURtJYb7PtQ9Y69wz
ab5SWruxStuI1NJh16Y/S8W2IvmpiaIKP4qywrYtDYQtvIynMvJKu/Xv//waFKF2
54jPNxhfytMqbFDRBKlrwMhCTabhCd4lhS3GCAXEnIWB/AC/gEjT7R3rNXIBeg5u
+PQDiwOKoyDIVdsUlbyQxBwk/obHu+4P4wYoyeuYkCC4MmF6tiBUOxPYmjUA/WC1
XfAfFnBkbfJkagiT5raAiZCvd+/lfqTRxC8iZuSBLUmSeZl8FS//i8yHZRYYhl8J
2SwA9LQkiVPDpLAUT1MWHHG6DSCn1SP1GL03qD6DfLYZnWFzkr4h53us8gOYGvb6
iAy6PGDKijm3o6T2lrGuIqpjvxtV7qahsvoDMqWw1xNd/b3CxV70bLGMCglgVXLk
rcO2gBjfzdBGKwTA7D/YxGpnmwxfCWrD99Vho4nknRdZTHCha2B6gU5ppsaoOGG/
A/CqNj22fuOWFgKxKCaYml/yVMiqlDTsZOyDzSCstNX4i6uXQRDNeGu8TIWdt+tb
bHFo3N9a9tRxnSiZhms82adI38e2YfWIVm5Im3PaTQW8E7Vh/3rdzrHOK7bUhAcW
4at1RIbZRRxaYnPVclUMMlQl/3uPpU/VaMKx1/s2dWv4s3ZB9QxBary5EM9a3hcf
sHivWZvcfkzWOw==
---- END SSH2 PUBLIC KEY ----" >> /home/Frank/.ssh/authorized_keys