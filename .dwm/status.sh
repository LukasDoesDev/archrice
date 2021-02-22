#! /bin/bash

dte(){
    dte="$(date +"%d.%m.%Y")"
    echo -e "$dte"
}

tme(){
    tme="$(date +"%H:%M")"
    echo -e "$tme"
}



wthr() {
    curl wttr.in/Helsinki?format="%t"
    echo -e "$wthr"
}

while true; do
    xsetroot -name " $(wthr) | $(dte) | $(tme) "
    sleep 10s
done
