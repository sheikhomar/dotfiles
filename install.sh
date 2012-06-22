#!/bin/bash

BACKUP_DIR="/tmp/dots$RANDOM"
LOG_FILE=$BACKUP_DIR/log
SRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
declare -a files=(bashrc zshrc gitconfig vimrc Xmodmap gemrc vim zsh)

echo Backing up files to $BACKUP_DIR
mkdir $BACKUP_DIR
for file in ${files[@]}; do
    cp -Lr $HOME/.${file} $BACKUP_DIR/${file} &>> $LOG_FILE
done

echo Removing old files
for file in ${files[@]}; do
    rm -rf $HOME/.${file} &>> $LOG_FILE
done

echo Installing new files
for file in ${files[@]}; do
    ln -nfs $SRC_DIR/${file} $HOME/.${file}
done

echo Done. Log file: $LOG_FILE
