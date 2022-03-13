# dotfiles

> Window 10 only (for now)

## Requirements

> Install in order

* [Windows Terminal Preview](https://github.com/microsoft/terminal)
* [Powershell 7.+](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.2)
* [PSReadLine](https://github.com/PowerShell/PSReadLine)
* [Terminal-Icons](https://github.com/devblackops/Terminal-Icons)
* [Posh-Git](https://github.com/dahlbyk/posh-git)
* [Scoop](https://scoop.sh/)
* [Nerd Fonts](https://www.nerdfonts.com)
* [Starship](https://starship.rs/)
* [Oh-My-Posh](ohmyposh.dev/)
* [Neofetch](https://github.com/dylanaraps/neofetch)
* [NodeJS](https://nodejs.org/es/)
* [Kite](https://www.kite.com/)

## Setup:

1. Put this into your `$PROFILE`

```
. $env:USERPROFILE\.config\powershell\user_profile.ps1
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
```

2. Install scoop and dependencies:

```
iwr -useb get.scoop.sh | iex
scoop install git
scoop bucket add extras
scoop update
scoop install bat gcc less neofetch neovim oh-my-posh starship sudo
```

3. Clone this repo `git clone https://github.com/matearg/dotfiles.git` into your home directory

4. Move ~/dotfiles content to ~/.config

> For nvim:

5. Before moving ~/dotfiles/nvim to your ~/.config:

```
mkdir ~/AppData/Local/nvim/
mkdir ~/AppData/Local/nvim/plugged
ni ~/AppData/Local/nvim/init.vim
```

6. Put this into ~/AppData/Local/nvim/init.vim:

```
" Import configs from ~/.config/nvim/.vimrc
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.config/nvim/.vimrc
```

7. Open nvim and wait until your plugins get installed. Close nvim

8. Put `. $PROFILE` in the terminal to reload your powershell profile

9. ENJOY!!

### TODO

* Create the same repository for GNU systems
* Pass nvim configs to lua
