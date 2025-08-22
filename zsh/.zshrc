###########################################################
#     ~ NOOT NOOT ~                                       #
#               _~                                        #
#            __(.)<  QUACK-- I mean, NOOT!                #
#            \___)                                        #
#            ~~~~~    Your friendly .zshrc penguin        #
###########################################################

##############################################
# 0. Environment
##############################################
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export XDG_CONFIG_DIR="$HOME/.config"
export XDG_DATA_DIR="$HOME/.local/share"
export EDITOR="nvim"
export RUSTUP_HOME="$XDG_DATA_DIR/rustup"
export CARGO_HOME="$XDG_DATA_DIR/cargo"
export HOMEBREW_NO_INSTALL_CLEANUP=1

##############################################
# Completion
##############################################
autoload -Uz compinit && compinit
setopt menucomplete
bindkey "^I" expand-or-complete

##############################################
# Prompt
##############################################
RED="%F{red}"
GREEN="%F{green}"
YELLOW="%F{yellow}"
BLUE="%F{blue}"
RESET="%f"

GIT_INFO=""
PYTHON_INFO=""

update_prompt_vars() {
    GIT_INFO=""
    PYTHON_INFO=""

    if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
        local branch=$(git symbolic-ref --short HEAD 2>/dev/null)
        local commit=$(git rev-parse --short HEAD 2>/dev/null)
        GIT_INFO=" %F{yellow}[$branch%f%F{white}@%f%F{magenta}$commit%f]"
    fi

    if [[ -n "$VIRTUAL_ENV" ]]; then
        PYTHON_INFO=" ${BLUE}[venv:$(basename $VIRTUAL_ENV)]${RESET}"
    fi
}

function zle-keymap-select {
    update_prompt_vars
    if [[ ${KEYMAP} == vicmd ]]; then
        PROMPT="$PYTHON_INFO %~$GIT_INFO ${RED}$ ${RESET}"
    else
        PROMPT="$PYTHON_INFO %~$GIT_INFO ${GREEN}$ ${RESET}"
    fi
    zle reset-prompt
}
zle -N zle-keymap-select

function zle-line-init {
    zle-keymap-select
}
zle -N zle-line-init

precmd() {
    update_prompt_vars
}

PROMPT="%~$GIT_INFO$PYTHON_INFO ${GREEN}$ ${RESET}"

##############################################
# Shell Options
##############################################
setopt autocd
setopt autopushd
setopt pushdignoredups
setopt noclobber
setopt longlistjobs
setopt notify
setopt appendhistory
setopt histignoredups
setopt extended_history
setopt incappendhistory
setopt share_history
setopt menucomplete
setopt autoparamkeys
setopt no_beep

bindkey "^I" expand-or-complete
bindkey -v

autoload -Uz compinit && compinit

##############################################
# History Settings
##############################################
HISTFILE="$ZDOTDIR/.zhistory"
HISTSIZE=100000
SAVEHIST=100000


# Source all .zsh files from "$ZDOTDIR/zsh.d"
if [ -d "$ZDOTDIR/zsh.d" ]; then
  # using quotes here breaks globbing
  for f in $ZDOTDIR/zsh.d/*.zsh; do
    [ -e "$f" ] && source "$f"
  done
fi
