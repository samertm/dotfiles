#!/bin/bash
# Copies dotfiles into home dir

DONTCOPY="README setup.sh .git .gitconfig . .."

for i in $(ls -a) ; do
    CAN_COPY=1
    for j in $DONTCOPY ; do
        if [ $i = $j ] ; then
            CAN_COPY=0
            break # efficiency is key!
        fi
    done
    if [ $CAN_COPY -ne 0 ] ; then
        if [ -d $i ] ; then
            cp -r $i ~/$i
        else
            cp $i ~/$i
        fi
    fi
done
