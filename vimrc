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
  set guifont=Consolas\ 8
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
