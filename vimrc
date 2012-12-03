"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vim configuration, being improved...
"E-mail:leajon.first@gmail.com
"First version was copied from:amix.dk/vim/vimrc.html
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> General sets
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
map <silent> <leader>ll :source ~/.vimrc<cr>
"Beaware, alpha 'll' not digit '11'

"Fast editing of .vimrc
map <silent> <leader>ee :e ~/.vimrc<cr>

"Fast comment
map <silent> <leader>cc :s/^/\/\//<cr>:nohl<cr>

"Fast uncomment
map <silent> <leader>oo :s/^\/\///<cr>

"Fast delete 19lines from head , for c.vim only
map <silent> <leader>rr :1,19d<cr>

"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

"No sound on errors
set noerrorbells
set novisualbell
set t_vb=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax highlight
syntax enable

"Set the color scheme
colorscheme desert
set background=dark


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=>Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Auto expand Tab to Spaces
"set expandtab

"Set the length of auto indent
set shiftwidth=3

"The vaule how many Spaces equals a Tab
set tabstop=3
set smarttab

"Let Tab auto expand to Space
set expandtab

set lbr
set tw=500

"Auto indent
set ai
"Smart indent
set si
"Wrap lines
set wrap


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> ctags sets
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Fast toggle the Tlist window
map <silent> <leader>tl :TlistToggle<cr>

"Only show the tags of current file
let Tlist_Show_One_File = 1

"If is the last taglist window, then exit
let Tlist_Exit_OnlyWindow = 1

"Show the taglist window in the right side of screen
let Tlist_Use_Right_Window = 1 

"If not found tags in current directory,
"then go to parent directory and find it.
set tags=tags;/





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
"  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  cs add /root/SVN/LBX/trunk/main/cscope.out
  set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Fast toggle the Tlist window
map <silent> <leader>nt :NERDTreeToggle<cr>
