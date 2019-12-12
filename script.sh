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
mkdir -p /.ssh
touch /.ssh/authorized_keys
echo '---- BEGIN SSH2 PUBLIC KEY ----
Comment: "rsa-key"
AAAAB3NzaC1yc2EAAAABJQAAAQEAp7MtEkkQgpjg1Vt1qq4dqE7Y+frs06NfaV/r
l8luPQbdRdlKDcvTbyCKktKULGkzbDgGyZk0xqQZRr+KwyhKnbu7yBTrSTwDa8ip
4YaK8i7Hxez6p27ZF4ojW3gKrBfJPDt51Hu0VcSZCTCWKpcbybXU+fqZe1AlSNRe
zZJYJ8c/SDt2ynY3kDz0CjnfiCqA5l2GH/C2y32yO4Us3B86lSisd+FIfX31pwog
Qtr3mPQipeWaTo5sUzQV5DJoKL/41PubRIcTIitjARatRy8cAb23xcjh1dTi+9zb
k4hkXcK4hV53kDIPoYMi8KIdkFexswz5ODtq6aIdtuc9NQUyvw==
---- END SSH2 PUBLIC KEY ----' >> /.ssh/authorized_keys