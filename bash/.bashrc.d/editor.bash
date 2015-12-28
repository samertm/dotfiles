if [ -f $HOME/.config/systemd/user/emacs.service ]; then
    export EDITOR="emacsclient -c"
elif has emacs; then
    export EDITOR="emacs"
elif has vim; then
    export EDITOR="vim"
else
    export EDITOR="vi"
fi
