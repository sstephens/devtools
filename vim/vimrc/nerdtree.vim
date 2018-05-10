"
" ----------------- NERD TREE PLUGIN ----------------
"

if g:devtools_bundle
	" -- include plugin 
	Plugin 'scrooloose/nerdtree'						" Tab opens a file browser left nav window
	Plugin 'scrooloose/nerdcommenter'				" powerfull commenter
else 
	" -- include plugin 
	Plug 'scrooloose/nerdtree'							" Tab opens a file browser left nav window
	Plug 'scrooloose/nerdcommenter'					" powerfull commenter
endif

" -- set plugin options
nmap <C-n> :NERDTreeToggle<CR>						" remap nerdtree open window key
"set winfixwidth													" keep window fixed for nerdtree

let g:NERDSpaceDelims = 1
let g:NERDCustomDelimiters = { 're': { 'left': '/*','right': '*/' } }
