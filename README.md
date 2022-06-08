# dotfiles

> Window 10 only (for now)

## Requirements

> Install in order

- [Windows Terminal Preview](https://github.com/microsoft/terminal)
- [Powershell 7.+](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.2)
- [PSReadLine](https://github.com/PowerShell/PSReadLine)
- [Terminal-Icons](https://github.com/devblackops/Terminal-Icons)
- [Posh-Git](https://github.com/dahlbyk/posh-git)
- [Nerd Fonts](https://www.nerdfonts.com)
- [NodeJS](https://nodejs.org/es/)
- [Kite](https://www.kite.com/)
- [Scoop](https://scoop.sh/)

## Setup

1. Put this into your `$PROFILE`

```ps1
. $env:USERPROFILE\.config\powershell\user_profile.ps1
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
```

2. Install scoop and dependencies:

```sh
iwr -useb get.scoop.sh | iex
scoop bucket add main
scoop install git
scoop bucket add extras
scoop update
scoop install bat gcc less neofetch neovim oh-my-posh starship sudo
```

3. ```sh
   mkdir ~/github
   ```

4. Clone this repo `git clone https://github.com/matearg/dotfiles.git` into ~/github

> For nvim:

5. After that:

```sh
mkdir ~/AppData/Local/nvim/
ni ~/AppData/Local/nvim/init.vim
ni ~/AppData/Local/nvim/coc-settings.json
```

6. Put this into ~/AppData/Local/nvim/init.vim:

```vimscript
" Import configs from ~/github/dotfiles/nvim/init.vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/github/dotfiles/nvim/init.vim
```

7. And this into ~/AppData/Local/nvim/coc-settings.json:

```json
{
  "diagnostic.errorSign": "",
  "diagnostic.warningSign": "",
  "diagnostic.infoSign": "",
  "diagnostic.hintSign": "",
  "colors.filetypes": [""],
  "diagnostic.virtualText": false,
  "diagnostic.virtualTextCurrentLineOnly": false,
  "hover.target": "float"
}
```

8. Open nvim and wait until your plugins get installed. Close nvim

9. Reopen nvim and run `CocInstall coc-prettier coc-html coc-highlight coc-tsserver coc-pyright coc-markdownlint coc-lua coc-json coc-css coc-clangd`

10. Run `. $PROFILE` in the terminal to reload your powershell profile

### TODO

- Create the same repository for GNU systems
