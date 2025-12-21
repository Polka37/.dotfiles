if status is-interactive
    # Commands to run in interactive sessions can go here
    sleep 0.1 && fastfetch
end

set -U fish_greeting

#Aliases
alias tree='tree -C'
alias logout='cinnamon-session-quit --logout --no-prompt'
alias vim='nvim'
alias yt-dlp='~/Documents/Appimage/yt-dlp_linux -t mp3 --embed-thumbnail --embed-metadata --embed-subs --paths ~/Music/'
alias bios='systemctl reboot --firmware-setup'

#Git aliases
alias gits='git status'
alias gitam='git commit -am'
alias gitpl='git pull'
alias gitpu='git push'
alias gitl='git log'
alias gitr='git restore'

set -U EDITOR nvim

function last_history_item
    echo $history[1]
end
abbr -a !! --position anywhere --function last_history_item
