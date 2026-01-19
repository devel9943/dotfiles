# Fish completion for opencode
# Uses yargs dynamic completions

function __fish_opencode_get_completions
    set -l cmd (commandline -opc)
    set -e cmd[1]
    opencode --get-yargs-completions $cmd
end

complete -c opencode -f -a '(__fish_opencode_get_completions)'
