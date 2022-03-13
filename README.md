# dotfiles
> Here I will put all mi dotfiles :)

>> For nvim:

* In Windows:

Before moving nvim folder to your ~/.config folder:

```
mkdir ~/AppData/Local/nvim/
mkdir ~/AppData/Local/nvim/plugged
ni ~/AppData/Local/nvim/init.vim
```
* Put this into ~/AppData/Local/nvim/init.vim:
```
" Import configs from ~/.vimrc
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.config/nvim/.vimrc
```
