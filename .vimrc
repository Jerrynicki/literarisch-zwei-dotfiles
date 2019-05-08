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

:set title

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
