"""""""""""""""""""""""""""""""""
" My nvimrc
" @author Damien MARGUERITE
" @date 13/07/2016
" @brief Works with neovim. Use NeoBundle packet manager
""""""""""""""""""""""""""""""""" 

" TODO : 
" -simplify search and replace
" -multiple line cursor
" -configure easymotion

"""
" NeoBundle settings
set runtimepath^=~/.config/nvim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.config/nvim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" Esthetics imports
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'arakashic/chromatica.nvim'
NeoBundle 'jeffkreeftmeijer/vim-numbertoggle'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
" Features imports
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'neomake/neomake'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'easymotion/vim-easymotion'
" deoplete import
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'Shougo/neoinclude.vim'
NeoBundle 'zchee/deoplete-clang'
NeoBundle 'zchee/deoplete-jedi'
NeoBundle 'carlitux/deoplete-ternjs'
" snippet imports
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'honza/vim-snippets'

NeoBundleCheck

call neobundle#end()
"""

"""
" Esthetic setting
syntax on
filetype plugin indent on

set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark = "soft"

let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'

highlight NonText ctermfg=bg
highlight VertSplit ctermfg=gray
highlight Comment term=italic
set showbreak=↪ 
"set list "to set visible NonText character
set listchars=tab:▸\ ,eol:¬,trail:⋅

let g:indentLine_char='¦'
"""

"""
" User shortcut
let mapleader = ','
let g:mapleader = ','

map <esc> :noh<cr>
map <c-i> g:ctrlp_show_hidden<cr> "don't work

map <leader>w <Plug>(easymotion-w)

"edit nvimrc
map <leader>ev :e! ~/.config/nvim/init.vim<cr>
"edit gitconfig
map <leader>eg :e! ~/.gitconfig<cr>
"edit zshrc
map <leader>ez :e! ~/.zshrc<cr>

map <leader>n :NERDTreeToggle<CR>
map <leader>b :TagbarToggle<CR>
map <leader>l :call NumberToggle()<cr>
"""

"""
" deoplete and neosnippet configuration
let g:deoplete#enable_at_startup=1
set completeopt+=noinsert
let g:deoplete#sources#clang#libclang_path='/usr/lib64/libclang.so'
let g:deoplete#sources#clang#clang_header='/usr/include/clang'

let g:neosnippet#snippets_directory='~/.config/nvim/bundle/neosnippet-snippets'
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"""

"""
" User settings
set mouse=nv
"set shortmess+=I
set relativenumber
set smartindent
set cursorline
set showmatch
set history=100
set scrolloff=8
set sidescrolloff=5
"set gdefault
"set hidden
set showtabline=2
set updatetime=1000
set ignorecase
set smartcase
set noexpandtab "insert tabs rather than spaces
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
"""

