" Plugins
call plug#begin()
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'airblade/vim-gitgutter'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'plasticboy/vim-markdown'
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'vim-pandoc/vim-pandoc-syntax'
  Plug 'dag/vim-fish'
  Plug 'Yggdroot/indentLine'
  Plug 'scrooloose/nerdtree'
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'crusoexia/vim-monokai'
  Plug 'preservim/tagbar'
  Plug 'udalov/kotlin-vim'
  Plug 'morhetz/gruvbox'
  Plug 'ayu-theme/ayu-vim'
  Plug 'airblade/vim-rooter'
  Plug 'sheerun/vim-polyglot'
  Plug 'preservim/nerdcommenter'
  Plug 'tpope/vim-fugitive'
  Plug 'dense-analysis/ale'
  Plug 'mogelbrod/vim-jsonpath'
  Plug 'tpope/vim-sleuth'
  Plug 'liuchengxu/vim-which-key'
  Plug 'tpope/vim-surround'
  Plug 'honza/vim-snippets'
  Plug 'mhinz/vim-startify'
  Plug 'qpkorr/vim-bufkill'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'sonph/onehalf', { 'rtp': 'vim/' }
  Plug 'kergoth/vim-bitbake'
call plug#end()

" Coc Extensions
let g:coc_global_extensions = ['coc-json', 
      \ 'coc-yaml', 
      \ 'coc-python', 
      \ 'coc-rust-analyzer', 
      \ 'coc-prettier', 
      \ 'coc-snippets', 
      \ 'coc-actions']

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
