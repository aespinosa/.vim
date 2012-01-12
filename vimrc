runtime bundle/vim-pathogen/autoload/pathogen.vim
" Bundle: tpope/vim-pathogen
call pathogen#infect()
call pathogen#helptags()

" Bundle: acx0/Conque-Shell
" Bundle: aespinosa/Swift-vim
" Bundle: altercation/vim-colors-solarized
" Bundle: ervandew/screen
" Bundle: mileszs/ack.vim
" Bundle: msanders/snipmate.vim
" Bundle: scrooloose/nerdcommenter
" Bundle: scrooloose/syntastic
" Bundle: tpope/vim-bundler
" Bundle: tpope/vim-fugitive
" Bundle: tpope/vim-git
" Bundle: tpope/vim-rake
" Bundle: tpope/vim-surround
" Bundle: vim-ruby/vim-ruby
" Bundle: Align
" Bundle: bufexplorer.zip
" Bundle: matchit.zip
" Bundle: taglist.vim
" Bundle: TWiki-Syntax

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

syntax enable

" Visual options
if has("gui_running")
  colorscheme solarized
  set background=dark
  set guioptions-=m
  set guioptions-=r
  set guioptions-=L
  if has("win32")
    set encoding=utf-8
    set guifont=Consolas:h9
  else
    set guifont=Consolas\ 9
  endif
else
  "let g:solarized_degrade=1
  "let g:solarized_termcolors=256
  "let g:solarized_termtrans=1
  "set t_Co=16
  set background=dark
  colorscheme solarized
  set mouse=a
endif
set number
set winminheight=0

set nowrap
set listchars=tab:▸\ ,eol:¬
set list

set foldmethod=syntax
set foldlevel=1
set iskeyword=@,48-57,_,-,:,192-255
set modeline

autocmd Filetype mail set bg:light
autocmd Filetype tex set bg:light
