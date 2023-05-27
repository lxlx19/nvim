# My Personal Configuration for Neovim

## Installation 

### Install Neovim in Manjaro (my personal distro)

```shell
sudo pacman -S neovim 
'''

### Install Packer

```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### Install Configuration 

```shell
https://github.com/lxlx19/nvim.git ~/.config/nvim 
```

### Remove the git file

```shell
rm -rf ~/config/nvim/.git
```

### Start Neovim and Install Plugins

```shell
nvim 
:PackerSync
```

### Check the installation 

```shell
:checkhealth
```
