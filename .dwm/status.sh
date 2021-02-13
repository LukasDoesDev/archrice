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
    if acpi -a | grep -q off-line; then	    
	    bat="$(acpi -b | grep "[0-9%]]*" | cut -c "21-")"
	    echo "$bat"
    else
	    bat="$(acpi -b | grep "[0-9%]]*" | cut -c "23-")"
    fi
}


wthr() {
curl wttr.in/Helsinki?format="%t"
echo -e "$wthr"
}

while true; do
    xsetroot -name "$(wthr) | $(dte) | $(tme) | $(bat)"
    sleep 10s
done
