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