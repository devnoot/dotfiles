if status is-interactive
    # Commands to run in interactive sessions can go here
end

# pnpm
set -gx PNPM_HOME "/home/anthony/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

fish_vi_key_bindings

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/anthony/miniconda3/bin/conda
    eval /home/anthony/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/anthony/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/anthony/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/anthony/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

