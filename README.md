# My Personal Configuration for Neovim

## Installation 

### Install Neovim in Manjaro (my personal distro)
'''bash
sudo pacman -S neovim 
'''

### Install Packer
'''bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
'''

### Install Configuration 
'''bash 
https://github.com/lxlx19/nvim.git ~/.config/nvim 
''''

### Remove the git file
'''bash 
rm -rf ~/config/nvim/.git
'''

### Start Neovim and Install Plugins
'''bash
nvim 
:PackerSync
'''

### Check the installation 
'''bash 
:checkhealth
'''
