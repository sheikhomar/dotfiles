#!/bin/bash

BACKUP_DIR="/tmp/dots$RANDOM"
LOG_FILE=$BACKUP_DIR/log
SRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo Backing up files to $BACKUP_DIR
mkdir $BACKUP_DIR
cp $HOME/.bashrc $BACKUP_DIR/bashrc &>> $LOG_FILE
cp $HOME/.zshrc $BACKUP_DIR/zshrc &>> $LOG_FILE
cp $HOME/.gitconfig $BACKUP_DIR/gitconfig &>> $LOG_FILE
cp $HOME/.vimrc $BACKUP_DIR/vimrc &>> $LOG_FILE
cp $HOME/.Xmodmap $BACKUP_DIR/Xmodmap &>> $LOG_FILE
cp -Lr $HOME/.vim $BACKUP_DIR/vim &>> $LOG_FILE
cp -Lr $HOME/.zsh $BACKUP_DIR/zsh &>> $LOG_FILE

echo Removing old dot files
rm -f $HOME/.bashrc &>> $LOG_FILE
rm -f $HOME/.zshrc &>> $LOG_FILE
rm -f $HOME/.gitconfig &>> $LOG_FILE
rm -f $HOME/.vimrc &>> $LOG_FILE
rm -r $HOME/.Xmodmap &>> $LOG_FILE
rm -rf $HOME/.vim &>> $LOG_FILE
rm -rf $HOME/.zsh &>> $LOG_FILE

echo Installing new dot files
ln -nfs $SRC_DIR/bashrc $HOME/.bashrc
ln -nfs $SRC_DIR/zshrc $HOME/.zshrc
ln -nfs $SRC_DIR/gitconfig $HOME/.gitconfig
ln -nfs $SRC_DIR/vimrc $HOME/.vimrc
ln -nfs $SRC_DIR/Xmodmap $HOME/.Xmodmap
ln -nfs $SRC_DIR/vim $HOME/.vim
ln -nfs $SRC_DIR/zsh $HOME/.zsh

echo Done. Log file: $LOG_FILE
