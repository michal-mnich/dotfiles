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
# open with default application
o() {
    rm ~/.xdg-open-log
    for arg in "$@"; do
        xdg-open $arg &>> ~/.xdg-open-log
    done
}
# compile c++ program with debugging flags
g++d() {
    out=${$(realpath $1):r}
    g++ @$HOME/.g++_debug_flags $1 -o $out
}
# compile c program with debugging flags
gccd() {
    out=${$(realpath $1):r}
    gcc @$HOME/.gcc_debug_flags $1 -o $out
}
