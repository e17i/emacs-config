unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim
unmap Q

set bg=dark
set autoindent
set mouse=a
map <ScrollWheelDown> <C-e>
map <ScrollWheelUp> <C-y>

set scrolloff=0
let mapleader=" "
map <leader>ü <C-]>
map <leader>b :buffers!<cr>
map <leader>n :bn<cr>
map <leader>p :bp<cr>
map <leader>l :set number!<cr>:set rnu<cr>
map <leader># :buffers!<cr>:buffer
map <leader>	 <C-^>

inoremap ök <esc>
inoremap öj <C-O>:update<cr>
nnoremap öj :update<cr>

set ffs=mac,unix,dos
set tabstop=4

" set fileformats=mac
" set filetype=oberon
" set tabstop=4
