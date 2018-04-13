"
" ----------------- NERD TREE PLUGIN ----------------
"

if g:devtools_bundle
	" -- include plugin 
	Plugin 'scrooloose/nerdtree'						" Tab opens a file browser left nav window
else 
	" -- include plugin 
	Plug 'scrooloose/nerdtree'							" Tab opens a file browser left nav window
endif

" -- set plugin options
"nmap <C-i> :NERDTreeToggle<CR>						" remap nerdtree open window key
"set winfixwidth													" keep window fixed for nerdtree

