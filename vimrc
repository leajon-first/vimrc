"""""""""""""""""""""""""""""""""""""""""""""""""
"Leajon's vim configuration, being improved...
"most of this copy from :
"		amix.dk/vim/vimrc.html
"""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""
"=> General sets
"""""""""""""""""""""""""""""""""""""""""""""""""
"Set how many lines of history VIM has to remember
set history=300

"Enable filetype plugin
filetype plugin on
filetype indent on

"Set to auto read when a file is changed from the outside
set autoread

"With a map leader it's possible to bo extra key
"combinations like <leader>w saves the current file
let mapleader = ","

"Fast saving
map <silent><leader>w :w!<cr>

"Fast saving and quit
map <silent><leader>s :wq<cr>

"Fast quit without saving
map <silent><leader>q :q!<cr>

"Fast reloading of the .vimrc
map <silent> <leader>ss :source ~/.vimrc<cr>

"Fast editing of .vimrc
map <silent> <leader>ee :e ~/.vimrc<cr>

"Delete 19lines from head
map <silent> <leader>rr :1,19d<cr>

"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

"No sound on errors
set noerrorbells
set novisualbell
set t_vb=

"""""""""""""""""""""""""""""""""""""""""""""""""
"=> VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""
"Always show current position
set ruler

"Always show command
set showcmd

"Set the commandbar height
set cmdheight=2

"Always show the line numbers
set number

"Allow to change buffer without saving
set hid

"Turn on wild menu
set wildmenu

"Ignore case when searching
set ignorecase
set smartcase

"Highlight search things
set hlsearch

"Make search act like search in modern browsers
set incsearch

"Don't redraw while executing macros
"set nolazyredraw

"Set magic on, for regular expressions
set magic

"Show matching bracets when text indicator is over them
set showmatch

"Set backspace config
set backspace=eol,start,indent
set whichwrap +=<,>,h,l


"""""""""""""""""""""""""""""""""""""""""""""""""
"=> Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax highlight
syntax enable

"Set the color scheme
	colorscheme desert
	set background=dark


"""""""""""""""""""""""""""""""""""""""""""""""""
"=>Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""
"Auto expand Tab to Spaces
"set expandtab

"Set the length of auto indent
set shiftwidth=8

"The vaule how many Spaces equals a Tab
set tabstop=8
set smarttab

set lbr
set tw=500

"Auto indent
set ai
"Smart indent
set si
"Wrap lines
set wrap


"""""""""""""""""""""""""""""""""""""""""""""""""
"=> ctags sets
"""""""""""""""""""""""""""""""""""""""""""""""""
"Fast toggle the Tlist window
map <silent> <leader>tt :TlistToggle<cr>

"Only show the tags of current file
let Tlist_Show_One_File = 1

"If is the last taglist window, then exit
let Tlist_Exit_OnlyWindow = 1

"Show the taglist window in the right side of screen
let Tlist_Use_Right_Window = 1 


