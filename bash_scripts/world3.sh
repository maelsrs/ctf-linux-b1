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