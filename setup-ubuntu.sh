# -- npm ----------------------------------------------------------------------
sudo apt-get install npm

# -- pure-prompt ---------------------------------------------------------------
npm install --global pure-prompt
echo 'fpath+=('/usr/local/lib/node_modules/pure_prompt/functions')' >> ~/.zshrc
compaudit | xargs chmod g-w

# -- fzf -----------------------------------------------------------------------
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# -- zsh-completions -----------------------------------------------------------
git clone https://github.com/zsh-users/zsh-completions.git
echo 'fpath=(path/to/zsh-completions/src $fpath)' >> ~/.zshrc
rm -f ~/.zcompdump; compinit

# -- fd-find -------------------------------------------------------------------
https://github.com/sharkdp/fd/releases/download/v8.5.3/fd-musl_8.5.3_amd64.deb ~/Downloads
cd ~/Downloads
sudo dpkg -i fd-musl_8.5.3_amd64.deb

