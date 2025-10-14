if status is-interactive
    # Commands to run in interactive sessions can go here
    fastfetch
end

set -U fish_greeting

alias tree='tree -C'
alias logout='cinnamon-session-quit --logout --no-prompt'

function last_history_item
    echo $history[1]
end
abbr -a !! --position anywhere --function last_history_item
