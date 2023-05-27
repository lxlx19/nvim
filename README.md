# My Personal Configuration for Neovim

## Installation 

### Install Neovim in Manjaro (my favorite distro)
> Unix
```shell
sudo pacman -Sy neovim 
```

### Install Packer
> Unix
```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### Install Configuration 
> Unix
```shell
https://github.com/lxlx19/nvim.git ~/.config/nvim 
```

### Remove the git file
> Unix
```shell
rm -rf ~/config/nvim/.git
```

### Start Neovim and Install Plugins
> Unix
```shell
nvim 
:PackerSync
```

### Check the installation 
> Unix
```shell
:checkhealth
```
