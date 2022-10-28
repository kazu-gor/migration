#!/bin/bash

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

# install homebrew
echo 'Homebrew is being installed...'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" > /dev/null
echo 'Brewfile contents is being installed...'
brew bundle -v --global

# install vim-plug
echo 'vim-plug is being installed...'
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' > /dev/null

# git 
echo 'dotfiles is being installed...'
git clone https://github.com/kazu-gor/dotfiles.git ./dotfiles
