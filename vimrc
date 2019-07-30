colo ron
syntax on

call plug#begin("~/.local/share/nvim/plugged")

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'scrooloose/nerdTree'
Plug 'aurieh/discord.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

" Nerdtree
nmap <C-n> :NERDTreeToggle<CR>

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#gocode_binary = "$GOPATH/bin/gocode"
let g:deoplete#sources#go#package_dot = 1
inoremap <expr><C-k> pumvisible()? "\<C-p>":"\<C-k>"
inoremap <expr><C-j> pumvisible()? "\<C-n>":"\<C-j>"

set nu
set relativenumber
set cursorline

set autoindent
set smartindent

if has("autocmd")
  filetype plugin indent on
endif

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

autocmd BufEnter *.md inoremap <CR> <CR><CR>

" File execution
autocmd BufEnter *.py map <F9> :!python3 main.py
autocmd BufEnter *.go map <F9> :!go run main.go

" Linters
autocmd BufEnter *.go noremap <F10> :w <Bar> !gofmt -w "%:p"<CR><CR>:edit!<CR>
autocmd BufEnter *.py noremap <F10> :w <Bar> !autopep8 -i "%:p"<CR><CR>:edit!<CR>

" Secondary Linters
autocmd BufEnter *.go noremap <F12> :w <Bar> !$GOPATH/bin/goreturns -w "%:p"<CR><CR>:edit!<CR>

map <F5> :edit! <Bar> redraw!<CR>

" Tabs
map <F7> :tabp<CR>
map <F8> :tabn<CR>
map to :tabe<Space>
map tx :tabc<CR> 

" Split view
map <Tab> <C-W>w
map <Bar> <C-W>v
map - <C-W>s

map T :terminal<CR>

" Weil Reol - No Title zu langweilig war
set title

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif