set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/MatchTagAlways'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'tmhedberg/matchit'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'rking/ag.vim'
Plugin 'tomtom/tcomment_vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on         " Enable syntax highlighting
syntax enable
set background=dark
colorscheme basic-dark

"set columns=80      " Set terminal to character width
set smartcase
set background=dark " Set background lighting
set tabstop=4       " Use spaces to represent a tab
set shiftwidth=4     " Number of spaces for auto indent
set softtabstop=4    " Spaces for tab in insert mode
set expandtab       " Enters spaces instead of tab
set autoindent      " Cursor indents correctly on next line
set ruler           " Turns on row/column counter
set incsearch
set smartindent
set ignorecase
set nowrap
set tags=./tags;/
set splitright
set splitbelow
set hlsearch

" Highlight bad whitespace
autocmd BufRead *.py highlight BadWhitespace ctermbg=red guibg=red
autocmd BufRead *.py match BadWhitespace /^\t\+/
autocmd BufRead *.py match BadWhitespace /\s\+$/

set wildmenu
set wildmode=longest,list
set wildignorecase

set hidden

" Syntastic
let g:syntastic_php_checkers=['php', 'phpcs']
let g:syntastic_php_phpcs_args='--standard=PEAR -n'
let g:syntastic_python_python_exec = '/usr/bin/python3'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
set laststatus=2
set ttimeoutlen=50

command Bd b#\|bd#
nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <F6> :buffers<CR>:bd<Space>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <Space> i_<Esc>r

nnoremap <C-p><C-p> Oecho "<pre>";<Enter>print_r();<Enter>echo "</pre>";<Esc>

map <F10> :set invpaste<CR>

let g:phpfmt_standard='PEAR'

set synmaxcol=250

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_root_markers=['.ctrlp']
let g:ctrlp_by_filename=1
autocmd StdinReadPre * let s:std_in=1
"Will open nerdtree if vim is opened without args
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
