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
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCwPoWFD2Fjm1dvTnNjGQUYPFt0uxhwYocLFw6kP8WQuQblS/p3ApophtUIzEBdxFGpvs5Y7SDvlib7/qaSNaMh8i60JOa86m+QkAP5vf26rPYVETNXtWoARt8scmGp/svoJpVWhQc2CFCI5/cNEJCZaMVvhSaFXum2P5EB/ulfEsR3Z9JXwerJ+cGkf+QEZMkIBW64EUl4HcYJ2qdqyoiu2/b6Ag2khVrn/k5Div2MQDy3OFfmK5c8bQPA1rHAk9gZ+szs3pD2pV4iy6LrL/6T1rB+XRItGabMGxNlGoo0b4BdVzDGEpJ/8mS4kBbt2ftes/K0mS08u+Kidvb5J+bf farch@XPS15-DE-FRANK' >> /.ssh/authorized_keys