call plug#begin('~/.vim/plugged')

"{{ The Basics }}
    Plug 'joshdick/onedark.vim'                        " Colors
    Plug 'itchyny/lightline.vim'                       " Lightline statusbar
"{{ File management }}
    Plug 'scrooloose/nerdtree'                         " Nerdtree
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtree
    Plug 'ryanoasis/vim-devicons'                      " Icons for Nerdtree
"{{ Syntax Highlighting and Colors }}
    Plug 'ap/vim-css-color'                            " Color previews for CSS
"{{ Junegunn Choi Plugins }}
    Plug 'junegunn/limelight.vim'                      " Hyperfocus on a range
    Plug 'junegunn/fzf.vim'
call plug#end()

" for transparent background
function! AdaptColorscheme()
   highlight clear CursorLine
   highlight Normal ctermbg=none
   highlight LineNr ctermbg=none
   highlight Folded ctermbg=none
   highlight NonText ctermbg=none
   highlight SpecialKey ctermbg=none
   highlight VertSplit ctermbg=none
   highlight SignColumn ctermbg=none
endfunction

autocmd ColorScheme * call AdaptColorscheme()


set cursorline

" colorscheme
syntax on

" brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

filetype plugin on
let g:instant_markdown_browser = "firefox --new-window"

" Make Vim more useful
set nocompatible
" Long lines as one line
set nowrap
" Ruler
set ruler
" Horizontal splits will automatically be below
set splitbelow
" Vertical splits will automatically be to the right
set splitright
" Indent
set smartindent
set autoindent
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard+=unnamedplus
" Enhance command-line completion
set wildmenu
" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Allow cursor keys in insert mode
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol

" 256 colors
set t_Co=256 
" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Make tabs as wide as two spaces
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3


" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map <Leader>c :w! \| !make <CR>
map <Leader>r <c-w>v <c-w>l :terminal ./run.sh <c-r>% <CR>a
map <Leader>t :!st&<CR><CR>
map <Leader>o :FZF<CR>
" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)
vnoremap <C-c> "+y

