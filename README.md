### Installation

Download neovim (last stable v0.9.4):
[Release page](https://github.com/neovim/neovim/releases)

Add neovim as a soft link:
```
sudo ln -s ~/apps/nvim/bin/nvim /usr/bin/.
```
## Init repo files
```
sudo apt install stow
```
In the repository:
```
stow -t ~ --adopt .
```
The adopt option will override the repo's files, so resolve the conflicts locally.
