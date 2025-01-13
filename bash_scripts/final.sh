# Here will be the final script that will be used to run everything, 

# README

#!/bin/bash

users=(
    "root"
    "world1"
    "world2"
    "world3"
    "world4"
    "world5"
    "world5p2"
)

for user in "${users[@]}"; do
    if [ "$user" = "root" ]; then
        user_home="/$user"
    else
        user_home="/home/$user"
    fi

    source_readme="/tmp/bash/readme/${user}.md"
    
    if [ ! -f "$source_readme" ]; then
        echo "Attention: $source_readme n'existe pas"
        continue
    fi

    readme_path="$user_home/README.md"
    cp "$source_readme" "$readme_path"

    bashrc_path="$user_home/.bashrc"
    echo "cat $readme_path" >> "$bashrc_path"
    echo "cd ~" >> "$bashrc_path"

    chown $user:$user "$readme_path"
    chown $user:$user "$bashrc_path"
done

# Passwords

echo "world1:world1" | chpasswd
echo "world2:6xMbjDpGmPkkP9M@" | chpasswd
echo "world3:R2ej%RH8B6GsW3AB" | chpasswd
echo "world4:2pF7SMt5SZPHwUHiPDaVQuz7gBR2pfgkz3CL" | chpasswd
echo "world5:A9L$^4Ag2hEawgFNtYmlN%!BCVnn*B&9EqKUo&7bXmxdbnhEPhfuXBqb2%lu69!6" | chpasswd
echo "world5p2:{SOFT-HYPHEN}" | chpasswd
echo "root:!iAu!y6ST&*oS2L*" | chpasswd

mkdir /home/world1/secret
mkdir /home/world1/project/
mkdir /home/world1/project/2025
mkdir /home/world1/project/2025/march

mkdir /home/world1/secret/.hidden

cat <<EOF > /home/world1/secret/flag.txt
Étape 1
PÂTE: Blanchir les jaunes et le sucre au fouet et détendre le mélange avec un peu d'eau.

Étape 2
Mélanger au doigt la farine et le beurre coupé en petites parcelles pour obtenir une consistance sableuse et que tout le beurre soit absorbé (!!! Il faut faire vite pour que le mélange ne ramollisse pas trop!).

Étape 3
Verser au milieu de ce "sable" le mélange liquide. Incorporer au couteau les éléments rapidement sans leur donner de corps.

Étape 4
Former une boule avec les paumes et fraiser 1 ou 2 fois pour rendre la boule + homogène.

Étape 5
Foncer un moule de 25 cm de diamètre avec la pâte, garnissez la de papier sulfurisé et de haricots secs. Faire cuire à blanc 20 à 25 min, à 180°C (thermostat 6).

Étape 6
CRÈME PÂTISSIÈRE : Mettre le lait à bouillir avec le parfum choisi (vanille ou autre).

Étape 7
Travailler l'oeuf avec le sucre jusqu'à ce que la pâte fasse le ruban, ajouter la farine.

Étape 8
Verser le lait bouillant sur le mélange en tournant bien.

Étape 9
Remettre dans la casserole sur le feu. Faire cuire en tournant très soigneusement. Retirer après ébullition.

Étape 12
Verser la crème sur le fond de tarte et disposer joliment les fraises coupées en 2.
EOF

cat <<EOF > /home/world1/secret/.real_flag.txt
Code Of Ethics

https://sqlite.org/codeofethics.html
EOF

cat <<EOF > /home/world1/secret/.hidden/flag.sh
#!/bin/bash
curl parrot.live
EOF


cat <<EOF > /home/world1/project/2025/march/explications.txt
Projet "Spectre Innovant" - Mars 2025

Titre officiel : Déploiement d'un écosystème cybernétique multidimensionnel dans les environnements urbains résonants.

Description succincte :
Le projet "Spectre Innovant" se veut une initiative révolutionnaire visant à intégrer des solutions cybernético-quantico-symbiotiques au sein des infrastructures urbaines. Cette démarche, prévue pour mars 2025, s'inscrit dans un cadre de développement durable post-numérique, avec une emphase particulière sur la résonance électromagnétique des interactions humaines dans des espaces saturés d'ondes.

Objectifs :

Implémentation d'un noyau résonant fractal :
Développement d'une plateforme capable de capter et d'analyser en temps réel les micro-vibrations sociopolymorphiques des individus dans un rayon de 3,14 km.
Harmonisation des flux énergétiques bio-électrodynamiques :
Création d'une interface urbaine auto-adaptative pour minimiser les dissonances entropiques dans les quartiers surconnectés.
Convergence des paradigmes info-sensibles :
Établir un dialogue entre l'intelligence artificielle haptique et les entités algorithmiques méta-réticulées.
Parties prenantes principales :

Consortium Hypernova : Chargé des études exploratoires transdimensionnelles.
Laboratoire Orbitalis : Responsable de la calibration des outils quantico-téléologiques.
Start-up EtherWave : Spécialisée dans les solutions d'hybridation anthropo-machinique.
Budget prévisionnel : 3,9 milliards d'euros, répartis en cinq phases stratégiques d'optimisation technologique, incluant un fonds dédié à la gestion des anomalies spatio-temporelles potentiellement induites par les résonances cybernétiques.

Déroulement :
Le projet s'étalera sur une période de 24 mois, avec une phase d'initialisation prévue en mars 2025 et une finalisation anticipée pour le début de 2027, sous réserve de validations des comités d'éthique transcendantale et des autorités locales chargées de l'homologation des zones dites "zéro gravité élective".

Appels à contribution :
Nous invitons toutes les entités intéressées par ce projet à soumettre leurs propositions avant janvier 2025, en veillant à inclure une étude d’impact holographique détaillée.

Note :
Les individus souhaitant consulter les détails du dossier doivent impérativement remplir un formulaire en ligne, accompagné d'une attestation de compréhension des principes de multi-réalité encodée (à télécharger sur le portail crypté du projet).

En somme, ce projet de pointe transcende les limites de l’imagination ordinaire pour créer un futur où les vibrations humaines et technologiques s’unissent dans une symphonie cybernétique inédite.
EOF

cat <<EOF > /home/world1/project/2025/march/.env
DB_HOST=localhost
DB_PORT=5432
DB_USER=postgres
DB_PASS=postgres
DB_NAME=postgres
USER_PASSWORD=6xMbjDpGmPkkP9M@
MONITORING_URL=http://monitoring.project-2025.com
LOGGING_URL=http://logging.project-2025.com
PROD_URL=http://project-2025.com
USER=world2
LOGGING_LOCATION=/var/log/project-2025
WEBHOOK_URL=http
WEB_URL=http
WEB_PORT=8082
EOF

chmod 700 /home/world1/secret/.hidden/flag.sh
chown -R world1:world1 /home/world1/secret
chown -R world1:world1 /home/world1/project

root_dir="/home/world2/"
mkdir -p "$root_dir"

for letter1 in {a..z}; do
    mkdir -p "$root_dir/$letter1"

    for letter2 in {a..z}; do
        mkdir -p "$root_dir/$letter1/$letter2"
    done
done

echo "Le mot de passe est dans un fichier qui commence par \"hidden\". Cherche dans un de ces répertoires !" > /home/world2/h/here.txt

cat << 'EOF' > /home/world2/h/i/hidden_pass
 ____  ____       _ _  ______  _   _  ___  ____   __    ____   __        __
|  _ \|___ \ ___ (_|_)/ /  _ \| | | |( _ )| __ ) / /_  / ___|__\ \      / /
| |_) | __) / _ \| | / /| |_) | |_| |/ _ \|  _ \| '_ \| |  _/ __\ \ /\ / / 
|  _ < / __/  __/| |/ /_|  _ <|  _  | (_) | |_) | (_) | |_| \__ \\ V  V /  
|_| \_\_____\___|/ /_/(_)_| \_\_| |_|\___/|____/ \___/ \____|___/ \_/\_/   
 _____   _    _|__/                                                        
|___ /  / \  | __ )                                                        
  |_ \ / _ \ |  _ \                                                        
 ___) / ___ \| |_) |                                                       
|____/_/   \_\____/         

Je suis désolé de vous infliger de recopier le mot de passe, mais c'est plus drôle comme ça.
EOF

cat << 'EOF' > recettes.sh
#!/bin/bash

declare -a recettes=(
    "Ratatouille|Coupez les légumes en dés. Faites revenir l'oignon et l'ail. Ajoutez les courgettes, aubergines, poivrons et tomates. Laissez mijoter 45 minutes."
    "Coq au vin|Faites mariner le coq dans le vin rouge. Faites revenir les lardons et les champignons. Ajoutez le coq et laissez mijoter 2 heures."
    "Gratin dauphinois|Coupez les pommes de terre en fines tranches. Alternez les couches avec de la crème et du fromage. Enfournez 1 heure à 180°C."
    "Quiche lorraine|Préparez la pâte brisée. Garnissez de lardons et d'oignons. Versez l'appareil œufs-crème. Cuisez 30 minutes à 180°C."
    "Blanquette de veau|Faites revenir la viande. Ajoutez les légumes et le bouillon. Laissez mijoter 1h30. Liez la sauce avec la crème."
    "Tarte Tatin|Caramélisez les pommes. Disposez-les dans le moule. Recouvrez de pâte feuilletée. Cuisez 30 minutes à 180°C."
    "Soupe à l'oignon|Faites caraméliser les oignons. Ajoutez le bouillon. Gratinez avec du fromage et des croûtons."
    "Cassoulet|Faites cuire les haricots. Ajoutez les viandes confites et la saucisse. Mijotez longuement au four."
    "Bouillabaisse|Préparez le fumet de poisson. Ajoutez les différents poissons. Servez avec la rouille."
    "Crème brûlée|Faites chauffer la crème avec la vanille. Mélangez aux jaunes d'œufs. Cuisez au bain-marie."
)

mkdir -p /home/world3/1-3

generate_random_recipe() {
    local num=$1
    local base_recipe=${recettes[$((RANDOM % ${#recettes[@]}))]}
    local name=$(echo $base_recipe | cut -d'|' -f1)
    local base_instructions=$(echo $base_recipe | cut -d'|' -f2)


    local variations=(
        "Version végétarienne"
        "Version épicée"
        "Version traditionnelle"
        "Version rapide"
        "Version festive"
    )
    local variation=${variations[$((RANDOM % ${#variations[@]}))]}

    echo "Recette #$num: $name - $variation
============================

Ingrédients:
- Ingrédient principal
- Épices au choix
- Accompagnements selon version

Instructions:
$base_instructions

Temps de préparation: $((RANDOM % 60 + 15)) minutes
Temps de cuisson: $((RANDOM % 120 + 20)) minutes
Difficulté: $((RANDOM % 5 + 1))/5
"
}


for i in {1..50}; do
    generate_random_recipe $i > "/home/world3/1-3/recette_$i.txt"
done

EOF

chmod +x recettes.sh
./recettes.sh
rm recettes.sh

touch /home/world3/1-3/.Reticule.txt
touch /home/world3/1-3/.Elastique.txt
touch /home/world3/1-3/.Cercueil.txt
touch /home/world3/1-3/.Elephant.txt
touch /home/world3/1-3/.raT.txt
touch /home/world3/1-3/.Taupe.txt
touch /home/world3/1-3/.discord.txt
touch /home/world3/1-3/.spotify.txt
touch /home/world3/1-3/.calculatricE.txt
touch /home/world3/1-3/.2idiots.txt
touch /home/world3/1-3/.blancheneigeetles7nains.txt
echo "2pF7SMt5SZPH" >> /home/world3/1-3/recette_27.txt

mkdir /home/world3/2-3
touch /home/world3/2-3/.secret
touch /home/world3/2-3/.here
touch /home/world3/2-3/.fake

mkdir /home/world3/.2-3
touch /home/world3/.2-3/.hihi
echo "found!" > /home/world3/.2-3/wUHiPDaVQuz7

#!/bin/bash

mkdir -p /home/world3/3-3/
chmod 755 /home/world3/3-3/
mv /tmp/bash/curler.c /home/world3/3-3/
chown root:root /home/world3/3-3/curler.c
chmod 755 /home/world3/3-3/curler.c
gcc -o /home/world3/3-3/curler /home/world3/3-3/curler.c
chown gccuser:gccuser /home/world3/3-3/curler
chmod 4755 /home/world3/3-3/curler    # Noter le 4 pour SUID
echo "Vous avez accès au code dans le fichier curler.c, et vous devez lancer ./curler x, pour trouver la dernière partie du mot de passe, bonne chance !" > /home/world3/3-3/README.md
chown root:root /home/world3/3-3/README.md
chmod 644 /home/world3/3-3/README.md
echo "gBR2pfgkz3CL" > /home/world3/3-3/.passwd
chown gccuser:gccuser /home/world3/3-3/.passwd
chmod 600 /home/world3/3-3/.passwd
groupadd developers
usermod -aG developers gccuser
chown root:developers /usr/bin/gcc
chmod 750 /usr/bin/gcc
setcap cap_setuid+ep /home/world3/3-3/curler

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

mv /tmp/bash/7x9436155656156678--12631 /home/world5/
mv /tmp/bash/rockyou-1000.txt /usr/share

cat <<EOF > /home/world5/.hnt
/
Un récit se forma dans l'ombre.
Sur les collines, le vent soufflait fort.
Rien ne semblait pouvoir les arrêter.
/
Soudain, un cri brisa le silence.
Habitués à l'obscurité, ils avancèrent.
Aucun d’eux ne se retourna.
Rares étaient ceux qui osaient suivre cette route.
Enfin, ils atteignirent leur destination.
/
Rien ne les préparait à ce qu’ils allaient trouver.
On entendit un bruit étrange derrière eux.
Ce n’était qu’un début, pensèrent-ils.
Kilomètres après kilomètres, ils restaient concentrés.
Yeux rivés sur l’horizon, ils avançaient.
Ombres et lumières jouaient sur les murs.
Une aventure unique venait de commencer.

Line 91.
EOF

mkdir /home/world5p2/___

cat <<'EOF' > aaa.sh
#!/bin/bash

if [ $# -ne 1 ]; then
    exit 1
fi

output_dir="/home/world5p2/___/=_="
mkdir -p "${output_dir}"
string="$1"
base_timestamp=$(date +%s)

for (( i=0; i<${#string}; i++ )); do
    char="${string:$i:1}"
    timestamp=$((base_timestamp + i))
    echo -n "$char" > "${output_dir}/char_${timestamp}.txt"
    formatted_date=$(date -d "${timestamp} seconds 1970-01-01" "+%Y%m%d%H%M.%S")
    touch -t "${formatted_date}" "${output_dir}/char_${timestamp}.txt"
done
EOF

chmod +x aaa.sh
./aaa.sh "TnVhZ2Ugdulsb2NlIG9yYW5nZSB0YWJsZSBzZWwgY291cmlyIGFic3RyYWl0IGZldWlsbGUgaG9yaXpvbiB0b3J0dWUuIEx1bWnocmUgY2Fzc2UgZGljdGlvbm5haXJlIHBvcnRhaWwuIEdyaWZmZSBvYnNjdXJlIOl0b2lsZSBzYWJsZSBtYWdu6XRpcXVlIHNvdXJpcmUgZnJhZ2lsZSBtYXJ0ZWF1IGVudm9sIG1hY2hpbmUuIFBpYW5vIGJy+2xhbnQg6WNsYXQgYnJpcXVlIGZsb3R0YW50IG1pcm9pciBwb2lzc29uIGNhbmFw6SBpbnRlbnNlLiBWYWd1ZSB0dXJxdW9pc2UgY2FydG9uIG15c3TocmUgaG9ybG9nZSBiYWxhbmNpZXIuIEFyYnJlIGZs6GNoZSDpdGVybmVsIHBlbmR1bGUgdmVudGlsbyBjYXJhcGFjZSBmb3UgcmlyZSBsYWMuIEJvdXRvbiB2ZXJ0aWdlIGFyYy1lbi1jaWVsIGNvcXVpbGxhZ2UgcG9tbWUgc291ZmZsZSBjYWRlbmFzLiBMYW1wZSBlc2NhbGllciBzaWxlbmNlIGRyYWdvbiBtaWV0dGUgY29zbW9zIGVzY2FsYWRlIGJ1bGxlIHBvdXNzaehyZS4gU2F0ZWxsaXRlIOljdW1lIHRhbWJvdXIgZmFudPRtZSBkZXNzZXJ0IGNhcnRvdWNoZSBlc3NlbmNlIOl0b2ZmZSBzcGlyYWxlIGNsYXZpZXIuCgpOdellIGZpbGFudGUg6WNsYXRhbnRlIHZvcnRleCDpY2x1c2Ug6XRyYW5nZSBvbWJyZSBwZWludHVyZS4gQ2FydG9uIG15c3TocmUgYWlndWlsbGUgYmFndWV0dGUgY2hhcnJldHRlIHBhcGlsbG9uIHNhdXZhZ2Ug6XRpbmNlbGxlLiBDcmF5b24gZ29tbWUgdGVycmUgY2hlbWluIGh0dHBzOi8vcGFzdGViaW4uY29tL2MxMUY5VnI1CiBibGV1IOl0b2ZmZSB0cmFw6HplIGNhc2NhZGUg6XRvaWxlIHNvdXJpcmUg6WNoYXJwZSByaWRlYXUgdm9sY2FuIHNwaXJhbGUuIFB1enpsZSBvbWJyZSB0culzb3Ig6WNsYWJvdXNzdXJlIGhpYm91IGZ1Z2FjZSBjaGF1c3NvbiBmaWwgY+JibGUgbW91c3NlIOl0b2lsZSBsdWNpb2xlLiBGbG9jb24gbWFyYnJlIGZ1c+llIHJlYm9uZGlzc2FudCBk9G1lIHNhYmxlIHRyb3Ugdm9sZXQgY2Fwc3VsZSBjcm9pc3NhbnQuCgpHaXZyZSBmdXNlYXUgY2xhdmllciBob3Jpem9uIOljb3JjZSBtb3JjZWF1IHN5bXBob25pZSBkZW50ZWxsZSBvY+lhbiBjbG9jaGUgZW52ZWxvcHBlIGNy6XB1c2N1bGUgZmlsIHJvdWdlIGNlcmlzZS4gR2FsZXQgY2FiYW5lIHRpcm9pciBwZXJsZSBjaGVuaWxsZSBzYXV0IGNoYXBlYXUuIE11c2lxdWUgcGl4ZWwgYWlsZSBy6nZlciB0YWJsZWF1IGNlbmRyZS4gTHVldXIgc3BpcmFsZSBt6WxvZGllLg=="
rm aaa.sh

echo "GG{ONUW24DMMVXG63R7}" > /root/flag.txt