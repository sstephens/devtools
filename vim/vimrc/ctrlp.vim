"
" ------------------ ctrl-p plugin -----------------------
"
if g:devtools_bundle
	" -- include plugin
	Plugin 'ctrlpvim/ctrlp.vim'								" Ctrl-p vim plugin
else
	" -- include plugin
	Plug 'ctrlpvim/ctrlp.vim'								" Ctrl-p vim plugin
endif

" -- set plugin options
"let g:ctrlp_working_path_mode = ''				" Set ctrl-p working path
