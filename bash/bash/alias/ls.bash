# exa aliases
# preferred listing
alias ls='eza -lgF --colour=auto --icons=auto --group-directories-first'
# all files and dirs
alias la='eza -algF --colour=auto --icons=auto --group-directories-first'
# tree listing
alias lt='eza -aTg --colour=auto --icons=auto --group-directories-first'
# show only dotfiles
alias l.="eza -ag | grep -e '^\.'"
