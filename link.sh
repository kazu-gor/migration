# git clone
echo 'dotfiles are being installed...'
git clone https://github.com/kazu-gor/dotfiles.git $(pwd)/dotfiles

# symbolic links
echo symbolic links are being setting...
DOTFILES_PATH=$(pwd)/dotfiles

echo "dotfile paths are $DOTFILES_PATH..."
## ~/.zshrc
echo ~/.zshrc are being setting...
ln -fnsv $DOTFILES_PATH/.zshrc ~/.zshrc

## ~/.tmux.conf
echo ~/.tmux.conf are being setting...
ln -fnsv $DOTFILES_PATH/.tmux.conf ~/.tmux.conf

## ~/.zsh_history
echo ~/.zsh_history are being setting...
ln -fnsv $DOTFILES_PATH/.zsh_history ~/.zsh_history

## neovim
echo NeoVim are being setting...
mkdir -p ~/.config/nvim/lua
mkdir -p ~/.config/nvim/plugin
ln -fnsv $DOTFILES_PATH/.config/nvim/init.lua ~/.config/nvim/init.lua
ln -fnsv $DOTFILES_PATH/.config/nvim/lua/autocmd.lua ~/.config/nvim/lua/autocmd.lua
ln -fnsv $DOTFILES_PATH/.config/nvim/lua/keymaps.lua ~/.config/nvim/lua/keymaps.lua
ln -fnsv $DOTFILES_PATH/.config/nvim/lua/options.lua ~/.config/nvim/lua/options.lua
ln -fnsv $DOTFILES_PATH/.config/nvim/lua/plugin.lua ~/.config/nvim/lua/plugin.lua
ln -fnsv $DOTFILES_PATH/.config/nvim/plugin/packer_compiled.lua ~/.config/nvim/plugin/packer_compiled.lua

## vscode
echo VSCode are being setting...
mkdir -p ~/.config/Code/User
ln -fnsv $DOTFILES_PATH/.config/Code/User/keybindings.json ~/.config/Code/User/keybindings.json
ln -fnsv $DOTFILES_PATH/.config/Code/User/settings.json ~/.config/Code/User/settings.json
