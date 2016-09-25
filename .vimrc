syntax on         " Enable syntax highlighting

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
set tags=./tags;/
set wrap
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
execute pathogen#infect()

let g:syntastic_python_python_exec = '/usr/bin/python3'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1

command Bd b#\|bd#
nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <F6> :buffers<CR>:bd<Space>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <Space> i_<Esc>r

nnoremap <C-p><C-p> aecho "<pre>";<Enter>print_r();<Enter>echo "</pre>";<Esc>
