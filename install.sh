#!/bin/sh

BASE_DIR=`pwd`

#建立zshrc链接
echo "配置zsh..."
for i in $HOME/.zshrc
do
  [ -L $i ] && unlink $i
  [ -e $i ] && mv $i $i.$TODAY
done

ln -s $BASE_DIR/zsh/.zshrc $HOME/.zshrc

#建立gitconfig链接
echo "配置Git..."
if [ -L $HOME/.gitconfig ];then
    unlink $HOME/.gitconfig
elif [ -f $HOME/.gitconfig ];then
    mv $HOME/.gitconfig $HOME/.gitconfig.$TODAY
fi
ln -s $BASE_DIR/git/.gitconfig $HOME/.gitconfig

#配置Vim
echo "备份vim配置..."
for i in $HOME/.vimrc
do
  [ -L $i ] && unlink $i
  [ -e $i ] && mv $i $i.$TODAY
done

echo "重新配置Vim..."
ln -s $BASE_DIR/vim/.vimrc $HOME/.vimrc