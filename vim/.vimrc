" --- pathogen settings ---
execute pathogen#infect()

" --- general settings ---
filetype plugin indent on
let mapleader=","
set encoding=utf-8

filetype off
syntax on
set foldmethod=indent
set foldlevel=99
set nocompatible
set smarttab smartindent
set ignorecase smartcase
set incsearch
set nohlsearch
set tabstop=4
set ruler
set showbreak=>>
set wildmode=full
set wildmenu
"set mouse=a

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


if has("gui_running")
  if has("gui_gtk2")
    set guifont=PragmataPro\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

set t_Co=256
set termencoding=utf-8

"--- colorscheme settings ---
set background=dark
colorscheme solarized

"--- airline settings ---
set laststatus=2
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1

"--- nerd tree and their tabs ---
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 0

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
 au!
 au FileType tex let b:syntastic_mode = "passive"
augroup END

" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" --- tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)


" --- ctrl-p  settings ---
"  works without settings, just C-p

" ----- airblade/vim-gitgutter settings -----
" Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1

