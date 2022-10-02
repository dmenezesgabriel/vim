" Dark color schema
colorscheme industry

" Indentation size
set tabstop=2

" Identify file type and apply indentation
filetype plugin indent on

" Apply colors on editor
syntax on

" Use same tabstop size to indent visually
set shiftwidth=2

" Backspace usual behaviour
set backspace=2

" Show line numbers
set number

" Calculate relative line distance
set relativenumber

" Search incremental feedback
set incsearch

" Highlight search results
set hlsearch

" Dracula theme
packadd! dracula
syntax enable
colorscheme dracula

" Load all packs
packloadall

" 256 color support for terminal
set t_Co=256

" Use spaces instead of tabs
set expandtab
set softtabstop=2

" Show hidden files on NERDTRee
let NERDTreeShowHidden=1

