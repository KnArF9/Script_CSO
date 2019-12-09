#!/bin/bash

#Branche user

useradd -m Frank; echo -e "tge243\ntge243" | passwd Frank
echo ' Frank ALL=(ALL)   NOPASSWD:ALL' >> /etc/sudoers
mkdir authorized_keys /home/Frank/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCwPoWFD2Fjm1dvTnNjGQUYPFt0uxhwYocLFw6kP8WQuQblS/p3ApophtUIzEBdxFGpvs5Y7SDvlib7/qaSNaMh8i60JOa86m+QkAP5vf26rPYVETNXtWoARt8scmGp/svoJpVWhQc2CFCI5/cNEJCZaMVvhSaFXum2P5EB/ulfEsR3Z9JXwerJ+cGkf+QEZMkIBW64EUl4HcYJ2qdqyoiu2/b6Ag2khVrn/k5Div2MQDy3OFfmK5c8bQPA1rHAk9gZ+szs3pD2pV4iy6LrL/6T1rB+XRItGabMGxNlGoo0b4BdVzDGEpJ/8mS4kBbt2ftes/K0mS08u+Kidvb5J+bf farch@XPS15-DE-FRANK" >> /.ssh/authorized_keys
