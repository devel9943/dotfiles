source /usr/share/cachyos-fish-config/cachyos-config.fish

function fish_greeting
	# nothing
end

# opencode
fish_add_path /home/j/.opencode/bin

# GPG SSH support
set -gx GPG_TTY (tty)
set -gx SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
