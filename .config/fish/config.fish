set TERM "xterm-256color"
set EDITOR "nvim"
set VISUAL "nvim"
fish_vi_key_bindings
set fish_cursor_default line
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block

### STARSHIP PROMPT ###
eval "$(starship init fish)"

### CUSTOM STARTUP COMMAND ###
function fish_greeting
         sysfex
end

### ALIASES ###
alias pagman="sudo pacman -Syu && paru && protonup"
alias ls="exa -la --icons"
alias cp="cp -iv"
alias mv="mv -iv"
alias transde="trans de:en"
alias trans="trans :de"
alias urban="udict"
alias te="nvim"
alias :q="exit"
alias vpn="nordvpn"
alias rm="rm -i"
alias z="zathura"
alias lf="yazi"
alias vim="nvim"


