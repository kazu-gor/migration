#!/bin/bash

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

# -- install homebrew ---------------------------------------------------------------------
echo 'Homebrew is being installed...'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> $HOME/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo 'Brewfile contents is being installed...'
brew bundle -v 

# -- compauditのinsecureエラーを回避する---------------------------------------------------
compaudit | xargs chmod g-w

# -- pure path setting --------------------------------------------------------------------
fpath+=("$(brew --prefix)/share/zsh/site-functions")

# -- fzf completion path ------------------------------------------------------------------
$(brew --prefix)/opt/fzf/install

# -- nodebrew settings --------------------------------------------------------------------
mkdir -p ~/.nodebrew/src
nodebrew install-binary latest
nodebrew ls | head -n 1 | xargs nodebrew use
nodebrew ls
node -v
npm -v
