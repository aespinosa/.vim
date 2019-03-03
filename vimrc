set nocompatible

" Git integration
" Bundle: tpope/vim-fugitive
" Bundle: tpope/vim-git

" Visual settings
" Bundle: chriskempson/base16-vim
if has("gui_running")
  colorscheme base16-atelier-lakeside-light
  set background=dark
  set guioptions-=m
  set guioptions-=r
  set guioptions-=L
  if has("win32")
    set encoding=utf-8
    set guifont=Consolas:h9
  else
    "set guifont=Consolas\ 9
  endif
else
  let base16colorspace=256
  colorscheme base16-atelier-lakeside-light
  set mouse=a
endif
set number
set winminheight=0
set laststatus=2
set nowrap
set listchars=tab:▸\ ,eol:¬
set list

" Bunch of tools
" Bundle: Align
" Bundle: matchit.zip
" Bundle: bufexplorer.zip
" Bundle: mileszs/ack.vim
" Bundle: scrooloose/syntastic
" Bundle: scrooloose/nerdcommenter
" Bundle: kien/ctrlp.vim

" Snipmate and dependencies
" Bundle: tomtom/tlib_vim
" Bundle: MarcWeber/vim-addon-mw-utils
" Bundle: garbas/vim-snipmate
" Bundle: honza/vim-snippets

" Language-specific plugins
" Bundle: aespinosa/Swift-vim
" Bundle: nosami/Omnisharp
" Bundle: hashivim/vim-terraform
" Bundle: vim-ruby/vim-ruby
" Bundle: LnL7/vim-nix
" Markup
" Bundle: tpope/vim-markdown

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

set foldmethod=syntax
set foldlevel=1
set modeline
set exrc

augroup markup
  au BufEnter snd.\d\+,.letter,.letter.\d\+,.followup,.article,.article.\d\+,pico.\d\+,mutt{ng,}-*-\w\+,mutt[[:alnum:]_-]\{6\},ae\d\+.txt,/tmp/SLRN[0-9A-Z.]\+,*.eml set bg=light
  au BufLeave snd.\d\+,.letter,.letter.\d\+,.followup,.article,.article.\d\+,pico.\d\+,mutt{ng,}-*-\w\+,mutt[[:alnum:]_-]\{6\},ae\d\+.txt,/tmp/SLRN[0-9A-Z.]\+,*.eml set bg=dark
  autocmd Filetype mail setlocal spell spelllang=en_us
  "autocmd BufEnter *.tex set bg=light
  "autocmd BufLeave *.tex set bg=dark
  autocmd FileType tex setlocal spell spelllang=en_us
  autocmd FileType tex set iskeyword=@,48-57,_,-,:,192-255
  "autocmd BufEnter *.md set bg=light
  "autocmd BufLeave *.md set bg=dark
  if has("gui_running")
    autocmd FileType markdown setlocal spell spelllang=en_us
  endif
augroup END

augroup programs
  autocmd FileType groovy setlocal ts=4  sts=4 sw=4
  autocmd FileType python setlocal ts:4 sts:4 sw:4
  autocmd FileType gitcommit setlocal ts:8 tw:72
  au BufNewFile,BufRead Jenkinsfile setf groovy
  autocmd FileType groovy setlocal ts=4  sts=4 sw=4
augroup END

if has("win32")
  set fileformat=unix
endif

set statusline=[%n]\ %<%.99t\ %h%w%m%r%{SL('CapsLockStatusline')}%y%{SL('fugitive#statusline')}%#ErrorMsg#%{SL('SyntasticStatuslineFlag')}%*%=%-14.(%l,%c%V%)\ %P

if has("eval")
function! SL(function)
  if exists('*'.a:function)
    return call(a:function,[])
  else
    return ''
  endif
endfunction
endif

let g:tagbar_autoclose = 1

set colorcolumn=80

autocmd Filetype ruby.chef let g:syntastic_ruby_rubocop_exec = 'cookstyle'
autocmd Filetype ruby.chef let g:syntastic_ruby_checkers = ['mri', 'rubocop']
autocmd BufNewFile,BufRead */cookbook-*/\(attributes\|definitions\|libraries\|providers\|recipes\|resources\)/*.rb set filetype=ruby.chef
autocmd BufNewFile,BufRead */cookbook-*/templates/*/*.erb set filetype=eruby.chef
autocmd BufNewFile,BufRead */cookbook-*/templates/*.erb set filetype=eruby.chef
autocmd BufNewFile,BufRead */cookbook-*/metadata.rb set filetype=ruby.chef

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
