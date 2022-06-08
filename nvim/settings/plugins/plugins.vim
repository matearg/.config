" Plugins
" If plug.vim is not into autoload directory, add it.
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugins')

" Themes
Plug 'navarasu/onedark.nvim'
Plug 'sainnhe/gruvbox-material'

" Other plugins
Plug 'nvim-telescope/telescope.nvim'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/vim-emoji'
Plug 'goolord/alpha-nvim'
Plug 'folke/which-key.nvim'
Plug 'moll/vim-bbye'

" Lua useful plugins
Plug 'nvim-lua/popup.nvim'  " An implementation of the Popup API from vim in Neovim
Plug 'nvim-lua/plenary.nvim'  " Useful lua functions used ny lots of plugins

" Git integrations
Plug 'itchyny/vim-gitbranch'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'

" File management
Plug 'ahmedkhalf/project.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" IDE plugins
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'vim-syntastic/syntastic'
Plug 'vim-python/python-syntax'
Plug 'ap/vim-css-color'
Plug 'sheerun/vim-polyglot'
Plug 'lukas-reineke/indent-blankline.nvim'  " Indentation with a blank line
Plug 'tpope/vim-commentary'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Statuslines
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

call plug#end()
