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
autocmd BufEnter *.pas inoremap begin<CR> begin<CR><CR>end;<Up><Tab><End>

:map <F5> :redraw!<CR>
:map <F7> :tabp<CR>
:map <F8> :tabn<CR>
:map to :tabe<Space>
:map tx :tabc<CR>

:set title

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
