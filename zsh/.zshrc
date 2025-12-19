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
GREY="%F{grey}"
RESET="%f"

NEWLINE=$'\n'

PYTHON_ICON_COLOR="blue"
GIT_ICON_COLOR="red"
NODE_ICON_COLOR="green"

GIT_INFO=""
PYTHON_INFO=""

update_prompt_vars() {

    SEPERATOR=" - "
    DATE_STRING="%F{#868e96}$(date +"%a, %b %d, %Y")%f"
    TIME_STRING="%F{#868e96}$(date +"%l:%M %p")%f"

    TIMESTAMP=" 🗓 $DATE_STRING $TIME_STRING"

    GIT_INFO=""
    GIT_ICON=""
    GIT_ICON="%F{$GIT_ICON_COLOR}$GIT_ICON%f"

    PYTHON_INFO=""
    PYTHON_ICON="󱔎"
    PYTHON_ICON="%F{$PYTHON_ICON_COLOR}$PYTHON_ICON%f"

    NODE_INFO=""
    NODE_ICON=""
    NODE_ICON="%F{$NODE_ICON_COLOR}$NODE_ICON%f"

    if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
        local branch=$(git symbolic-ref --short HEAD 2>/dev/null)
        local commit=$(git rev-parse --short HEAD 2>/dev/null)
        branch="%F{yellow}$branch%f"
        seperator="%F{white}@%f"
        commit="%F{magenta}$commit%f"
        GIT_INFO="$GIT_ICON $branch$seperator$commit"
    fi

    if [[ -n "$VIRTUAL_ENV" ]]; then
        python_version=v$(python --version 2>&1 | awk '{print $2}')
        PYTHON_INFO="$PYTHON_ICON %F{#868e96}$python_version%f${RESET}"
    fi

    if [[ -n "$NVM_BIN" ]]; then
        NODE_INFO="$NODE_ICON %F{#868e96}$(node -v)${RESET}"
    fi
}

function zle-keymap-select {
    update_prompt_vars
    if [[ ${KEYMAP} == vicmd ]]; then
        PROMPT="$TIMESTAMP$SEPERATOR$PYTHON_INFO$SEPERATOR$NODE_INFO$SEPERATOR$GIT_INFO$NEWLINE${RED}%~ $ ${RESET}"
    else
        PROMPT="$TIMESTAMP$SEPERATOR$PYTHON_INFO$SEPERATOR$NODE_INFO$SEPERATOR$GIT_INFO$NEWLINE${GREEN}%~ $ ${RESET}"
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
    printf '%*s\n'
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
