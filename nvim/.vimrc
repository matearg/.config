"              /$$                                  
"             |__/                                  
"   /$$    /$$ /$$ /$$$$$$/$$$$   /$$$$$$   /$$$$$$$
"  |  $$  /$$/| $$| $$_  $$_  $$ /$$__  $$ /$$_____/
"   \  $$/$$/ | $$| $$ \ $$ \ $$| $$  \__/| $$      
"    \  $$$/  | $$| $$ | $$ | $$| $$      | $$      
"  /$$\  $/   | $$| $$ | $$ | $$| $$      |  $$$$$$$
" |__/ \_/    |__/|__/ |__/ |__/|__/       \_______/

" Plugins
" If plug.vim is not into autoload directory, add it.
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/AppData/Local/nvim/plugged')

" Themes
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', {'name':'dracula'}
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'ghifarit53/tokyonight-vim'

" Other plugins
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/vim-emoji'
Plug 'glepnir/dashboard-nvim'

" Git integrations
Plug 'itchyny/vim-gitbranch'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'

" File manage
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" IDE plugins
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'vim-syntastic/syntastic'
Plug 'vim-python/python-syntax'
Plug 'ap/vim-css-color'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kiteco/vim-plugin'
Plug 'github/copilot.vim'

" Statusline
"Plug 'maximbaz/lightline-ale'
"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'

call plug#end()

" Basic configs 
syntax on   " Enable syntax highlighting
set number   " Show line numbers
set numberwidth=1   " Show line numbers with 1 digit
set relativenumber   " Show relative line numbers
set mouse=a   " Enable mouse support
set clipboard=unnamedplus   " Enable clipboard support
set showcmd   " Show command in status line
set ruler   " Show a ruler
set encoding=UTF-8   " Set encoding
set showmatch   " Show matching brackets
set shiftwidth=4   " Set shiftwidth to 4
set tabstop=4   " Set tabstop to 4
set softtabstop=4   " Set softtabstop to 4
set expandtab   " Expand tabs to spaces
set autoindent   " Autoindent
set laststatus=2   " Show status bar
set noshowmode   " Disable showmode
set scrolloff=8   " Set scrolloff to 8
set nowrap   " Disable wrapping
set cursorline   " Highlight current line
set cmdheight=2   " Set cmdheight to 2
set signcolumn=auto   " Show signs in the right side of the screen
set noswapfile   " Disable swapfile
set hidden   " Hide buffers but let them open
set nobackup   " Disable backup files
set noswapfile   " Disable swapfile
set nowritebackup   " Disable writebackup
set updatetime=300   " Set update time to 300ms
set shortmess+=c   " Show messages in the status line
set nocompatible   " Disable vim compatibility

let mapleader = " "
let python_highlight_all = 1
let g:dashboard_default_executive = 'fzf'

" Mappings
imap jk <Esc>
nmap <leader>w :w <CR>
nmap <leader>q :q <CR>
nmap <leader>qa :qa <CR>
nmap <leader>x :x <CR>

" Theme configs
set termguicolors
set background=dark

" Here are some specific-theme configs
" Dracula
let g:dracula_italic = 0
" Tokyonight
let g:tokyonight_disable_italic_comment = 1
let g:tokyonight_style = 'night' " available: night, storm
" Gruvbox-material
let g:gruvbox_material_disable_italic_comment = 1
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_background = 'hard'

" Change the colorscheme
colorscheme tokyonight

" indentLine configs
let g:indentLine_char = '|'
let g:indentLine_fileTypeExclude = ['dashboard', 'help', 'fzf', 'floaterm']

" Ligthline configs
"let g:lightline = {
"      \ 'colorscheme': 'palenight',
"      \ 'active': {
"      \   'left': [ [ 'mode', 'paste' ],
"      \             [ 'absolutepath', 'readonly', 'githunks', 'gitbranch' ] ]
"      \ },
"      \ 'component_function': {
"      \   'gitbranch': 'FugitiveHead',
"      \   'githunks': 'LightlineGitGutter'
"      \ },
"      \ }
"
"function! LightlineGitGutter()
"  if !get(g:, 'gitgutter_enabled', 0) || empty(FugitiveHead())
"    return ''
"  endif
"  let [ l:added, l:modified, l:removed ] = GitGutterGetHunkSummary()
"  return printf('+%d ~%d -%d', l:added, l:modified, l:removed)
"endfunction

" Airline configs
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='tokyonight'
let g:airline_powerline_fonts = 1
let g:airline#extensions#clock#auto = 1
let g:airline#extensions#clock#format = '%H:%M'
let g:airline#extensions#clock#updatetime = 1000

" Nerd Tree configs
nmap <silent> <leader>nf :NERDTreeFind <CR>
nmap <silent> <leader>nt :NERDTreeToggle <CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1

" Gitgutter configs
let g:gitgutter_git_executable = 'C:\Users\mateo\scoop\shims\git.exe'
let g:gitgutter_map_keys = 0

" Syntastic configs
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

" FZF configs
nmap <silent> <leader>fz :Files <CR>
nmap <silent> <leader>fg :GFiles <CR>

" Floaterm configs
let g:floaterm_shell='"C:\Users\mateo\AppData\Local\Microsoft\WindowsApps\Microsoft.PowerShell_8wekyb3d8bbwe\pwsh.exe" -nologo'
nmap <silent> <leader>te :FloatermToggle <CR>

" Searching
set nohlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter Basic configurations

" Kite configs
" All the languages Kite supports
let g:kite_supported_languages = []
set completeopt+=menuone
set completeopt+=noselect
set completeopt+=noinsert
autocmd CompleteDone * if !pumvisible() | pclose | endif
nmap <silent> <leader>gK <Plug>(kite-docs)

" Coc configs
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.4.0 or vim >= 8.2.0750
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" NeoVim-only mapping for visual mode scroll
" Useful on signatureHelp after jump placeholder of snippet expansion
if has('nvim')
  vnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#nvim_scroll(1, 1) : "\<C-f>"
  vnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#nvim_scroll(0, 1) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
