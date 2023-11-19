Clone the repo as ```~/.config/nvim```.

### Fuzzy Finder:
```
sudo apt install fzf ripgrep
```
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

### Neovim
Add neovim as soft link for using it as git's default editor:
```
sudo ln -s ~/apps/nvim/bin/nvim /usr/bin/.
```
[Release page](https://github.com/neovim/neovim/releases), last stable v0.9.4. <br>
Install [Packer](https://github.com/wbthomason/packer.nvim).
Go to packer.lua in neovim, source it, then ``:PackerSync``

### Tmux
```
sudo apt install tmux
```
Install [Tmux manager](https://github.com/tmux-plugins/tpm) <br>
Open ~/.tmux.conf and source it (Ctrl+Space+I).

### Other
* [LazyGit](https://github.com/jesseduffield/lazygit)
* [Warpd](https://github.com/rvaiya/warpd)
