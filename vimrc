" Load Pathogen
execute pathogen#infect()


" Set 250 lines of command line history
set history=250

" Allow switching buffers without writing to disk
set hidden

set undodir=~/.vimundo
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

set ruler "Always show cursor position

set title "Set terminal title to filename

set tabpagemax=100

" Text editing / formatting
syntax on
set textwidth=79
set wrap
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set backspace=indent,eol,start

imap <lt><lt><Tab> <lt>/<C-X><C-O> "Closing HTML/XML tags


set smartcase "Ignore case when typing lower case when searching
set hlsearch
set incsearch


set wildmenu
set visualbell

set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif

set so=14
set encoding=utf8

" Disable arrow keys during normal editing
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                             "
"                           Plugin related settings                           "
"                                                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugin: Solarized
syntax enable
set background=light
colorscheme solarized

" Plugin: Gundo
nnoremap <C-U> :GundoToggle<CR>
