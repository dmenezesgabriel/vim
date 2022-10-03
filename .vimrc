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

" Spell checking
set spell spelllang=pt_br,en_us

" Highlight trailing spaces
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" System clipboard
set clipboard=unnamed

" Indentation

" Python
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ | set softtabstop=4
    \ | set shiftwidth=4
    \ | set textwidth=79
    \ | set expandtab
    \ | set autoindent
    \ | set fileformat=unix

" Web
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ | set softtabstop=2
    \ | set shiftwidth=2

" Plugins section

" NERDTRee
let NERDTreeShowHidden=1

nnoremap <C-e> :NERDTreeToggle<CR>

let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" Airline config
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"Ale config
let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace'],
  \   'javascript': ['eslint', 'prettier'],
  \   'css' : ['prettier'],
  \   'markdown': ['prettier'],
  \}

let g:ale_fix_on_save=1
let g:ale_completion_enabled=1
set omnifunc=ale#completion#OmniFunc

" Conqueror of Completion
set nobackup
set nowritebackup
set updatetime=30
set signcolumn=yes
" Tabs for autocomplete
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
    let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

" TODO
" Set a language server for python autocomplete in coc
" Add Python black from:
" https://black.readthedocs.io/en/stable/integrations/editors.html

" Plugins general
packloadall
silent! helptags ALL
