" execute pathogen#infect()

set hidden
set nowrap
set tabstop=4
"set backspace=indent,eol,start

set showmode
set autoindent
set copyindent
set number
set numberwidth=6
set shiftwidth=4
"set expandtab
set showmatch
set smartcase
set smarttab
set hlsearch

set noswapfile
set history=1000
set undolevels=1000
set nobackup
set ff=unix
set tags=./tag
"set expandtab
set cursorline

set guifont=Droid\ Sans\ Mono\ 12
set guioptions-=T
set history=1000

nnoremap ; :

let mapleader=","
let localleader="\\"
nnoremap <leader>b :ls<CR>:b<Space>
nnoremap <leader>m :marks<CR>
nnoremap <leader>ev :vsplit ~/.vim/vimrc<cr>
nnoremap <leader>sv :source ~/.vim/vimrc<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :qall<cr>
"inoremap <esc> <nop>

filetype on
filetype plugin on
set nocp

syntax on
colorscheme xoria256

"autocmd BufWritePre * %s/\s\+$//e
autocmd FileType c nnoremap <buffer> <localleader>cc I//<esc>


nnoremap <leader>n :bn<cr>
nnoremap <leader>p :bp<cr>
nnoremap <leader>d :bd<cr>
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

inoremap <C-u> <esc>vgUaw<esc>i

source ~/.vim/autoload/plug.vim

imap <C-u> <esc>gUaw<esc>i
function! SwitchSourceHeader()
    "update!
    if (expand ("%:e") == "cpp")
        find %:t:r.h
    else
        find %:t:r.cpp
    endif
endfunction
nmap ,s :w<cr>:call SwitchSourceHeader()<CR>
set path+=**

" CSCOPE
source ~/.vim/plugin/cscope_maps.vim
noremap <leader>cs :!find . -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" > cscope.files<CR>:!cscope -q -R -b -i ./cscope.files<cr><cr>

" ctags
set tags=tags
set tags+=$HOME/.vimcpp/cpp_src/tags
noremap <leader>tags :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q -I _GLIBCXX_NOEXCEPT .<CR><cr>
noremap <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

syntax match Tab /\t/
hi Tab gui=underline guifg=blue ctermbg=blue

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 0 " autocomplete after .
let OmniCpp_MayCompleteArrow = 0 " autocomplete after ->
let OmniCpp_MayCompleteScope = 0 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

" echo ">^.^<"
