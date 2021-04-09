call plug#begin()
 Plug 'itchyny/lightline.vim'
 Plug 'jacoborus/tender.vim'
 Plug 'whatyouhide/vim-gotham'
call plug#end()

"Other color schemes:
"Wombat http://www.vim.org/scripts/script.php?script_id=2465
"Dracula : https://draculatheme.com/vim/
"
"VIM PLUG ISSUE
"remove: filetype plugin indent on
":help 'paste'
""""set paste
"NOTE: Don't put set paste in your vimrc!!!
"sdf
"sadf

set cursorcolumn
set number
set t_Co=256
colorscheme gotham256
let g:lightline = { 'colorscheme': 'gotham256' }
syntax enable
"set runtimepath^=~/.vim/bundle/lightline.vim
set laststatus=2
set tabstop=4
set shiftwidth=4
set noshowmode
let g:lightline = {
  \   'colorscheme': 'gotham256',
  \   'active': {
  \     'left':[ [ 'mode', 'paste' ],
  \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
  \     ]
  \   },
	\   'component': {
	\     'lineinfo': ' %3l:%-2v',
	\   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \   }
  \ }
let g:lightline.separator = { 'left': '', 'right': '' }
"let g:lightline.separator = { 'left': '>', 'right': '<' }
let g:lightline.subseparator = { 'left': '', 'right': '' }
