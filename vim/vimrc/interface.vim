"
" --- VIM USABILITY HELPERS ---
"

" Set font according to system
if has("mac") || has("macunix")
	set gfn=IBM\ Plex\ Mono:h14,Hack:h14,Source\ Code\ Pro:h15,Menlo:h15
elseif has("win16") || has("win32")
	set gfn=IBM\ Plex\ Mono:h14,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("gui_gtk2")
	set gfn=IBM\ Plex\ Mono:h14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("linux")
	set gfn=IBM\ Plex\ Mono:h14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("unix")
	set gfn=Monospace\ 11
endif

"set gfn=~/devtools/Monaco-Powerline.otf

set lazyredraw																		" performance enhancement for macros
set ruler																					" always show current pos.
set cmdheight=2																		" larger cmd line

set noerrorbells visualbell t_vb=									" remove error bells
autocmd GUIEnter * set visualbell t_vb=						" remove error bells visual cues

set mouse=ar																			" use mouse in vim (works on mac)

set wildmenu																			" use vim wildmenu
set wildignore=*.o,*.bak,*.jpg,*.gif,*.png				" make wildmenu ignore file types

set splitright																		" split windows default to the right

set number																				" show line numbers
set scrolloff=10																	" keeps the cursor 5 lines from the bottom of the page
set laststatus=2																	" always show status line
set showtabline=2

set showmatch																			" show matching brackets
set incsearch																			" better word searching

set ignorecase																		" case insensitive search
set smartcase																			" add case sensitive search when capitol letter is typed

set autoread																			" reload file if another source changes it

set encoding=utf-8																" use UTF-8 file encoding
"set fillchars+=stl:\ ,stlnc:\
set ffs=unix,mac,dos


" ------- COLOR AND FONTS ---------- "
if $COLORTERM == 'gnome-terminal'
	set t_Co=256																		" use 256 color mode in Gnome Terminal
endif

set background=dark																" default to dark background
colorscheme material  														" color scheme for editor


let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme = 'material'
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tab_type = 0

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



" ---------- FILES AND BACKUPS ------ "
set nobackup																			" turn backup off 
set nowb
set noswapfile

" -- useful status line
" set statusline=\ \ \ \ [FILE:\ %F%m%r%h%w]\ \ \ \ %{fugitive#statusline()}%=%([LINE:\ %l]\ \ \ \ [POS:\ %v]\ \ \ \ [PERCENT:\ %p%%]\ \ \ \ %)


