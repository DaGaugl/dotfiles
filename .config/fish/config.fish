set TERM "xterm-256color"
set EDITOR "emacsclient -t"
set VISUAL "emacsclient -c -a emacs"
fish_vi_key_bindings
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block

### STARSHIP PROMPT ###
eval "$(starship init fish)"

### CUSTOM STARTUP COMMAND ###
function fish_greeting
         pfetch
         configure_pager
end

### ALIASES ###
alias yay="paru"
alias pagman="sudo manga-cli -u && sudo ani-cli -U && yay && exit"
alias ls="exa -la"
alias cp="cp -iv"
alias mv="mv -iv"
alias transde="trans de:en"
alias trans="trans :de"
alias urban="udict"
alias te="emacsclient -t"
alias :q="exit"
alias rmorphans="sudo pacman -Rns $(pacman -Qtdq)"

### COLORED MANPAGES ###
function configure_pager
    set -gx LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
    set -gx LESS_TERMCAP_md \e'[01;38;5;74m'  # begin bold
    set -gx LESS_TERMCAP_me \e'[0m'           # end mode
    set -gx LESS_TERMCAP_se \e'[0m'           # end standout-mode
    set -gx LESS_TERMCAP_so \e'[38;5;016m\E[48;5;220m'    # begin standout-mode - info box
    set -gx LESS_TERMCAP_ue \e'[0m'           # end underline
    set -gx LESS_TERMCAP_us \e'[04;38;5;146m' # begin underline
end
