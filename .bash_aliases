alias l='ls -F'
alias ll='ls -lh'
alias la='ls -AF'
alias lla='ls -lhA'

if [ -x "$(command -v vim)" ]; then
    alias vi='vim'
fi

if [ -x "$(command -v safe-rm)" ]; then
    alias rm='safe-rm'
fi
