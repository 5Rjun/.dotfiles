set fish_greeting                                 # Supresses fish's intro message
set TERM "xterm-256color"                         # Sets the terminal type

# Changing "ls" to "exa"
alias ls='exa -al --icons --header --color=always --group-directories-first' # my preferred listing
alias la='exa -a --icons --color=always --group-directories-first'  # all files and dir
alias lt='exa -aT --icons --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias tag='git tag'
alias newtag='git tag -a'

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'


starship init fish | source

#commands
alias update='sudo apt update && sudo apt upgrade -y'
alias install='doas apt install'
alias search='doas apt search'
alias loc-update='doas updatedb'
alias autoclean='doas apt autoclean -y'
alias autoremove='doas apt autoremove -y'
