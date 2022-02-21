# Dotfiles Ubuntu
This is a collection of dotfiles and scripts I use for customizing Ubuntu to my liking and setting up the software development tools.

## Prerequisites:
- X11
- GNOME Shell
- curl and git `sudo apt install curl git`

## Versions
Tested on fresh installed Ubuntu versions:
- 20.04
- 21.10

## Installation
```
  curl https://raw.github.com/AlessioCoser/dotfiles-ubuntu/master/install -L -o - | bash
```

## Custom installation
```sh
cd ~
git clone https://github.com/AlessioCoser/dotfiles-ubuntu.git dotfiles
cd dotfiles

# You can remove/edit the scripts which you don't need

chmod a+x install
./install
```
