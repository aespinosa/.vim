" Pathogen plugin
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Bundle: git://github.com/vim-scripts/bufexplorer.zip.git
" Bundle: git://github.com/scrooloose/nerdcommenter.git
" Bundle: git://github.com/tpope/vim-surround.git
" Bundle: git://github.com/msanders/snipmate.vim.git
" Bundle: git://github.com/scrooloose/snipmate-snippets.git
" Bundle: git://github.com/vim-scripts/Align.git
" Bundle: git://github.com/aespinosa/Swift-vim.git
" Bundle: https://github.com/vim-scripts/matchit.zip.git
" Bundle: https://github.com/vim-scripts/taglist.vim.git
" Bundle: https://github.com/motemen/git-vim.git
" Bundle: https://github.com/ervandew/screen.git

" Editor formatting options
set sts:2
set ts:2
set shiftwidth:2
set textwidth=80
set expandtab

" Plugin options
filetype plugin on
filetype on
filetype indent on

" Visual options
if has("gui_running")
  set guioptions-=m
  set guioptions-=r
  set guioptions-=L
  set guifont=Consolas\ 11
  colorscheme desert
else
  set t_Co=256
  colorscheme desert256
  set mouse=a
endif
set number
set winminheight=0

set nowrap
set listchars=tab:▸\ ,eol:¬
set list

syntax enable
set foldmethod=syntax
set foldlevel=1
