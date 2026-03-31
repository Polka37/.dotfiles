if status is-interactive
    # Commands to run in interactive sessions can go here
    sleep 0.1 && fastfetch
end

set -U fish_greeting

#Aliases
alias tree='tree -C'
alias logout='cinnamon-session-quit --logout --no-prompt'
alias vim='nvim'
alias yt-dlp='~/Documents/Appimage/yt-dlp_linux -t mp3 --embed-thumbnail --embed-metadata --embed-subs --embed-chapters --paths ~/Music/'
alias bios='systemctl reboot --firmware-setup'
alias cat='batcat' #Fancier cat command

#Git aliases
alias gits='git status'
alias gitam='git commit -am'
alias gitpl='git pull'
alias gitpu='git push'
alias gitl='git log'
alias gitr='git restore'

set -U EDITOR nvim

function ffmp_artist -a file artist -d "Update a music file artist"
    ffmpeg -i $file -metadata artist=$artist -codec copy new_$file -hide_banner
    trash $file
    mv new_$file $file
end

function last_history_item
    echo $history[1]
end
abbr -a !! --position anywhere --function last_history_item
