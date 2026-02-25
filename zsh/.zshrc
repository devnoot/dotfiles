###########################################################
#     ~ NOOT NOOT ~                                       #
#               _~                                        #
#            __(.)<  QUACK-- I mean, NOOT!                #
#            \___)                                        #
#            ~~~~~    Your friendly .zshrc penguin        #
###########################################################

##############################################
# 1. Environment
##############################################
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export XDG_CONFIG_DIR="$HOME/.config"
export XDG_DATA_DIR="$HOME/.local/share"
export EDITOR="nvim"
export RUSTUP_HOME="$XDG_DATA_DIR/rustup"
export CARGO_HOME="$XDG_DATA_DIR/cargo"
export HOMEBREW_NO_INSTALL_CLEANUP=1

# History Settings
HISTFILE="$ZDOTDIR/.zhistory"
HISTSIZE=100000
SAVEHIST=100000

##############################################
# 2. Shell Options
##############################################
setopt autocd              # cd by typing directory name
setopt autopushd           # Make cd push the old directory onto the dirstack
setopt pushdignoredups     # No duplicates in directory stack
setopt noclobber           # Don't overwrite files with >
setopt longlistjobs        # List jobs in long format
setopt notify              # Report status of background jobs immediately
setopt appendhistory       # Append history to the history file (no overwriting)
setopt histignoredups      # Ignore duplicate commands in history
setopt extended_history    # Write the history file in the ":start:elapsed;command" format
setopt incappendhistory    # Write to the history file immediately, not when the shell exits
setopt share_history       # Share history between all sessions
setopt menucomplete        # Autocomplete chooses first item
setopt autoparamkeys       # Intelligent handling of characters after completion
setopt no_beep             # NOOT NOOT (silence)

##############################################
# 3. Completion
##############################################
autoload -Uz compinit && compinit
bindkey -v # VI Mode
bindkey "^I" expand-or-complete

##############################################
# 4. Prompt
##############################################
# Colors
RED="%F{red}"
GREEN="%F{green}"
YELLOW="%F{yellow}"
BLUE="%F{blue}"
GREY="%F{242}" # Fixed grey color code
RESET="%f"
NEWLINE=$'\n'

# Icons
PYTHON_ICON="󱔎"
NODE_ICON=""
GIT_ICON=""

# Allow functions to run inside the prompt
setopt prompt_subst

# Function to generate the top information line
build_info_line() {
    # 1. Time (Native Zsh formatting, faster than $(date))
    local date_str="%F{246}%D{%a, %b %d, %Y} %D{%l:%M %p}%f"
    
    # Initialize array for parts of the prompt
    local -a prompt_parts
    prompt_parts+=("$date_str")

    # 2. Python (Shows if VIRTUAL_ENV is set)
    if [[ -n "$VIRTUAL_ENV" ]]; then
        # Use python version only if needed, otherwise just icon to save speed
        local py_ver=$(python --version 2>&1 | awk '{print $2}')
        prompt_parts+=("%F{blue}${PYTHON_ICON}%f %F{246}v${py_ver}%f")
    fi

    # 3. Node (Shows if package.json, node_modules, or .nvmrc exists)
    if [[ -f package.json || -d node_modules || -f .nvmrc ]]; then
        # Only run node -v if we are actually in a node env
        local node_ver=$(node -v 2>&1)
        prompt_parts+=("%F{green}${NODE_ICON}%f %F{246}${node_ver}%f")
    fi

    # 4. Git
    if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
        local branch=$(git symbolic-ref --short HEAD 2>/dev/null)
        local commit=$(git rev-parse --short HEAD 2>/dev/null)
        
        # Format: Icon Branch @ Commit
        local git_str="%F{red}${GIT_ICON}%f %F{yellow}${branch}%f%F{white}@%f%F{magenta}${commit}%f"
        prompt_parts+=("$git_str")
    fi

    # Join parts with a separator
    # (j: - :) joins the array elements with " - "
    echo "${(j: - :)prompt_parts}"
}

# VI Mode Indicator (Red for Command, Green for Insert)
function zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]]; then
        PROMPT_SYMBOL="${RED}%~ $ ${RESET}"
    else
        PROMPT_SYMBOL="${GREEN}%~ $ ${RESET}"
    fi
    zle reset-prompt
}
zle -N zle-keymap-select

function zle-line-init {
    zle-keymap-select
}
zle -N zle-line-init

# Initial default symbol
PROMPT_SYMBOL="${GREEN}%~ $ ${RESET}"

# Final Prompt Construction
# We call build_info_line inside ${...} so it runs every time prompt renders
PROMPT='$(build_info_line)${NEWLINE}${PROMPT_SYMBOL}'

##############################################
# 5. External Source
##############################################
# Source all .zsh files from "$ZDOTDIR/zsh.d"
if [ -d "$ZDOTDIR/zsh.d" ]; then
  for f in "$ZDOTDIR/zsh.d/"*.zsh(N); do # (N) flag prevents error if no files match
    source "$f"
  done
fi
