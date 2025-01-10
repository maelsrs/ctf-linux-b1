cp /tmp/bash/7x9436155656156678--12631 /home/world5/

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

cat <<EOF > aaa.sh
#!/bin/bash

if [ $# -ne 1 ]; then
    exit 1
fi

mkdir -p "/home/world5p2/___/=_="
string="$1"
base_timestamp=$(date +%s)
for (( i=0; i<${#string}; i++ )); do
    char="${string:$i:1}"
    timestamp=$((base_timestamp + i))
    echo -n "$char" > "/home/world5p2/___/=_=/char_${timestamp}.txt"
    #touch -t "$(date -d "@${timestamp}" '+%Y%m%d%H%M.%S')" "/home/world5p2/___/=_=/char_${timestamp}.txt"
done
EOF

chmod +x aaa.sh
./aaa.sh TnVhZ2Ugdulsb2NlIG9yYW5nZSB0YWJsZSBzZWwgY291cmlyIGFic3RyYWl0IGZldWlsbGUgaG9yaXpvbiB0b3J0dWUuIEx1bWnocmUgY2Fzc2UgZGljdGlvbm5haXJlIHBvcnRhaWwuIEdyaWZmZSBvYnNjdXJlIOl0b2lsZSBzYWJsZSBtYWdu6XRpcXVlIHNvdXJpcmUgZnJhZ2lsZSBtYXJ0ZWF1IGVudm9sIG1hY2hpbmUuIFBpYW5vIGJy+2xhbnQg6WNsYXQgYnJpcXVlIGZsb3R0YW50IG1pcm9pciBwb2lzc29uIGNhbmFw6SBpbnRlbnNlLiBWYWd1ZSB0dXJxdW9pc2UgY2FydG9uIG15c3TocmUgaG9ybG9nZSBiYWxhbmNpZXIuIEFyYnJlIGZs6GNoZSDpdGVybmVsIHBlbmR1bGUgdmVudGlsbyBjYXJhcGFjZSBmb3UgcmlyZSBsYWMuIEJvdXRvbiB2ZXJ0aWdlIGFyYy1lbi1jaWVsIGNvcXVpbGxhZ2UgcG9tbWUgc291ZmZsZSBjYWRlbmFzLiBMYW1wZSBlc2NhbGllciBzaWxlbmNlIGRyYWdvbiBtaWV0dGUgY29zbW9zIGVzY2FsYWRlIGJ1bGxlIHBvdXNzaehyZS4gU2F0ZWxsaXRlIOljdW1lIHRhbWJvdXIgZmFudPRtZSBkZXNzZXJ0IGNhcnRvdWNoZSBlc3NlbmNlIOl0b2ZmZSBzcGlyYWxlIGNsYXZpZXIuCgpOdellIGZpbGFudGUg6WNsYXRhbnRlIHZvcnRleCDpY2x1c2Ug6XRyYW5nZSBvbWJyZSBwZWludHVyZS4gQ2FydG9uIG15c3TocmUgYWlndWlsbGUgYmFndWV0dGUgY2hhcnJldHRlIHBhcGlsbG9uIHNhdXZhZ2Ug6XRpbmNlbGxlLiBDcmF5b24gZ29tbWUgdGVycmUgY2hlbWluIGh0dHBzOi8vcGFzdGViaW4uY29tL2MxMUY5VnI1CiBibGV1IOl0b2ZmZSB0cmFw6HplIGNhc2NhZGUg6XRvaWxlIHNvdXJpcmUg6WNoYXJwZSByaWRlYXUgdm9sY2FuIHNwaXJhbGUuIFB1enpsZSBvbWJyZSB0culzb3Ig6WNsYWJvdXNzdXJlIGhpYm91IGZ1Z2FjZSBjaGF1c3NvbiBmaWwgY+JibGUgbW91c3NlIOl0b2lsZSBsdWNpb2xlLiBGbG9jb24gbWFyYnJlIGZ1c+llIHJlYm9uZGlzc2FudCBk9G1lIHNhYmxlIHRyb3Ugdm9sZXQgY2Fwc3VsZSBjcm9pc3NhbnQuCgpHaXZyZSBmdXNlYXUgY2xhdmllciBob3Jpem9uIOljb3JjZSBtb3JjZWF1IHN5bXBob25pZSBkZW50ZWxsZSBvY+lhbiBjbG9jaGUgZW52ZWxvcHBlIGNy6XB1c2N1bGUgZmlsIHJvdWdlIGNlcmlzZS4gR2FsZXQgY2FiYW5lIHRpcm9pciBwZXJsZSBjaGVuaWxsZSBzYXV0IGNoYXBlYXUuIE11c2lxdWUgcGl4ZWwgYWlsZSBy6nZlciB0YWJsZWF1IGNlbmRyZS4gTHVldXIgc3BpcmFsZSBt6WxvZGllLg==
