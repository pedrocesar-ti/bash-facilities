#!/bin/bash

cd "$HOME"
BKPDIR="$HOME/.backup_rc_files/$(date +%Y%m%d-%H%M%S)"
mkdir -p "$BKPDIR"
echo "Your old config files will be saved to $BKPDIR."
mv .bashrc .bash_profile .profile .bashrc.d $BKPDIR 2> /dev/null
git clone https://github.com/pedrocesar-ti/bash-facilities.git .bash-facilities
ln -s "$HOME/.bash-facilities/load/bashrc" ~/.bashrc
ln -s "$HOME/.bash-facilities/load/profile" ~/.profile

