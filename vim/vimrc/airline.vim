"
" ------------------ airline plugin -----------------------
"
if g:devtools_bundle
	" -- include plugin
	Plugin 'vim-airline/vim-airline'							" -- Airline - status line plugin
	Plugin 'vim-airline/vim-airline-themes'				" -- Airline - themes

else
	" -- include plugin
	Plug 'vim-airline/vim-airline'								" -- Airline - status line plugin
	Plug 'vim-airline/vim-airline-themes'					" -- Airline - themes
endif

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

"execute 'source ~/devtools/vim/autoload/airline/themes/material.vim'
"let g:airline_theme = 'material'
"let g:airline_theme = 'archery'
"let g:airline_theme = 'papercolor'
let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_type = 0

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

"let g:airline#extensions#tabline#left_sep = '⮀'
"let g:airline#extensions#tabline#left_alt_sep = '⮁'
"let g:airline#extensions#tabline#right_sep = '⮂'
"let g:airline#extensions#tabline#right_alt_sep = '⮃'
  
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
  
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'
let g:airline_symbols.maxlinenr = '㏑'

"let g:airline_section_warning = ''
"let g:airline_section_c = ''

