if status is-interactive
    # Commands to run in interactive sessions can go here
    sleep 0.1 && fastfetch
end

set -U fish_greeting

alias tree='tree -C'
alias logout='cinnamon-session-quit --logout --no-prompt'
alias vim='nvim'
alias bios='systemctl reboot --firmware-setup'

set -U EDITOR nvim

function last_history_item
    echo $history[1]
end
abbr -a !! --position anywhere --function last_history_item
