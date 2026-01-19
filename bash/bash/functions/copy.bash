# Copy DIR1 DIR2
copy() {
    if [ $# -eq 2 ] && [ -d "$1" ]; then
        from=$(echo "$1" | sed 's:/*$::')
        to="$2"
        command cp -r "$from" "$to"
    else
        command cp "$@"
    fi
}
