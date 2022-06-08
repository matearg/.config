" Plugins
" If plug.vim is not into autoload directory, add it.
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/AppData/Local/nvim-data/plugins')

" Themes
Plug 'navarasu/onedark.nvim'

" Other plugins
Plug 'nvim-telescope/telescope.nvim'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/vim-emoji'
Plug 'goolord/alpha-nvim'
Plug 'folke/which-key.nvim'
Plug 'moll/vim-bbye'

" Lua useful plugins
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

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
Plug 'vim-python/python-syntax'
Plug 'ap/vim-css-color'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Statuslines
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

" Not in use
" Plug 'alvan/vim-closetag'
" Plug 'vim-syntastic/syntastic'

call plug#end()
