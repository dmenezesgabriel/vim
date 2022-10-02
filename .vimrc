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

" 256 color support for terminal
set t_Co=256

" Use spaces instead of tabs
set expandtab
set softtabstop=2

" PLugins section

" Show hidden files on NERDTRee
let NERDTreeShowHidden=1

" Airline config
let g:airline_powerline_fonts=1

" Ale config
let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace'],
  \   'javascript': ['eslint', 'prettier'],
  \   'css' : ['prettier'],
  \   'markdown': ['prettier'],
}

let g:ale_fix_on_save=1
let g:ale_completion_enabled=1
set omnifunc=ale#completion#OmniFunc

" Plugins general
packloadall
silent! helptags ALL
