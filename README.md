# nvim-config
My Neovim configuration

## Installation

**1.** Install [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

**2.** Clone the repo to `~/.config/nvim`
```sh
$ mkdir ~/.config
$ git clone https://github.com/sakshamgupta05/vim-config.git ~/.config/nvim
```

**3.** Install [ripgrep](https://github.com/BurntSushi/ripgrep) for live_grep in telescope plugin
```sh
brew install ripgrep
```

**4.** Open Neovim by typing `nvim`

Enjoy!

## Reference

Plugins reference
https://www.lazyvim.org/

## To uninstall nvim completely

```sh
rm -rf .local/share/nvim
brew uninstall neovim
```

## GCC setup for treesitter on mac

```
# Check ouput of following commands. If clang is being used, go to the next step.
gcc --version
g++ --version

# Install gcc
brew install gcc
cd /opt/homebrew/bin
ln -s ./gcc-14 gcc
ln -s ./g++-14 g++

# These should now point to gcc
gcc --version
g++ --version
```