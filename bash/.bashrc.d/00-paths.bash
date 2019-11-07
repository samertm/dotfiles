if [ -d $HOME/.local/bin ]; then
    export PATH=$HOME/.local/bin:$PATH
fi
if [ -d $HOME/bin ]; then
    export PATH=$HOME/bin:$PATH
fi
if [ -d $HOME/.cargo/bin ]; then
    export PATH="$HOME/.cargo/bin:$PATH"
elif [ -d $HOME/src/client/virtual_env/rust/bin ]; then
    export PATH=$HOME/src/client/virtual_env/rust/bin:$PATH
    export CARGO_HOME=$HOME/src/client/virtual_env/rust
    export LD_LIBRARY_PATH=$HOME/src/client/virtual_env/rust/lib
    #export DROPBOX_ENABLE_NUCLEUS=1
fi
if [ -d $HOME/src/depot_tools ]; then
    export PATH=$PATH:$HOME/src/depot_tools
fi
if [ -d $HOME/Downloads/cmake-3.10.3-Linux-x86_64 ]; then
    export PATH=$HOME/Downloads/cmake-3.10.3-Linux-x86_64/bin:$PATH
fi
if [ -d $HOME/Android ]; then
    export ANDROID_HOME=$HOME/Android/Sdk
    export PATH=$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools
fi
if [ -d $HOME/.cargo/bin ]; then
    export $PATH=$HOME/.cargo/bin:$PATH
fi
