source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
    # smth smth
end

# wine isolated prefix function
function wine-isolated
    set app_name (basename $argv[1] .exe)
    set prefix "$HOME/.wine-prefixes/$app_name"
    
    if not test -d "$prefix"
        echo "Creating new Wine prefix: $prefix"
        mkdir -p "$HOME/.wine-prefixes"
    end
    
    env WINEPREFIX="$prefix" WINEUSERSANDBOX=1 wine $argv
end

# abbreviation for wine-isolated
abbr -a wi wine-isolated

# opencode
fish_add_path /home/j/.opencode/bin

# GPG SSH support
set -gx GPG_TTY (tty)
set -gx SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
