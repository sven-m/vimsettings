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
set number " Always show line numbers

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
set cindent
set backspace=indent,eol,start

imap <lt><lt><Tab> <lt>/<C-X><C-O> "Closing HTML/XML tags

filetype plugin on

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


""""""""""""""""""""""""""""""""""""""""""""""""
" Latex-Suite settings
""""""""""""""""""""""""""""""""""""""""""""""""

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

let g:LatexBox_viewer = 'skim'
let g:LatexBox_latexmk_options = '-pvc'
