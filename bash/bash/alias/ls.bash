# exa aliases
# preferred listing
alias ls='eza -lgF --git --colour=auto --icons=auto --group-directories-first'
# all files and dirs
alias la='eza -algF --git --colour=auto --icons=auto --group-directories-first'
# tree listing
alias lt='eza -aTg --git --colour=auto --icons=auto --group-directories-first'
# show only dotfiles
alias l.="eza -ag | grep -e '^\.'"
