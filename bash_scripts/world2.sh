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