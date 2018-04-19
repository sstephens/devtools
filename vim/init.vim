
execute 'set rtp^='.$HOME.'/devtools/vim'

" -- MAP LEADER -- "
let mapleader = "\\"
let g:mapleader = "\\"

set encoding=utf-8																" use UTF-8 file encoding

if !has('nvim')
	if has('pythonx')
		set pyxversion=3
	endif
endif

" ---------- GLOBAl DECLARATIONS --------- "
let g:devtools_path = get(g:, 'devtools_path', "~/devtools")				" set devtools vim directory

function! g:Importrc(name)																					" import rc file method
	execute "source ".g:devtools_path."/vim/vimrc/".a:name
endfunction

call Importrc("ocaml.vim")																					" ocaml setup

" ----------- IMPORT PLUGINS ------------ "
if g:devtools_vimplug
	call Importrc("vimplug.vim")																			" include bundle packages
endif

if g:devtools_bundle
	call Importrc("bundle.vim")																				" include bundle packages
endif

execute 'set rtp+='.$HOME.'/devtools/vim/after'

if has("mac")																												"mac terminal settings
	if g:devtools_iterm2
		if !has('nvim')
			set term=xterm-256color
		endif
	else
		set term=builtin_ansi
	endif
endif

if !exists("g:syntax_on")																						" Turn on syntax highlighting
	syntax enable
endif

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

if !has('nvim')
	if g:devtools_iterm2
		set ttymouse=xterm2
	endif
endif
	
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
set nohlsearch

set ignorecase																		" case insensitive search
set smartcase																			" add case sensitive search when capitol letter is typed

set autoread																			" reload file if another source changes it

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

execute "source ~/devtools/vim/autoload/airline/themes/material.vim"
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


" ---------- DART Settings ---------"
"let dart_html_in_string=v:true
"let dart_corelib_highlight=v:true
"let dart_style_guide=2
"let dart_format_on_save=1


" ---------- FILES AND BACKUPS ------ "
set nobackup																			" turn backup off 
set nowb
set noswapfile

" -- useful status line
" set statusline=\ \ \ \ [FILE:\ %F%m%r%h%w]\ \ \ \ %{fugitive#statusline()}%=%([LINE:\ %l]\ \ \ \ [POS:\ %v]\ \ \ \ [PERCENT:\ %p%%]\ \ \ \ %)


"
" -------- CODE STYLE SETTINGS ---------
"
"setlocal indentkeys+=0														" ??
"set formatoptions=rq															" format options ??
"
set backspace=2																		" backspace for spaces acts like backspace for tabs
set shiftround																		" makes tabs line up when tabs and spaces mix
set tabstop=2																			" tab width 4 spaces
set softtabstop=2																	" softtabstop ?
set shiftwidth=2																	" shiftwidth ?
set wrap																					" wrap code lines so no side scroll is needed
set autoindent																		" auto indent code
"set smartindent																	" auto indent code based on filetypes


"
" ------------ JavaScript section ---------------
"
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> console.log();<esc>hi

au FileType javascript inoremap <buffer> $r return 
au FileType javascript inoremap <buffer> $f //--- PH<esc>FP2xi

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS									

autocmd BufRead,BufNewFile .flowconfig set filetype=config
autocmd BufRead,BufNewFile .editorconfig set filetype=config

" Allow JSX in normal JS files
let g:jsx_ext_required = 0 

"
" ---------------------- CSS Section --------------------
"
autocmd FileType css set iskeyword+=-
autocmd FileType css set omnifunc=csscomplete#CompleteCSS		

"
" ---------------------- SASS Section --------------------
"
autocmd FileType sass set iskeyword+=-
autocmd FileType sass set omnifunc=csscomplete#CompleteCSS		
autocmd BufRead,BufNewFile *.scss set filetype=sass

"
" ------------------- Python section ---------------------
"
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return
au FileType python inoremap <buffer> $i import
au FileType python inoremap <buffer> $p print
au FileType python inoremap <buffer> $f #--- <esc>a
au FileType python map <buffer> <leader>1 /class
au FileType python map <buffer> <leader>2 /def
au FileType python map <buffer> <leader>C ?class
au FileType python map <buffer> <leader>D ?def
au FileType python set cindent
au FileType python set cinkeys-=0#
au FileType python set indentkeys-=0#

"
" --- key mappings for quicker actions ---
"

" -- faster tab opening
map <leader>t :tabnew 

" -- faster edit and reload of vimrc
"map <leader>e :e! ~/devtools/vim/init.vim<cr>
"autocmd! bufwritepost ~/devtools/vim/init.vim source ~/devtools/vim/init.vim

" -- comment block and uncomment with //
map <C-K> I//<Esc><Esc>
map <C-L> x<Esc><Esc>

" -- Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm


" -- short hand code 
iab clog console.log(


" Bash like keys for the command line
"cnoremap <C-A>		<Home>
"cnoremap <C-E>		<End>
"cnoremap <C-K>		<C-U>
"cnoremap <C-P>		<Up>
"cnoremap <C-N>		<Down>


"set rtp+=/usr/local/opt/fzf																					" enable fuzzy finder
