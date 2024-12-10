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