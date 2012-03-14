#!/bin/bash

BACKUP_DIR="/tmp/dotfiles_backups_$RANDOM"
SRC_DIR="$HOME/src/dotfiles"

       
mkdir $BACKUP_DIR
cp $HOME/.bashrc $BACKUP_DIR/bashrc
cp $HOME/.zshrc $BACKUP_DIR/zshrc
cp $HOME/.gitconfig $BACKUP_DIR/gitconfig
cp -Lr $HOME/.vim $BACKUP_DIR/vim
cp $HOME/.vimrc $BACKUP_DIR/vimrc
cp -Lr $HOME/.zsh $BACKUP_DIR/zsh

rm -f $HOME/.bashrc
rm -f $HOME/.zshrc
rm -f $HOME/.gitconfig
rm -f $HOME/.vimrc
rm -rf $HOME/.vim
rm -rf $HOME/.zsh

ln -nfs $SRC_DIR/bashrc $HOME/.bashrc
ln -nfs $SRC_DIR/zshrc $HOME/.zshrc
ln -nfs $SRC_DIR/gitconfig $HOME/.gitconfig
ln -nfs $SRC_DIR/vim $HOME/.vim
ln -nfs $SRC_DIR/vimrc $HOME/.vimrc
ln -nfs $SRC_DIR/zsh $HOME/.zsh
