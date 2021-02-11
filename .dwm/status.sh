#! /bin/bash

dte(){
    dte="$(date +"%d.%m.%Y")"
    echo -e "$dte"
}

tme(){
    tme="$(date +"%I:%M")"
    echo -e "$tme"
}


bat() {
    bat="$(acpi -b | grep "[0-9%]]*" | cut -c "21-")"
    echo "$bat"
}

while true; do
    xsetroot -name "$(dte) | $(tme) | $(bat)"
    sleep 10s
done
