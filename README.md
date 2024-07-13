
[<img src="https://daiderd.com/nix-darwin/images/nix-darwin.png" width="200px" alt="logo" />](https://github.com/LnL7/nix-darwin)


# Nix-darwin files

This repository contains all nix-darwin items I use to setup my MacOS system.

It is very much a work-in-progress as this is the nature of nix files.

This contains:

 - Nix flake
 - home-manager setup
 - darwin setup
 - homebrew setup

A few design choices went in here, firstly, I chose to use homebrew over nixpkgs for GUI applications as `/nix/store` symlinks into `/Applications` just don't work as intended for the indexer (Spotlight Search (⌘+Space)) as Mac does not follow symlinks. 

Additionally, I am using nixvim to configure vim, rather than using a custom strapped vim configuration. This is likely to change once nvChad is supported in nix proper.



## Deployment

To deploy this you need to have the following:

### nix

```
curl -L https://nixos.org/nix/install | sh
```


### nix-darwin

- https://github.com/LnL7/nix-darwin?tab=readme-ov-file#step-1-creating-flakenix

Follow the installation of it on your system and ensure you have the following darwin-*:
```
darwin-help
darwin-option
darwin-rebuild
darwin-uninstaller
darwin-version
```




## Installation

- Clone this project and put it into `~/.config/nix`
    
