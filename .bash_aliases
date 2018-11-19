alias l='ls -F'
alias ll='ls -lhF'
alias la='ls -AF'
alias lla='ls -lhAF'


if [ -n `which vim` ]; then
    alias vi='vim'
fi


if [ -n `which safe-rm` ]; then
    alias rm='safe-rm'
fi
