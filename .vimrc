unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim
unmap Q
set scrolloff=0

set bg=dark
set autoindent
map <ScrollWheelDown> <C-e>
map <ScrollWheelUp> <C-y>
set hlsearch

let mapleader=" "
map <leader>ü <C-[>
inoremap üü <C-[>
map <leader>+ <C-]>
map <leader>b :buffers!<cr>
map <leader>n :bn<cr>
map <leader>p :bp<cr>
map <leader>l :set number!<cr>:set rnu!<cr>
map <leader># :buffers!<cr>:buffer
map <leader>^ <C-^>

inoremap ök <esc>
inoremap öj <C-O>:update<cr>
nnoremap öj :update<cr>

set fileformats=unix,dos,mac
" set filetype=oberon
set tabstop=2
