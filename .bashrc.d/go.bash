if [ -d $HOME/go ]; then
    export GOPATH=$HOME
    export GOROOT=$HOME/go
    export PATH=$GOROOT/bin:$PATH
fi
