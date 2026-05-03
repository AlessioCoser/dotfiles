# Dotfiles Arch & MacOS
This is a collection of dotfiles and scripts I use for customizing Arch Linux (or Manjaro) and MacOS to my liking and setting up the software development tools.

The install scripts are **idempotent**: re-running them on an already-configured machine is safe and skips what's already done.

## Prerequisites Arch / Manjaro
- GNOME Shell
- wget or curl
- git
- sudo

## Prerequisites MacOS
- XCode (+ `xcode-select --install || true && sudo xcodebuild -license accept || true`)
- wget or curl
- git

## Versions
Tested on fresh installed versions:
- MacOS Tahoe 26.2
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

## Manual installation
```sh
cd ~
git clone https://github.com/AlessioCoser/dotfiles.git dotfiles
cd dotfiles
./install
```

## Run a single script
After cloning, you can re-run a specific script by passing its filename as argument (skipping git pull):
```sh
cd ~/dotfiles
./install 003_zsh
./install 010_visual_studio_code
```
The available scripts for your OS are in `scripts/macos/` or `scripts/arch/`.

## Configs only (standard / non-admin user on macOS)
On a Mac shared with another user where Homebrew has already been installed by an admin, a standard user can't write to the shared `/opt/homebrew` prefix. Run with `configs` to apply only the dotfile configurations and skip `brew install`:
```sh
./install configs
```
All non-install steps still run (linking config files, `defaults write`, `mise install`, `uv python install`, `code --install-extension`, `brew services`, etc.) — they only touch `$HOME`.
