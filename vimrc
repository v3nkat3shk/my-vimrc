" Initialize pathogen
execute pathogen#infect()

"" Basic vim settings
set nocompatible
syntax on
set number
"set relativenumber
set lazyredraw
set backspace=indent,eol,start
set hidden
set noswapfile
set history=1000

"" Search Options
set hlsearch
set ignorecase
set incsearch
set smartcase

"" Indention Options
set autoindent
set expandtab
set smartindent
filetype plugin indent on

"" Text Rendering
set encoding=utf-8
set linebreak
set wrap
set scrolloff=5

"" UI of vim
set wildmenu
"set cursorline
set cc=80
set mouse=a
set title
set foldmethod=indent
set nofoldenable
set t_Co=256
set background=dark
set completeopt-=preview
set completeopt+=menu,longest,menuone,noinsert
colorscheme gruvbox-material
" Settings for lightline
"set laststatus=2
"set noshowmode

"" gvim config
set guioptions-=T
set guioptions-=L
set guioptions-=r
set noeb vb t_vb=   " disable error sound
set vb t_vb=        " disable widow flash on error
set guifont=Recursive\ 11

"hi TabLineFill guifg=DarkGrey guibg=Black

"" Extra theme and highlight settings
hi Comment cterm=italic
hi LineNr ctermbg=NONE guibg=NONE
"hi Normal guibg=NONE ctermbg=NONE
hi VertSplit guibg=NONE guifg=NONE ctermbg=NONE ctermfg=DarkGrey
"hi ColorColumn guibg=Black ctermbg=Black
"hi CursorLine ctermbg=black guibg=black


"" Omni function basic config
set omnifunc=syntaxcomplete#Complete
"set omnifunc=javacomplete#Complete


"" True color for vim with tmux
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
endif


"" ALE
let g:ale_completion_autoimport = 1
let g:ale_completion_delay = 50
let g:ale_completion_enabled = 0    " Autocompletion
let g:ale_linters = {
  \ 'python': ['pyls'],
  \ 'javascript': ['tsserver'],
  \ 'css': ['css-languageserver'],
  \}

let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'python': ['autopep8'],
  \ 'javascript': ['eslint', 'prettier'],
  \ 'go': ['gofmt'],
  \ 'css':['prettier'],
  \}
let g:ale_fix_on_save = 1         " Formats code when save
let g:ale_set_highlights = 0

" Sources
source ~/.vim/settings/keybinding.vim
