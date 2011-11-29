" pathogen bundles
call pathogen#runtime_append_all_bundles()

set nocompatible                  " Must come first because it changes other options.

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.
colorscheme sheikhomar
let mapleader = ","

command! W :w
command! Q :q

set noerrorbells visualbell t_vb= " Disable beeps
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb= " Disable background flash
endif

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
set undofile                      " Persistent undo file
set undodir=~/.vim/tmp/undo,~/tmp,/tmp

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=~/.vim/tmp/swap//,.  " Keep swap files in one location

set tabstop=2                    " Width of the <tab>
set expandtab                    " Use spaces instead of tabs
set shiftwidth=2                 " Amount of whitespace to insert/remove when indenting in normal mode

set laststatus=2                  " Show the status line all the time

set statusline=%<%f\ %y%m%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P

" Automatically use Perl/Python regex when searching
nnoremap / /\v
vnoremap / /\v

" Disable arrow keys
"nnoremap <Left> <nop>
"nnoremap <Right> <nop>
"nnoremap <Up> <nop>
"nnoremap <Down> <nop>
"vnoremap <Left> <nop>
"vnoremap <Right> <nop>
"vnoremap <Up> <nop>
"vnoremap <Down> <nop>
"inoremap <Left> <nop>
"inoremap <Right> <nop>
"inoremap <Up> <nop>
"inoremap <Down> <nop>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nmap <C-S-tab> :tabprevious<cr>
nmap <C-tab> :tabnext<cr>
map <C-S-tab> :tabprevious<cr>
map <C-tab> :tabnext<cr>
imap <C-S-tab> <Esc>:tabprevious<cr>i
imap <C-tab> <Esc>:tabnext<cr>i
nmap <C-t> :tabnew<cr>
imap <C-t> <Esc>:tabnew<cr>
nmap <C-w> :close<cr>
imap <C-w> <Esc>:close<cr>

noremap <silent> <C-S> :update<cr>
vnoremap <silent> <C-S> <C-C>:update<cr>
inoremap <silent> <C-S> <C-O>:update<cr>

" Map key to hide search highlighting
nnoremap <leader><space> :nohl<cr>

" Strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>


if has("gui_running")
  set guioptions-=T                 " Remove toolbar
end
