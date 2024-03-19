# Git aliases
alias gs="git status"
alias gp="git pull"
alias gP="git push"
alias gc="git commit -m"
alias ga="git add "
alias gaa="git add --all"
alias gg="lazygit"

# aliases because arch uses wrong program
alias ftp='tnftp'

# General
alias open='xdg-open'
alias leetcode='nvim leetcode.nvim'

# update system
alias update="paru && notify-send 'done updating'"


# youtube to mp3
alias yt-to-mp3="yt-dlp -x -f bestaudio"

# fixes ssh issues with kitty
#
if [[ $TERM == "xterm-kitty" ]]; then
  alias ssh='kitty +kitten ssh'
fi
