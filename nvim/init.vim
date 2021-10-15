set shell=/bin/bash

source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/ale.vim
source $HOME/.config/nvim/keys/which-key.vim

" YAML
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Set up :make to use fish for syntax checking.
autocmd FileType fish compiler fish

" Set this to have long lines wrap inside comments.
autocmd FileType fish setlocal textwidth=79

" Enable folding of block structures in fish.
autocmd FileType fish setlocal foldmethod=expr

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

autocmd FileType pandoc inoremap <C-Space> <C-x><C-o>
autocmd FileType pandoc inoremap <C-@> <C-Space>
let g:coc_filetype_map = {
	\ 'pandoc': 'markdown',
	\ }

