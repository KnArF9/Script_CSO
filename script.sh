#!/bin/bash

#branche ip

#Pour afficher l'addresse IP avant le login
# sudo nano /etc/rc.local (fichier a aller changer)
#avant exit 0:


IP =$ (hostname -I) || true
if [ "$IP" ]; then
	printf "L'addresse IP est : %s\n" "$IP"
fi