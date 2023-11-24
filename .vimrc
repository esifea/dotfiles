" UI & System
filetype plugin indent on " enable filetype detection
set nocp " ignore vi settings
set number " show line numbers
set ruler " show the cursor position
set showmatch " show matching parenthesis
set mouse=a " enable mouse support
set viminfo='100,<1000,s100,h
set encoding=utf-8
set termencoding=utf-8
set noerrorbells " disable beep
set title " change the terminal's title, reflecting the file currently being edited.

" Indentations
set autoindent " follow the indentation of previous lines
set expandtab " convert tabs to spaces
set tabstop=2 " use tab as spaces
set shiftwidth=2 " number of spaces for autoindent
set shiftround " use multiple shiftwidth when indening with '<' and '>'

" Search
set hls " highlight search terms
set incsearch " show partial matches
set ignorecase " Ignore uppercase

" Format
set textwidth=80 " wrap text at 80 characters
au Filetype * set fo-=c fo-=r fo-=o " do not copy comment symbol
au Filetype gitcommit setlocal textwidth=72 " wrap text at 72 characters for gitcommit

" Plugins
""" auto install plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'preservim/tagbar'
call plug#end()

""" tarbar settings
nmap <F8> :TagbarToggle<CR>
