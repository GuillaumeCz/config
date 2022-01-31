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

Plug 'neoclide/coc.nvim', {'branch': 'release'} " Coc <3
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}


Plug 'tpope/vim-fugitive' | Plug 'mhinz/vim-signify' " wrapper for git and display git diff in the left gutter

" JS 
Plug 'w0rp/ale' " run eslint/ prettier cmds
Plug 'pangloss/vim-javascript'

" GO
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"" COC
" use <cr> to confirm completion
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set clipboard+=unnamedplus

" increase space for displaying messages
set cmdheight=2

" save undo trees in file
set undofile
set undodir=~/.vim/undo

" number of undo saved
set undolevels=10000

syntax on

let g:ale_fixers = { 'javascript': ['eslint'], }
let g:ale_fix_on_save = 1

" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

" Go auto import
let g:go_fmt_command = "goimports"

" Go status line types/signature
let g:go_auto_type_info = 1

set relativenumber
set number
set ignorecase
set smartcase
