colo ron
syntax on

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

map <F5> :redraw!<CR>
map <F7> :tabp<CR>
map <F8> :tabn<CR>
map to :tabe<Space>
map tx :tabc<CR> 

map <Tab> <C-W>w
map <Bar> <C-W>v
map - <C-W>s

set title

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
