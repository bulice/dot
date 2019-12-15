call plug#begin('~/.vim/plugged')  "Installing vim plugins
    Plug 'vim-airline/vim-airline' "Setting up my status bar
    Plug 'vim-airline/vim-airline-themes'
    Plug 'airblade/vim-gitgutter' "Shows changes if you're working with git
    Plug 'junegunn/goyo.vim'  "Simple writing theme that looks nice with markdown
    Plug 'tpope/vim-markdown'

    "Color-schemes, some additional color schemes just live in .vim/colors
    Plug 'ap/vim-css-color' "Displays a preview of colors with CSS (like VS Code)
    Plug 'morhetz/gruvbox' "My favorite theme
call plug#end() 

set encoding=UTF-8
filetype plugin indent on  "Enabling Plugin & Indent
syntax on  "Turning Syntax on
filetype plugin on
filetype indent on
set autoread
set wildmenu "Tab completion everywhere, it's awesome
set number relativenumber  "Setting line numbers
set nu rnu
set spell  
set backspace=indent,eol,start  "Making sure backspace works
set noruler  "Setting up rulers & spacing, tabs
set confirm
set shiftwidth=4
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set expandtab  
set hls is  "Making sure search highlights words as we type them
set ic
set laststatus=2 "Setting the size for the command area, and airline status bar
set cmdheight=1

au BufRead,BufNewFile *.fountain set filetype=fountain "Enabling fountain syntax

"Key re-maps
map <C-n> :Lex!<CR>
map <C-b> :vertical resize 30<CR>
map <C-g> :Goyo<CR>
map <C-u> :source ~/.vimrc<CR>
nnoremap <Up>    :resize +2<CR> 
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

"Color schemes need to be below everything else that effects color apparently.
"If no things will load out of order and not work properly. 
colorscheme gruvbox  "Setting up Gruvbox and airline, (colors)
set background=dark 
let g:airline_theme='gruvbox'
