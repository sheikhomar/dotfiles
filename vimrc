set nocompatible                  " Must come first because it changes other options.

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.
colorscheme sheikhomar
let mapleader = ","

command! W :w
command! Q :q

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set cursorline                    " Highlight current line
set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set history=1000                  " Increase commands and search history
set undolevels=1000               " Increase undos
if v:version >= 730
  set undofile                    " Persistent undo file
  set undodir=~/.vim/.undo,~/tmp,/tmp
endif

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set tabstop=2                    " Width of the <tab>
set expandtab                    " Use spaces instead of tabs
set shiftwidth=2                 " Amount of whitespace to insert/remove when indenting in normal mode

set laststatus=2                  " Show the status line all the time

set statusline=%<%f\ %y%m%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P

" Automatically use Perl/Python regex when searching
nnoremap / /\v
vnoremap / /\v

" Disable arrow keys
nnoremap <Left> <nop>
nnoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
vnoremap <Left> <nop>
vnoremap <Right> <nop>
vnoremap <Up> <nop>
vnoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Map key to hide search highlighting
nnoremap <leader><space> :nohl<cr>

" Strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>
