call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'digitaltoad/vim-jade'
Plug 'raimondi/delimitmate'
Plug 'mhinz/vim-startify'
Plug 'easymotion/vim-easymotion'
Plug 'kshenoy/vim-signature'
call plug#end()

set mouse=

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Enable plugins and load plugins for the detected file type
filetype plugin indent on
" Turn syntax highlighting on
syntax on

highlight SignColumn ctermbg=16 guibg=#000000

set wrap
set autoindent
set smartindent
set tabstop=2 shiftwidth=2 expandtab

set relativenumber
set number
set ignorecase
set smartcase
set cc=80
set noswapfile
set so=20
set textwidth=80

set updatetime=100
set signcolumn=yes

set autoread

autocmd BufWritePre * :%s/\s\+$//e

let mapleader = " "

" Fzf
noremap <leader>f :Ag<CR>
noremap <leader>ff :Files<CR>
noremap <leader>F :GFiles<CR>
noremap <Tab><Tab> :GFiles<CR>


noremap <C-z> <C-r>


" Coc
set hidden
set cmdheight=2
set shortmess+=c
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
" format selected code
"xmap <leader>f <Plug>(coc-format-selected)
"nmap <leader>f <Plug>(coc-format-selected)
" Apply AutoFix to problem on the current line.
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
