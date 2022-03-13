# dotfiles

## Requirements
* [Scoop](https://scoop.sh/)
* [Powershell 7.+](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.2)
* [Neofetch](https://github.com/dylanaraps/neofetch)
* [Starship](https://starship.rs/)
* [Oh-My-Posh](ohmyposh.dev/)
* [Terminal-Icons](https://github.com/devblackops/Terminal-Icons)
* [PSReadLine](https://github.com/PowerShell/PSReadLine)
* [Posh-Git](https://github.com/dahlbyk/posh-git)
* [NodeJS](https://nodejs.org/es/)
* [Kite](https://www.kite.com/)
* [GitHub Compilot](https://copilot.github.com/)

> For nvim:

* In Windows:

Before moving /nvim to your ~/.config:

```
mkdir ~/AppData/Local/nvim/
mkdir ~/AppData/Local/nvim/plugged
ni ~/AppData/Local/nvim/init.vim
```

Put this into ~/AppData/Local/nvim/init.vim:

```
" Import configs from ~/.vimrc
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.config/nvim/.vimrc
```
