" General settings
syntax on
filetype plugin indent on
set number relativenumber
set nu rnu
set autoindent
set noshowmode
set hidden
set termguicolors
set formatoptions-=cro                  " Stop newline continution of comments
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
set nofoldenable

set nowrap
" Permanent undo
set undodir=~/.vimdid
set undofile

" Proper search
set incsearch
set ignorecase
set smartcase
set gdefault

set mouse=a " Enable mouse usage (all modes) in terminals

set colorcolumn=120
set cursorline                          " Enable highlighting of the current line
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set clipboard=unnamedplus               " Copy paste between vim and everything else

colorscheme onehalflight
let g:airline_theme='onehalflight'

autocmd BufEnter * silent! normal! g`"
