# Dotfiles

## About

This is a collection of dotfiles and scripts I use for customizing my terminal environment, where I spend most of my time when working. The files here are currently used for customizing the following:

- Git [ in progress ]
- Zsh [ in progress ]

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## Installation
```sh
git clone https://github.com/brunoan99/.dotfiles.git ~/
~/.dotfiles/bootstrap.sh
```


## Note

Some of the files here are taken or modified from other users and as such,
everything here is for use freely under the [MIT License](LICENSE). Thanks to
Zach Holman (@holman), as the original project is based off of his dotfiles project:
https://github.com/holman/dotfiles

