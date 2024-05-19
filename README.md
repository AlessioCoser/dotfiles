# Dotfiles Ubuntu & MacOs
This is a collection of dotfiles and scripts I use for customizing Ubuntu and MacOS to my liking and setting up the software development tools.

## Prerequisites Ubuntu:
- GNOME Shell
- wget or curl
- git

## Prerequisites MacOS
- XCode (+ `xcode-select --install || true && sudo xcodebuild -license accept || true`)
- wget or curl
- git

## Versions
Tested on fresh installed versions:
- MacOS 12.4 Monterey
- MacOS 13.2 Ventura
- Ubuntu 20.04
- Ubuntu 21.10
- Ubuntu 22.04
- Manjaro
- Arch

## Installation using wget
```
  bash <(wget -O- https://raw.github.com/AlessioCoser/dotfiles/master/install)
```

## Installation using curl
```
  bash <(curl https://raw.github.com/AlessioCoser/dotfiles/master/install -L -o -)
```

## Custom installation
```sh
cd ~
git clone https://github.com/AlessioCoser/dotfiles.git dotfiles
cd dotfiles

# You can select the scripts you want to apply
./install custom
```
