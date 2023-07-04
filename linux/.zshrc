export HISTORY_IGNORE="(clear|ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

setopt GLOBDOTS
setopt SHARE_HISTORY
setopt HISTIGNOREDUPS
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=/home/mateo/.zsh_history
zstyle ':completion:*' menu select
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit && compinit
zmodload -i zsh/complist

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Make neovim the default editor
export EDITOR='nvim'
export VISUAL='nvim'

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

### ALIASES ###
alias ls='lsd -AlFh'
alias la='lsd -alFh'
alias ll='lsd -al'
alias l='lsd'
alias l.="/bin/ls -A | egrep '^\.'"

#reload config
alias so='clear; source ~/.zshrc'

#fix obvious typo's
alias cd..='cd ..'
alias ..='cd ..'
alias pdw='pwd'
alias udpate='sudo pacman -Syyu'
alias upate='sudo pacman -Syyu'
alias updte='sudo pacman -Syyu'
alias updqte='sudo pacman -Syyu'
alias upqll='paru -Syu --noconfirm'
alias upal='paru -Syu --noconfirm'
alias g='git'
alias gg="lazygit"
alias at="alacritty-themes"
alias cat="bat"

# Neovim
alias vim='nvim'
alias v='nvim'
alias vi='/bin/vim'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#readable output
alias df='df -h'

#keyboard
alias give-me-qwerty-es="setxkbmap -layout latam"
alias give-me-qwerty-us="setxkbmap -layout us"

#pacman unlock
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias rmpacmanlock="sudo rm /var/lib/pacman/db.lck"

#arcolinux logout unlock
alias rmlogoutlock="sudo rm /tmp/arcologout.lock"

#which graphical card is working
alias whichvga="/usr/local/bin/arcolinux-which-vga"

#free
alias free="free -mt"

# Aliases for software managment
# pacman or pm
alias pacman='sudo pacman --color auto'
alias paru='paru --color auto'
alias update='sudo pacman -Syyu'

#grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

#add new fonts
alias update-fc='sudo fc-cache -fv'

#switch between bash and zsh
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

#switch between lightdm and sddm
alias tolightdm="sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings --noconfirm --needed ; sudo systemctl enable lightdm.service -f ; echo 'Lightm is active - reboot now'"
alias tosddm="sudo pacman -S sddm --noconfirm --needed ; sudo systemctl enable sddm.service -f ; echo 'Sddm is active - reboot now'"
alias toly="sudo pacman -S ly --noconfirm --needed ; sudo systemctl enable ly.service -f ; echo 'Ly is active - reboot now'"

#check vulnerabilities microcode
alias microcode='grep . /sys/devices/system/cpu/vulnerabilities/*'

#Cleanup orphaned packages
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

#search content with ripgrep
alias rg="rg --sort path"

#neovim for important configuration files
#know what you do in these files
alias nb="$EDITOR ~/.bashrc"
alias nz="$EDITOR ~/github/dotfiles/linux/.zshrc"
alias nv="$EDITOR ~/.config/nvim/init.lua"
alias nt="$EDITOR ~/github/dotfiles/linux/alacritty/alacritty.yml"
alias nk="$EDITOR ~/github/dotfiles/linux/kitty/kitty.conf"
alias nq="$EDITOR ~/.config/qtile"
alias np="$EDITOR ~/.config/picom"
alias nlightdm="$EDITOR /etc/lightdm/lightdm.conf"
alias npacman="sudo $EDITOR /etc/pacman.conf"
alias ngrub="sudo $EDITOR /etc/default/grub"
alias nconfgrub="sudo $EDITOR /boot/grub/grub.cfg"
alias nmirrorlist="sudo $EDITOR /etc/pacman.d/mirrorlist"
alias nsddm="sudo $EDITOR /etc/sddm.conf"
alias nfstab="sudo $EDITOR /etc/fstab"
alias nhosts="sudo $EDITOR /etc/hosts"
alias nhostname="sudo $EDITOR /etc/hostname"
alias nneofetch="$EDITOR ~/.config/neofetch/config.conf"

#fixes
alias fix-permissions="sudo chown -R $USER:$USER ~/.config ~/.local"

#wallpaper set
alias wallpaper="feh --bg-fill"

#maintenance
alias big="expac -H M '%m\t%n' | sort -h | nl"

#systeminfo
alias probe="sudo -E hw-probe -all -upload"
alias sysfailed="systemctl list-units --failed"

#shutdown or reboot
alias ssn="sudo shutdown now"
alias sr="sudo reboot"

#give the list of all installed desktops - xsessions desktops
alias xd="ls /usr/share/xsessions"

#colorpicker
alias color="colorpicker --short --one-shot"

#remove
alias rmgitcache="rm -r ~/.cache/git"

#clear
alias clean="clear; seq 2 $(tput cols) | sort -R | sparklines | lolcat"

#get fastest mirrors in your neighborhood
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 30 --number 10 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 30 --number 10 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 30 --number 10 --sort age --save /etc/pacman.d/mirrorlist"

# extract = EXtractor for all kinds of archives
# usage: extract <file>
extract ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

_fix_cursor() {
   echo -ne '\e[5 q'
}

precmd_functions+=(_fix_cursor)

# curl -sL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh -o ~/.sudo.plugin.zsh
if [ -f ~/.sudo.plugin.zsh ]; then
  source ~/.sudo.plugin.zsh
fi

# sudo pacman -S zsh-syntax-highlighting
if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# sudo pacman -S zsh-autosuggestions
if [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# paru -S zsh-z
if [ -f /usr/share/zsh/plugins/zsh-z/zsh-z.plugin.zsh ]; then
  source /usr/share/zsh/plugins/zsh-z/zsh-z.plugin.zsh 
fi

# neofetch
# pfetch
# zfetch
# colorscript random
eval "$(starship init zsh)"
export STARSHIP_CONFIG=/home/mateo/github/dotfiles/linux/starship-themes/mvp.toml
