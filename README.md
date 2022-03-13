# .config
> Here I will put all mi dotfiles :)

* In Windows:
```
mkdir C:/Users/<username>/AppData/Local/nvim/
mkdir C:/Users/<username>/AppData/Local/nvim/plugged
ni C:/Users/<username>/AppData/Local/nvim/init.vim
```
  * Put this into C:/Users/\<username>/AppData/Local/nvim/init.vim:
  ```
  " Import configs from ~/.vimrc
  set runtimepath^=~/.vim runtimepath+=~/.vim/after
  let &packpath = &runtimepath
  source ~/.config/nvim/.vimrc
  ```
