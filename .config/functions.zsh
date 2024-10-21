# cheat.sh implementation
cheat() {
    url="cht.sh"
    if [[ $# == 1 ]]; then
        query=$1
        query_plus=${query// /+}
        curl "$url/$query_plus"
    elif [[ $# == 2 ]]; then
        programming_language=$1
        query=$2
        query_plus=${query// /+}
        curl "$url/$programming_language/$query_plus"
    else
        echo "Usage: cheat [programming language] query\n"
        curl "$url/:help"
    fi
}
# reminder to include in backup.sh
backup() {
    script="$HOME/.config/my_backup/backup.sh"
    for arg in "$@"; do
        echo "# backup: $(realpath $arg)" >> $script
    done
}

# sane defaults for quick c compilation
ccc() {
    gcc -std=gnu17 -g -Og -Wall -Wextra -Wpedantic -o "${1:r}" "$@"
}

# sane defaults for quick cpp compilation
cxx() {
    g++ -std=gnu++20 -g -Og -Wall -Wextra -Wpedantic -o "${1:r}" "$@"
}
