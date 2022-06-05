# Dotfiles Ubuntu
This is a collection of dotfiles and scripts I use for customizing Ubuntu to my liking and setting up the software development tools.

![Example](example.gif)

## Prerequisites Linux:
- X11
- GNOME Shell
- wget or curl
- git

## Prerequisites MacOS
- XCode
- git

## Versions
Tested on fresh installed Ubuntu versions:
- 20.04
- 21.10
- 22.04

## Installation using wget
```
  bash <(wget -O- https://raw.github.com/AlessioCoser/dotfiles-ubuntu/master/install)
```

## Installation using curl
```
  bash <(curl https://raw.github.com/AlessioCoser/dotfiles-ubuntu/master/install -L -o -)
```

## Custom installation
```sh
cd ~
git clone https://github.com/AlessioCoser/dotfiles-ubuntu.git dotfiles
cd dotfiles

# You can remove/edit the scripts which you don't need
./install
```
