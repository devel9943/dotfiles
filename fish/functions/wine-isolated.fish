# wine isolated prefix function
function wine-isolated
    set app_name (basename $argv[1] .exe)
    set prefix "$HOME/.wine-prefixes/$app_name"
    
    if not test -d "$prefix"
        echo "Creating new Wine prefix: $prefix"
        mkdir -p "$HOME/.wine-prefixes"
    end
    
    env WINEPREFIX="$prefix" WINEUSERSANDBOX=1 /opt/wine-cachyos/bin/wine $argv
end

# abbreviation for wine-isolated
abbr -a wi wine-isolated

