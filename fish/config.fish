if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias ls="ls --color"
alias f="fastfetch"
alias c="clear"
alias n="nvim"

set fish_greeting ""
function e
    set file (fzf)
    if test -n "$file"
        hx "$file"
    end
end

function d
    set dir (find . -type d 2>/dev/null | fzf)
    if test -n "$dir"
        z "$dir"
    end
end
set -x PATH $HOME/Downloads/zig $PATH
set -x PATH $HOME/zen $PATH
set -x EDITOR helix
set -x PATH $HOME/develop/flutter/bin/ $PATH
set -x PATH $HOME/Android/cmdline-tools/latest/bin/ $PATH
set -x PATH $HOME/Android/build-tools/36.0.0/ $PATH
set -x ANDROID_SDK_HOME $HOME
