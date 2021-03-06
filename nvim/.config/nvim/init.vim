"""
" Filename: ~/.config/nvim/init.vim
" Author: Daksh Miglani <hello@dak.sh> https://dak.sh
"""


call plug#begin()

" Colorscheme
Plug 'morhetz/gruvbox'

" Powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline_theme = "badwolf"

" NerdTree
Plug 'scrooloose/nerdtree'

" COC
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

" ALE (async linting)
Plug 'w0rp/ale'
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier','eslint'],
\   'rust': ['rustfmt']
\}
let g:ale_fix_on_save = 1
let g:ale_linters = {'markdown': ['remark'], 'sh': ['language_server'], 'java': ['javalsp'], 'javascript': ['eslint']}

" Close Tag
Plug 'alvan/vim-closetag'

" Auto Pairs
Plug 'jiangmiao/auto-pairs'

" HTML Completions
Plug 'mattn/emmet-vim'

" Nerd Commenter
Plug 'scrooloose/nerdcommenter'

" GraphQL
Plug 'jparise/vim-graphql'

call plug#end()

" encoding
set encoding=UTF-8

" Mouse Cursor
set mouse=a

" Syntax Color
syntax enable
syntax on

" Cursor Line
set cursorline

" ColorScheme
if (has("termguicolors"))
 set termguicolors
endif
set background=dark
colorscheme gruvbox

" Clipboard
set clipboard=unnamedplus

" 1 <TAB> == 2 <SPACES>
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" Relative Number Pane
set number
set relativenumber

" TMUX fix
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

""" The Keymaps

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" Tabs
map <C-k> :tabp<CR>
map <C-l> :tabn<CR>
