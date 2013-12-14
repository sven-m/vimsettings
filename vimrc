" Load Pathogen
execute pathogen#infect()

" Allow backspacing over everything in insert mode
set bs=2

" Set 250 lines of command line history
set history=250

" Allow switching buffers without writing to disk
set hidden

" Always show cursor position
set ruler

" Set terminal title to filename
set title

set textwidth=79
set wrap

" Plugin: Solarized
syntax enable
set background=light
colorscheme solarized

" Plugin: Gundo
nnoremap <C-U> :GundoToggle<CR>
