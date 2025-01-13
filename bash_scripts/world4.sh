echo "#aGlkZGVudXNlcjpwQHNzdzByZA==" >> /home/world4/.bash_logout

useradd -m -d /opt/hiddenuser hiddenuser
echo "hiddenuser:p@ssw0rd" | chpasswd

echo "world5:A9L$^4Ag2hEawgFNtYmlN%!BCVnn*B&9EqKUo&7bXmxdbnhEPhfuXBqb2%lu69!6" > /opt/hiddenuser/secret.txt
openssl enc -aes-256-cbc -salt -in /opt/hiddenuser/secret.txt -out /opt/hiddenuser/secret.txt.enc -k p@ssw0rd -pbkdf2
chown hiddenuser:hiddenuser /opt/hiddenuser/secret.txt.enc
chmod 600 /opt/hiddenuser/secret.txt.enc
rm /opt/hiddenuser/secret.txt

cat << 'EOF' > /opt/hiddenuser/decrypt.sh
#!/bin/bash
echo "Mot de passe pour déchiffrer :"
read -s password
openssl enc -aes-256-cbc -d -in /opt/hiddenuser/secret.txt.enc -out /opt/hiddenuser/secret.txt -k "$password" -pbkdf2 \
&& echo "Décrypté !" || echo "Échec, mot de passe incorrect, peut-être devriez-vous réutiliser vos informations..."
EOF

chmod 750 /opt/hiddenuser/decrypt.sh
chown hiddenuser:hiddenuser /opt/hiddenuser/decrypt.sh

