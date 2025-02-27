# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## How use it?

### back up the current neovim configs and remove cache
mv ~/.local/share/nvim ~/.local/share/nvim.bk &&
mv ~/.local/state/nvim ~/.local/state/nvim.bk &&
rm -rf ~/.cache/nvim

### clone the project
Use git clone <this repository url> ~/.config/nvim

Open neovim and enjoy.
nvim . or nvim command in terminal

### About my configs
Actually i use LazyVim because is easy to used, have good documents, standard structure. All in one!
I change some of configs and add some of features that's not much but it's good for Laravel and php developers.

### What you need!
You should understand about how install packages in your operating system and how use package manager. for me i use Arch linux i use pacman and yay package manager.

the directories of configs in linux are ~/.config/nvim. If you use mac or windows that's the same config just directories are different. just search about that and read documentery where is the directories for neovim configs.

For compiling the some packages you need to install some default software and technologies like nodejs, cmake, g++ or something like that, you can use :checkheath in neovim for show the information what you need. Actually you can find every messages and errors in neovim with :messages command in neovim.

So remember use :checkheath and :messages command in neovim!

### How customized?
Everything you need is just reading LazyVim documentation. actualy is use it, i just adapted for laravel environment. so Everything you need to customized is easy by reading lazyvim documentation.

### If using the lazyvim why should use this config!?
Actually if you using Laravel environment, You can use this because i fixed blade templates syntax highlighting and optimize some of feautres. Blade formatter and yep..!

### Another brannches
Actually if you want to use packer is have good start point, you can use the this repo branches, you can use the last branch of this repo, but i recommand you using this!
