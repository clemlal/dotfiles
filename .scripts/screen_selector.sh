main_menu() {
    clear
    printf '1 : Laptop screen\n'
    printf '2 : VGA 1'
    printf '3 : HDMI 1\n'
    printf '4 : Laptop screen + VGA on workspace 10\n'
    printf '5 : Laptop screen + HDMI on workspace 10\n'
    printf 'q : Cancel\n'
    read -n 1 -p "Input Selection:" choice
    if [[ $choice = [Ss] ]]; then
       systemctl poweroff &&
       exit 255
    fi
    if [[ $choice = [Rr] ]]; then
       systemctl reboot &&
       exit 255
    fi
    if [[ $choice = [Hh] ]]; then
       systemctl hibernate &&
       exit 255
    fi
    if [[ $choice = [Ll] ]]; then
       systemctl suspend &&
       exit 255
    fi

    if [[ $choice = [Qq] ]]; then
        exit 255
    fi
}


while true; do
    (main_menu)
    res=$?
    if (( res == 255 )); then
        clear
        break
    fi
d
