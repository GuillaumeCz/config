set runtimepath^=~/.vim runtimepath+=~/.vim/after

let &packpath = &runtimepath
source ~/.vimrc

call plug#begin("~/.vim/plugged")

Plug 'tpope/vim-commentary' " keystroke to comment automatically
Plug 'henrik/vim-indexed-search' " display the result when searching (At match #N out of M matches)
Plug 'wellle/targets.vim' " add new text object (can delete between comma with di, and else)
Plug 'machakann/vim-highlightedyank' " highlight briefely every yanked text
Plug 'chaoren/vim-wordmotion' " camel case and other motion
Plug 'itchyny/lightline.vim' " Status bar
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind']} | Plug 'tiagofumo/vim-nerdtree-syntax-highlight' | Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-fugitive' | Plug 'mhinz/vim-signify' " wrapper for git and display git diff in the left gutter

" JS 
Plug 'w0rp/ale' " run eslint/ prettier cmds
Plug 'pangloss/vim-javascript'

call plug#end()

set rtp+=~/.vim/plugged/nerdtree

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Nerdtree
nnoremap <C-t> :NERDTreeFocus<CR>

set clipboard+=unnamedplus

" save undo trees in file
set undofile
set undodir=~/.vim/undo

" number of undo saved
set undolevels=10000

syntax on

" Start NERDTree when vim is started and put the cursor back in the other
" window
autocmd VimEnter * NERDTree

autocmd BufWinEnter * silent NERDTreeMirror

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

let g:ale_fixers = { 'javascript': ['eslint'], }
let g:ale_fix_on_save = 1

set relativenumber
set ignorecase
set smartcase
