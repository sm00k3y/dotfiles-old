set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set wildmenu
set relativenumber
set nohls
set nowrap
set mouse=nv

call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'davidhalter/jedi-vim'
Plug 'neomake/neomake'
Plug 'tpope/vim-fugitive'
" Plug 'zchee/deoplete-jedi'

call plug#end()

" It works autmatically with venv
"let g:python3_host_prog = '/home/sm0k3y/.config/nvim/py3venv/venv/bin/python'
let g:neomake_python_enabled_makers = ['flake8']

let g:deoplete#enable_at_startup = 1
" Navigate with tab
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" Close preview window
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"


let g:gruvbox_contrast_dark = 'soft'
colorscheme gruvbox
set background=dark

let mapleader = ","

let g:netrw_liststyle=3 " Directory version of netrw
let g:netrw_banner=0 " Without the top banner
let g:netrw_browse_split=2 " Opens selected window in the same place
let g:netrw_winsize=20 " 20% of scren
let g:netrw_altv=1 " Not sure about that one

nnoremap <leader>p :NERDTreeToggle<CR>

inoremap jj <ESC>

noremap <F3> :Neomake<CR>
