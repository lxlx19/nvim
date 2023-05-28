# My Personal Configuration for Neovim

## Requirements
**[<kbd> <br> python <br> </kbd>][python]** 
**[<kbd> <br> node <br> </kbd>][node]** 
**[<kbd> <br> npm <br> </kbd>][npm]** 
**[<kbd> <br> cargo <br> </kbd>][cargo]**
**[<kbd> <br> ripgrep <br> </kbd>][ripgrep]**


[python]: https://www.python.org/
[node]: https://nodejs.org/en
[npm]: https://www.npmjs.com/
[cargo]: https://github.com/rust-lang/cargo
[ripgrep]: https://github.com/BurntSushi/ripgrep

## Installation 

### Install Neovim in Manjaro (my favorite distro)
> Unix
```shell
sudo pacman -Sy neovim 
```

### Install Configuration 
> Unix
```shell
git clone https://github.com/lxlx19/nvim.git ~/.config/nvim 
```

### Remove the git file
> Unix
```shell
rm -rf ~/config/nvim/.git
```

### Start Neovim and Install Plugins
> Unix
```shell```
nvim 
:PackerSync
```

### Check the installation 
> Unix
```shell
:checkhealth
```
