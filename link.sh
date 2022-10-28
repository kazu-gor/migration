# symbolic links
GITDIR_PATH=~/transition/dotfiles/
# GITDIR_PATH=~/dev/git/dotfiles
echo "GITDIR_PATH=$GITDIR_PATH"

## ~/.zshrc
ln -fnsv $GITDIR_PATH/.zshrc ~/.zshrc

## ~/.tmux.conf
ln -fnsv $GITDIR_PATH/.tmux.conf ~/.tmux.conf

## ~/.zsh_history
ln -fnsv $GITDIR_PATH/.zsh_history ~/.zsh_history

## neovim
mkdir -p ~/.config/nvim/lua
mkdir -p ~/.config/nvim/plugin
ln -fnsv $GITDIR_PATH/.config/nvim/init.lua ~/.config/nvim/init.lua
ln -fnsv $GITDIR_PATH/.config/nvim/lua/autocmd.lua ~/.config/nvim/lua/autocmd.lua
ln -fnsv $GITDIR_PATH/.config/nvim/lua/keymaps.lua ~/.config/nvim/lua/keymaps.lua
ln -fnsv $GITDIR_PATH/.config/nvim/lua/options.lua ~/.config/nvim/lua/options.lua
ln -fnsv $GITDIR_PATH/.config/nvim/lua/plugin.lua ~/.config/nvim/lua/plugin.lua
ln -fnsv $GITDIR_PATH/.config/nvim/plugin/packer_compiled.lua ~/.config/nvim/plugin/packer_compiled.lua

## vscode
mkdir -p ~/.config/Code/User
ln -fnsv $GITDIR_PATH/.config/Code/User/keybindings.json ~/.config/Code/User/keybindings.json
ln -fnsv $GITDIR_PATH/.config/Code/User/settings.json ~/.config/Code/User/settings.json
