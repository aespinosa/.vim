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
" Bundle: https://github.com/tpope/vim-fugitive.git
" Bundle: https://github.com/ervandew/screen.git
" Bundle: git://github.com/altercation/vim-colors-solarized.git
" Bundle: git://github.com/vim-scripts/TWiki-Syntax.git
" Bundle: git://github.com/vim-scripts/Conque-Shell.git

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
  set background=dark
  set guioptions-=m
  set guioptions-=r
  set guioptions-=L
  set guifont=Consolas\ 11
else
  set background=dark
  set t_Co=16
  let g:solarized_termcolors=16
  set mouse=a
endif
colorscheme solarized
set number
set winminheight=0

set nowrap
set listchars=tab:▸\ ,eol:¬
set list

syntax enable
set foldmethod=syntax
set foldlevel=1
set iskeyword=@,48-57,_,-,:,192-255
set modeline
