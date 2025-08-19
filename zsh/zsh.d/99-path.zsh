path+=("/opt/homebrew/bin")
path+=("$HOME/.local/bin")
path+=("$HOME/bin")
path+=("$NVM_DIR/versions/node/v22.17.0/bin")
fpath=(/Users/aweed1/.docker/completions $fpath)
autoload -Uz compinit
compinit
export PATH="$PATH:/Users/aweed1/.lmstudio/bin"
