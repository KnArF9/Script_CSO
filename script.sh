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
AAAAB3NzaC1yc2EAAAABJQAAAQEAqAimzSxJcdgGr9Za1CG8z5NrcFQ+jbqBN1hB
zxJDMNzmDvlmu76gJmY0OyGcObXxuCRSPX7Y/V9Fnm7Q4/zgEC+u2j/ZZw9J/OeM
HQvAaXshnjaSx9ka6x/IKwr5cKRqdxCsRZgLsZi4UboMHo9NOR9QrC1qpJzqpYRD
hkMtRN6L5peYn6Y9KxJ7DlJcr3R4oCD8ByVZnPh/Z+YEwNEwKmxdYixaV4qnN1lL
pEExU/8zLoEPFVw6pioQ5IpIt7Qt6NPHGm9WxSlvKZQF9LWrvQXdsdVvWp35vKF0
k+ANX7TvJmQGBrS636T0lyTCE+auIR4cGgDPPSD8Zf9tmGoQHw==
---- END SSH2 PUBLIC KEY ----' >> /.ssh/authorized_keys