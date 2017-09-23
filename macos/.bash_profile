# Homebrew precedence
export PATH=$PATH:/usr/local/bin

# Python 2
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# AWS CLI
export PATH=~/.local/bin:$PATH

# rbenv
# export PATH=$PATH:~/.rbenv/shims
# Taken out because this forces the rbenv shims to load before Homebrew
eval "$(rbenv init -)"

# Git branch in Terminal prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "


case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
    show_command_in_title_bar()
    {
        case "$BASH_COMMAND" in
            *\033]0*)
                ;;
            *)
                echo -ne "\033]0;${BASH_COMMAND} - ${PWD##*/}\007"
                ;;
        esac
    }
    trap show_command_in_title_bar DEBUG
    ;;
*)
    ;;
esac
