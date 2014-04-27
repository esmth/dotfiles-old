set vb t_vb=
set fillchars+=vert:│
set list
set listchars=tab:\│\ ,trail:-
set laststatus=2
set splitright
set splitbelow
set autochdir

" CTRL-V and SHIFT-Insert are Paste
inoremap <C-V>   	<ESC>"+gp
inoremap <S-Insert>  	<ESC>"+gp
nnoremap <C-V>   	<ESC>"+gp
nnoremap <S-Insert>  	<ESC>"+gp
vnoremap <C-V>   	<ESC>"+gp
vnoremap <S-Insert>  	<ESC>"+gp

" enable clipboard
set clipboard=unnamedplus

" enable utf8
set encoding=utf8
set termencoding=utf-8

" searching
set nohlsearch
set incsearch
set ignorecase
set smartcase

" persistent undo history
set undofile " Save undo's after file closes
set undodir=~/.vim/undo,/tmp " where to save undo histories
set undolevels=1000 " How many undos
set undoreload=1000 " number of lines to save for undo

" cursorline
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" source .vimrc
autocmd vimenter * source $MYVIMRC

" return to last edit position when opening files
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \ exe "normal! g`\"" |
            \ endif

" disable auto comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set formatoptions-=cro

" turn on syntax highlighting
syntax on

set t_Co=16
